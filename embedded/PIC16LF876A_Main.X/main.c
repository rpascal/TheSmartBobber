/*
 * File:   main.c
 * Author: NCS
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
    //return DISCONNECTED;
}

void main(void) {
    __delay_ms(1000);//Delay for UART communication 
    connectionState = DISCONNECTED; //Initialize connection state
    char str[30]; //String length for all sprintf functions 
    int phoneInput; //Data Sent from SmartPhone

    TRISB0 = 1; //Initialize RB0 as input
    TRISB3 = 0; //Initialize RB3 as output
    
    Initialize_UART(); //Initialize UART module
    PWM_Initialize();  //Initialize PWM Signal [RC2]
    ds18b20_Initialize(); //Initialize DS18b20 and 1-Wire Protocol

    while (1) {
        updateConnectionState();

        switch (connectionState) {
            case DISCONNECTED:
                RB3 = 1; //Turn on LED
                __delay_ms(100);
                RB3 = 0; //Turn on LED
                __delay_ms(100);
                // break;
                break;
            case CONNECTED:


                phoneInput = UART_get_char();

                if (phoneInput != * NO_INPUT) {
                    if (phoneInput == '1') //If the user sends "1"
                    {
                        RB3 = 1; //Turn on LED
                        //UART_send_temp("1");
                        UART_send_string("RED LED -> ON"); //Send notification to the computer
                        UART_send_char(10);
                    }

                    if (phoneInput == '0') //If the user sends "0"
                    {
                        RB3 = 0; //Turn off LED
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
                            void read_temp();
                        }
                    }
                }


                break;
        }
    }
    return;
}
