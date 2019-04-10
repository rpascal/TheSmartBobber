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

void main(void) {
    //Variables to send ADC average to user
    int i, sum1, avg1;

    //***Initialization Functions for PIC16LF876A***//
    Initialize_UART(); //Initialize UART module [RC6 & RC7]
    PWM_Initialize(); //Initialize PWM Signal [RC2]
    ds18b20_Initialize(); //Initialize DS18b20 and 1-Wire Protocol [RC3]
    ADC_Initialize(); //Initialize ADC [RA0]
    read_temp(); //Read temp to get rid of junk data
    Counter_Initialize(); //Initialize TIMER1
    //______End of Function Initialization______//


    
    __delay_ms(1000); //Delay for to stop error bits in UART

    connectionState = DISCONNECTED; //Initialize connection state
    char str[40]; //String length for all sprintf functions
    int phoneInput; //Data Sent from SmartPhone
    int currentBiteLogicValue = 0;
   
    //***Initialization of GPIO pins***//
    TRISC5 = 0; //Connection LED
    TRISA1 = 0;//Connection LED
    TRISC4 = 0; //Bite LED
    TRISA2 = 0;//Bite LED
    
    TRISB0 = 1; //Initialize RB0 as input for ADC
    TRISB3 = 0; //Initialize RB3 as output
    TRISB5 = 0; //Solenoid Drive [RB5 = 1 = Solenoid ON] ; [RB5 = 0 = Solenoid OFF]
    
               
    RB5 = 0;
    RA1 = 0;
    RC4 = 0;
    RA2 = 0;
    RC5 = 0;
    //______End of GPIO Initialization______//
    
    while (1) {
        updateConnectionState();
        monitorSolenoidSignal();
        isSolenoidOnMonitor();

        switch (connectionState) {
            case DISCONNECTED:
               // RC4 = 0; //IDK why I need this but I do
                RC5 = 1; //Turn on LED
                RA1 = 1;
                __delay_ms(100);
                RC5 = 0; //Turn on LED
                RA1 = 0;
                __delay_ms(100);
                //RC4 = 0; //IDK why I need this but I do
                // break;

                break;
            case CONNECTED:
                broadcastTempValue();

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
                        int temp = read_temp();
                        sendTemp(temp);
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

                    if (phoneInput == '4') //If the user sends "4"
                    {
                        toggleAutoHook();
                    }
                }
        }
    }
    return;
}
