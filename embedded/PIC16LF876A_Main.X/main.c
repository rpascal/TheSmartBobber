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

void main(void) {
    connectionState = DISCONNECTED;



    __delay_ms(1000);
    unsigned short TempL, TempH;
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


    /*This is for Negative temperature*/


    //		if((TempH & 0x80)!=0)
    //        {    // If condition will execute as TempH = 1111 1111 & 1000 0000 = 1000 0000. 
    //			t=TempH;// Store tempH value in t = 1111 1111  .
    //	        t<<=8;//after bitwise left shift 8 times value in t will be 1111 1111 0000 0000.  
    //	        t=t|TempL;// t = 1111 1111 0000 0000 | 0101 1110 [ result t = 1111 1111 0101 1110] 
    //	        t=t-1;//t = t-1 in this case t = 1111 1111 0101 1101.
    //	        t=~t;// t = 0000 0000 1010 0010.
    //	        t>>=4;// t = 0000 0000 0000 1010.
    //			t=t*100;// t = 10 * 100 = 1000.
    //			t2=TempL; //Store tempL value = 0101 1110.
    //			t2=t2-1;// t2= 0101 1101
    //	        t2=~t2;//t2 = 1010 0010
    //	        t2=t2&0x0f;// t2 = 1010 0010 | 0000 1111 = 0000 0010
    //			t2=t2 * 6.25; // 0000 00010 = 2 x 6.25 = 12.50
    //			i=((unsigned int)t ) + (unsigned int)t2; //put both value in one variable 1000 + 12.5 = 1012.5
    //		
    //
    //		}
    /*This is for positive Temperature*/

    //    int DISCONNECTED = 0;
    //    int CONNECTED = 1;



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
                            ow_reset();
                            write_byte(skip_rom);
                            write_byte(convert_temp);

                            while (read_byte() == 0xff)
                                ;
                            __delay_ms(500);

                            ow_reset();

                            write_byte(skip_rom);
                            write_byte(read_scratchpad);

                            TempL = read_byte();
                            TempH = read_byte();

                            i = ((unsigned int) TempH << 8) + (unsigned int) TempL; //put both value in one variable
                            i = i / 16; //calculations used from the table provided in the data sheet of ds18b20

                            UART_send_string("Temp. IS connected");
                            UART_send_char(10);
                            sprintf(str, "Water Temp: %d", i);
                            UART_send_string(str);
                            i = 0; //I think I need this?
                        }
                    }
                }


                break;
        }
    }
    return;
}



//    while (1)
//    {
//        //connectionState = RB0 == 0 ? DISCONNECTED : CONNECTED;
//
//        if (PORTBbits.RB0 != 1)
//        {
//        
//            k = 0;
//            RB3 = 1; //Turn on LED
//            __delay_ms(100);
//            RB3 = 0; //Turn on LED
//            __delay_ms(100);
//           continue;
//        }
//        
//        else if (PORTBbits.RB0)
//        {
////            if (k == 0)
////            {
////            UART_send_string("UART Module Initialized and active"); // Introductory Text
////            UART_send_char(10);                                     //ASCII value 10 is used for carriage return (to print in new line)
////            UART_send_string("Searching for fish to destroy");
////            UART_send_char(10); //ASCII value 10 is used for carriage return (to print in new line)
////            k = 1;
////            continue;
////            }
//
//            get_value = UART_get_char();
//           
//
//            if (get_value == '1') //If the user sends "1"
//            {
//                RB3 = 1; //Turn on LED
//                //UART_send_temp("1");
//                UART_send_string("RED LED -> ON"); //Send notification to the computer
//                UART_send_char(10);
//                continue;
//            }
//
//            else if (get_value == '0') //If the user sends "0"
//            {
//                RB3 = 0; //Turn off LED
//                //UART_send_temp("0");
//                UART_send_string("RED LED -> OFF"); //Send notification to the computer
//                UART_send_char(10);
//                continue;
//            }
//
//            else if (get_value == '2') //If the user sends "2"
//            {
//                if (ow_reset() == 1)
//                {
//                    UART_send_string("Temp. NOT connected");
//                    UART_send_char(10);
//                    continue;
//                }
//
//                else if (ow_reset() == 0)
//                {
//                    ow_reset();
//                    write_byte(skip_rom);
//                    write_byte(convert_temp);
//
//                    while (read_byte() == 0xff)
//                        ;
//                    __delay_ms(500);
//
//                    ow_reset();
//
//                    write_byte(skip_rom);
//                    write_byte(read_scratchpad);
//
//                    TempL = read_byte();
//                    TempH = read_byte();
//
//                    i = ((unsigned int)TempH << 8) + (unsigned int)TempL; //put both value in one variable
//                    i = i / 16;                                           //calculations used from the table provided in the data sheet of ds18b20
//
//                    UART_send_string("Temp. IS connected");
//                    UART_send_char(10);
//                    sprintf(str, "Water Temp: %d", i);
//                    UART_send_string(str);
//                    i = 0; //I think I need this?
//                    continue;
//                }
//                
//                else
//                {
//                    //break;
//                }
//            } 
//            
//           else
//           {
//                  //break;
//           }   
//        }
//        
//        else
//        {
//            
//            //break;
//        }
//    }
//    return;
//}
