/*
 * File:   main.c
 * Author: NCS & RDP
 *
 * Created on January 24, 2019, 11:13 AM
 */

/*
 * Including Files & Libraries  
 */
#include "defines.h"
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include "congif.h"
#include "ds18b20.h"
#include "UART.h"
#include "PWM.h"
#include "ADC.h"
#include "counter.h"
#include<math.h> 

enum connectionStates {
    DISCONNECTED,
    CONNECTED
};
enum connectionStates connectionState;

void updateConnectionState() {

    switch (connectionState) {
        case DISCONNECTED:
            if (RB0 != 0) {
                UART_send_string("UART Module Initialized and active"); // Introductory Text
                UART_send_char(10); //ASCII value 10 is used for carriage return (to print in new line)
                UART_send_string("Searching for fish to destroy");
                UART_send_char(10); //ASCII value 10 is used for carriage return (to print in new line)
                connectionState = CONNECTED;
            }
            break;
        case CONNECTED:
            if (RB0 == 0) {
                connectionState = DISCONNECTED;
            }
            break;
    }
}

void reverse(char *str, int len) {
    int i = 0, j = len - 1, temp;
    while (i < j) {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        i++;
        j--;
    }
}

int intToStr(int x, char str[], int d) {
    int i = 0;
    while (x) {
        str[i++] = (x % 10) + '0';
        x = x / 10;
    }

    // If number of digits required is more, then 
    // add 0s at the beginning 
    while (i < d)
        str[i++] = '0';

    reverse(str, i);
    str[i] = '\0';
    return i;
}

// Converts a floating point number to string. 

void ftoa(float n, char *res, int afterpoint) {
    // Extract integer part 
    int ipart = (int) n;

    // Extract floating part 
    float fpart = n - (float) ipart;

    // convert integer part to string 
    int i = intToStr(ipart, res, 0);

    // check for display option after point 
    if (afterpoint != 0) {
        res[i] = '.'; // add dot 

        // Get the value of fraction part upto given no. 
        // of points after dot. The third parameter is needed 
        // to handle cases like 233.007 
        fpart = fpart * pow(10, afterpoint);

        intToStr((int) fpart, res + i + 1, afterpoint);
    }
}

void main(void) {
    int i, sum1, avg1;

    Initialize_UART(); //Initialize UART module [RC6 & RC7]
    PWM_Initialize(); //Initialize PWM Signal [RC2]
    ds18b20_Initialize(); //Initialize DS18b20 and 1-Wire Protocol [RC3]
    ADC_Initialize(); //Initialize ADC [RA0]
    Counter_Initialize(); //Initialize TIMER1

    __delay_ms(1000); //Delay for UART communication
    connectionState = DISCONNECTED; //Initialize connection state
    char str[40]; //String length for all sprintf functions
    int phoneInput; //Data Sent from SmartPhone
    int currentBiteLogicValue = 0;
    //float volt = 0;
    //int ADC;
    TRISC5 = 0; //Connection LED
    TRISC4 = 0; //Bite LED
    TRISB0 = 1; //Initialize RB0 as input
    TRISB3 = 0; //Initialize RB3 as output
    //TRISC4 = 0; //BITE OUTPUT
    TRISB5 = 0; //Solenoid Drive 
    RB5 = 0;
    RC4 = 0;
    RC5 = 0;

    while (1) {
        updateConnectionState();
        monitorSolenoidSignal();
        isSolenoidOnMonitor();

        switch (connectionState) {
            case DISCONNECTED:
                RC4 = 0; //IDK why I need this but I do
                RC5 = 1; //Turn on LED
                __delay_ms(100);
                RC5 = 0; //Turn on LED
                __delay_ms(100);
                RC4 = 0; //IDK why I need this but I do
                // break;

                break;
            case CONNECTED:

                // Send Current Average to phone
                sendADCToPhone();

                phoneInput = UART_get_char();

                if (phoneInput != *NO_INPUT) {
                    if (phoneInput == '1') //If the user sends "1"
                    {
                        RC5 = 1; //Turn on LED
                        //UART_send_temp("1");
                        UART_send_string("RED LED -> ON"); //Send notification to the computer
                        UART_send_char(10);
                    }

                    if (phoneInput == '0') //If the user sends "0"
                    {
                        RC5 = 0; //Turn off LED
                        //UART_send_temp("0");
                        UART_send_string("RED LED -> OFF"); //Send notification to the computer
                        UART_send_char(10);
                    }

                    if (phoneInput == '2') //If the user sends "2"
                    {
                        if (ow_reset() == 1) {
                            UART_send_string("Temp. NOT connected");
                            UART_send_char(10);
                        }

                        if (ow_reset() == 0) {
                            UART_send_string("Temp. IS connected");
                            UART_send_char(10);
                            sprintf(str, "Water Temp: %d", read_temp());
                            UART_send_string(str);
                            UART_send_char(10);
                        }
                    }

                    if (phoneInput == '3') //If the user sends "3"
                    {
                        for (i = 0; i < 40; i++) {
                            sum1 = sum1 + ADC_Read();
                        }
                        avg1 = sum1 / 40;
                        //volt = ((3.3 * avg)/1023); //it works doe
                        sprintf(str, "ADC Voltage Value: %u", avg1);
                        UART_send_string(str);
                        UART_send_char(10);
                        sum1 = 0;
                    }

                    if (phoneInput == '4') //If the user sends "3"
                    {
                        printCounter();
                    }
                }
        }
    }
    return;
}
