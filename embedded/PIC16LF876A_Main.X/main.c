/*
 * File:   main.c
 * Author: NCS
 *
 * Created on January 24, 2019, 11:13 AM
 */

/*
 * Including files & FREQ
 */

#define _XTAL_FREQ 4000000
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include "congif.h"
#include "ds18b20.h"

/*
 * Ds18b20 Commands
 */

#define skip_rom 0xCC
#define	convert_temp 0x44 
#define	write_scratchpad 0x4E
#define	resolution_12bit 0x7F
#define read_scratchpad 0xBE

/*
 * Delay functions for RC3
 */


#define DQ PORTCbits.RC3 
#define DQ_TRIS TRISCbits.TRISC3

void delay_us(int useconds) {
    int s;
    for (s = 0; s < useconds; s++);
}

void delay_ms(int j) {
    unsigned char i;
    for (; j; j--)
        for (i = 122; i <= 0; i--);
}

//Each communication through DS18b20 begin with a reset pulse. This is use for resetting Ds18b20 sensor.

//returns 0 if 1-wire is present
//returns 1 if 1-wire is NOT present

unsigned char ow_reset(void) {
    DQ_TRIS = 0; // Tris = 0 (output)
    DQ = 0; // set pin# to low (0)
    __delay_us(480); // 1 wire require time delay
    DQ_TRIS = 1; // Tris = 1 (input)
    __delay_us(60); // 1 wire require time delay

    if (DQ == 0) // if there is a presence pluse
    {
        __delay_us(480);
        return 0; // return 0 ( 1-wire is present)
    } else {
        __delay_us(480);
        return 1; // return 1 ( 1-wire is NOT present)
    }

} // 0=presence, 1 = no part

// This is use for reading bit from ds18b20

unsigned char read_bit(void) {
    unsigned char i;
    DQ_TRIS = 1;
    DQ = 0; // pull DQ low to start timeslot
    DQ_TRIS = 1;
    DQ = 1; // then return high
    for (i = 0; i < 3; i++); // delay 15us from start of timeslot
    return (DQ); // return value of DQ line
}

unsigned char read_byte(void) {
    char i, result = 0;
    DQ_TRIS = 1; // TRIS is input(1)
    for (i = 0; i < 8; i++) {
        DQ_TRIS = 0; // TRIS is output(0)
        DQ = 0; // genarate low pluse for 2us
        __delay_us(2);
        DQ_TRIS = 1; // TRIS is input(1) release the bus
        if (DQ != 0)
            result |= 1 << i;
        __delay_us(60); // wait for recovery time
    }
    return result;
}

//writes a bit to the one-wire bus, passed in bitval

void write_bit(char bitval) {
    DQ_TRIS = 0;
    DQ = 0; // pull DQ low to start timeslot
    if (bitval == 1) DQ = 1; // return DQ high if write 1
    __delay_us(5); // hold value for remainder of timeslot
    DQ_TRIS = 1;
    DQ = 1;
}// Delay provides 16us per loop, plus 24us. Therefore delay(5) = 104us

void write_byte(char val) {
    char i;
    DQ_TRIS = 1; // set pin# to input (1)

    for (i = 0; i < 8; i++) {
        if ((val & (1 << i)) != 0) {
            // write 1
            DQ_TRIS = 0; // set pin# to output (0)
            DQ = 0; // set pin# to low (0)
            __delay_us(1); // 1 wire require time delay
            DQ_TRIS = 1; // set pin# to input (release the bus)
            __delay_us(60); // 1 wire require time delay
        } else {
            //write 0
            DQ_TRIS = 0; // set pin# to output (0)
            DQ = 0; // set pin# to low (0)
            __delay_us(60); // 1 wire require time delay
            DQ_TRIS = 1; // set pin# to input (release the bus)
        }
    }

}

///////// UART SHIT////////////////////////////////////////////////////////
#define Baud_rate 9600

const char END_DELIMETER = '&';
const char TEMP_DELIMETER = '#';
const char BITE_DELIMETER = '@';

//***Initializing UART module for PIC16F877A***//

void Initialize_UART(void) {
    //****Setting I/O pins for UART****//
    TRISC6 = 0; // TX Pin set as output
    TRISC7 = 1; // RX Pin set as input
    //________I/O pins set __________//

    /**Initialize SPBRG register for required 
    baud rate and set BRGH for fast baud_rate**/
    SPBRG = ((_XTAL_FREQ / 16) / Baud_rate) - 1;
    BRGH = 1; // for high baud_rate
    //_________End of baud_rate setting_________//

    //****Enable Asynchronous serial port*******//
    SYNC = 0; // Asynchronous
    SPEN = 1; // Enable serial port pins
    //_____Asynchronous serial port enabled_______//

    //**Lets prepare for transmission & reception**//
    TXEN = 1; // enable transmission
    CREN = 1; // enable reception
    //__UART module up and ready for transmission and reception__//

    //**Select 8-bit mode**//  
    TX9 = 0; // 8-bit reception selected
    RX9 = 0; // 8-bit reception mode selected
    //__8-bit mode selected__//     
}
//________UART module Initialized__________//



//**Function to send one byte of date to UART**//

void UART_send_char(char bt) {
    while (!TXIF); // hold the program till TX buffer is free
    TXREG = bt; //Load the transmitter buffer with the received value
}
//_____________End of function________________//



//**Function to get one byte of date from UART**//

char UART_get_char() {
    if (OERR) // check for Error 
    {
        CREN = 0; //If error -> Reset 
        CREN = 1; //If error -> Reset 
    }

    if (RCIF == 1) {
        return RCREG;
    }
    return -1;
}
//_____________End of function________________//



//**Function to convert string to byte**//

void UART_send_string(char* st_pt) {
    while (*st_pt) //if there is a char
        UART_send_char(*st_pt++); //process it as a byte data

    UART_send_char(END_DELIMETER);
}
//**Function to send temp data**//

void UART_send_temp(char* st_pt) {
    UART_send_char(TEMP_DELIMETER);
    UART_send_string(st_pt);
}

//**Function to send bite data**//

void UART_send_bite(char* st_pt) {
    UART_send_char(BITE_DELIMETER);
    UART_send_string(st_pt);
}


//___________End of UART SHIT______________//

/*
 * Program flow related functions
 */

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
    int get_value;

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
                

                get_value = UART_get_char();

                if (get_value == '1') //If the user sends "1"
                {
                    RB3 = 1; //Turn on LED
                    //UART_send_temp("1");
                    UART_send_string("RED LED -> ON"); //Send notification to the computer
                    UART_send_char(10);
                }

                if (get_value == '0') //If the user sends "0"
                {
                    RB3 = 0; //Turn off LED
                    //UART_send_temp("0");
                    UART_send_string("RED LED -> OFF"); //Send notification to the computer
                    UART_send_char(10);
                }

                if (get_value == '2') //If the user sends "2"
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
