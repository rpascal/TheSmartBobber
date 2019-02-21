#include "defines.h"
#include "ADC.h"
#include "UART.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

float MAX_SOLENOID_ON = 1;
float MAX_SOLENOID_DELAY_BETWEEN_ON = 2;
int count = 0;
int iterationsPerAverage = 10;
int mean = 0;
int oldMean = 0;
int threshold = 10;
time_t startSolenoidOnClock;
bool isSolenoidOn = false;
bool isSolenoidOnMessageTrigger = false;
bool isSolenoidOffMessageTrigger = false;

void ADC_Initialize(void) {
    ADCON0 = 0x41; //ADC ON and Fosc/16 is selected
    ADCON1 = 0xC0; // Internal reference voltage is selected
}

unsigned int ADC_Read(void) {
    ADCON0 &= 0x11000101; //Clearing the Channel Selection Bits
    ADCON0 |= 0 << 3; //Setting the required Bits
    __delay_ms(2); //Acquisition time to charge hold capacitor
    GO_nDONE = 1; //Initializes A/D Conversion
    while (GO_nDONE)
        ; //Wait for A/D Conversion to complete
    return ((ADRESH << 8) + ADRESL); //Returns Result
}

void monitorSolenoidSignal(void) {
    if (isSolenoidOn) {
        return; // Solenoid is currently on so need to monitor its values
    }

    if (count >= iterationsPerAverage) //sets count to 0 when count = iterationsPerAverage
    {
        count = 0;
    }

    int newValue = ADC_Read();

    count++;

    int differential = (newValue - mean) / count;
    int newMean = mean + differential;
    mean = newMean;

    if (count % iterationsPerAverage == 0) //Runs if remainder is 0
    {
        //       if (oldMean > 0 && abs(oldMean - mean) >= threshold) // Some condition that says we want to turn on solenoid
        //       {
        //           turnOnSolenoid();
        //      }
        if (mean >= 100) // Some condition that says we want to turn on solenoid
        {
            turnOnSolenoid();
        }
        oldMean = mean;
        mean = 0;
    }
}

void turnOnSolenoid(void) {
    double time_ellapsed = 0;
    
    if(startSolenoidOnClock){
        clock_t current = clock();
        time_ellapsed = ((double)(current - startSolenoidOnClock)) / CLOCKS_PER_SEC; // time ellapsed in seconds
    }

    if(!startSolenoidOnClock || time_ellapsed > MAX_SOLENOID_DELAY_BETWEEN_ON){
        isSolenoidOn = true;
        RC4 = 1; // Turn on solenoid
        isSolenoidOnMessageTrigger = true;
    }
    startSolenoidOnClock = clock();
}

void isSolenoidOnMonitor(void) {
    if (!isSolenoidOn) {
        return; // We didnt trigger solenoid to be on so leave
    }

    time_t end = clock();
    double time_taken = ((double) (end - startSolenoidOnClock)) / CLOCKS_PER_SEC; // time ellapsed in seconds

    if (time_taken > MAX_SOLENOID_ON) // Solenoid has been on for at least MAX_SOLENOID_ON
    {
        RC4 = 0; // turn off solenoid
        isSolenoidOn = false;
        isSolenoidOffMessageTrigger = true;
    }
}

void sendADCToPhone(void) {
    if (count % iterationsPerAverage == 0) {
        char str[30];
        sprintf(str, "%d", oldMean);
        UART_send_bite(str); // contiously send the mean to phone for graph
    }

    if (isSolenoidOnMessageTrigger) {
        UART_send_string("FISH ATTACK");
        UART_send_char(10);
        UART_send_solenoid_change("1"); // tell phone we are turning on the solenoid
        isSolenoidOnMessageTrigger = false; // We sent the messages we wanted to send so back to false
    }
    if (isSolenoidOffMessageTrigger) {
        UART_send_string("FISH ATTACK STOP");
        UART_send_solenoid_change("0"); // tell phone we are turning off the solenoid

        isSolenoidOffMessageTrigger = false;
    }
}
