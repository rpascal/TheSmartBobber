#include "defines.h"
#include "UART.h"
#include <string.h>
#include <stdio.h>
#include "congif.h"





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
    return NO_INPUT; //NO_INPUT = -1
}

void UpdateUARTInput() {
    if (OERR) // check for Error 
    {
        CREN = 0; //If error -> Reset 
        CREN = 1; //If error -> Reset 
        UART_INPUT_STATE = NO_INPUT;
        return;
    }

    if (RCIF == 1) {
        int phoneInput = RCREG;
        if (phoneInput == '1'){
            UART_INPUT_STATE = LED_ON;
        }else if(phoneInput == '0'){
            UART_INPUT_STATE = LED_OFF;
        }else if(phoneInput == '2'){
            UART_INPUT_STATE = TEMPERATURE;
        }
        return;
    }
    UART_INPUT_STATE = NO_INPUT;
    return;
    // return NO_INPUT; //NO_INPUT = -1
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