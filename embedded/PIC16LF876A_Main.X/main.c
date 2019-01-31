/*
 * File:   main.c
 * Author: NCS
 *
 * Created on January 24, 2019, 11:13 AM
 */

/*
 * Including files & FREQ
 */
#include "defines.h"
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include "congif.h"
#include "ds18b20.h"
#include "UART.h"

void updateConnectionState() {

    switch (connectionState) {
        case DISCONNECTED:
            if (RB0 != 0) {
                UART_send_string("UART Module Initialized and active"); // Introductory Text
                UART_send_char(10); //ASCII value 10 is used for carriage return (to print in new line)
                UART_send_string("Searching for fish to destroy");
                UART_send_char(10); //ASCII value 10 is used for carriage return (to print in new line)
                //return CONNECTED;
                connectionState = CONNECTED;
            }
            break;
        case CONNECTED:
            if (RB0 == 0) {
                //return DISCONNECTED;
                connectionState = DISCONNECTED;
            }
            break;
    }
    //return DISCONNECTED;
}

void connectedLoop();

void main(void) {
    connectionState = DISCONNECTED;



    __delay_ms(1000);

    unsigned int t, t2;
    int i = 0;
    char str[30];
    int phoneInput;

    int k = 0;

    TRISB0 = 1; //Initialize RB0 as input
    TRISB3 = 0; //Initialize RB3 as output
    TRISB4 = 0;
    RB4 = 1;
    Initialize_UART(); //Initialize UART module

    ow_reset();
    write_byte(write_scratchpad);
    write_byte(0);
    write_byte(0);
    write_byte(resolution_12bit); // 12bit resolution


    while (1) {
        updateConnectionState();

        switch (connectionState) {
            case DISCONNECTED:
                k = 0;
                RB3 = 1; //Turn on LED
                __delay_ms(100);
                RB3 = 0; //Turn on LED
                __delay_ms(100);
                // break;
                break;
            case CONNECTED:
                connectedLoop();
                break;
        }
    }
    return;
}

void connectedLoop() {
    UpdateUARTInput();
    switch (UART_INPUT_STATE) {
        case TEMPERATURE:
            if (ow_reset() == 1) {
                UART_send_string("Temp. NOT connected");
                UART_send_char(10);
            }

            if (ow_reset() == 0) {
                ow_reset();
                write_byte(skip_rom);
                write_byte(convert_temp);

                while (read_byte() == 0xff);
                __delay_ms(500);

                ow_reset();

                write_byte(skip_rom);
                write_byte(read_scratchpad);

                unsigned short TempL, TempH;

                TempL = read_byte();
                TempH = read_byte();

                int i = 0;

                i = ((unsigned int) TempH << 8) + (unsigned int) TempL; //put both value in one variable
                i = i / 16; //calculations used from the table provided in the data sheet of ds18b20

                UART_send_string("Temp. IS connected");
                UART_send_char(10);

                char str[30];

                sprintf(str, "Water Temp: %d", i);
                UART_send_string(str);
                i = 0; //I think I need this?
            }
            break;
        case LED_ON:
            RB3 = 1; //Turn on LED
            //UART_send_temp("1");
            UART_send_string("RED LED -> ON"); //Send notification to the computer
            UART_send_char(10);
            break;
        case LED_OFF:
            RB3 = 0; //Turn off LED
            //UART_send_temp("0");
            UART_send_string("RED LED -> OFF"); //Send notification to the computer
            UART_send_char(10);
            break;
        default: break;
    }
}
