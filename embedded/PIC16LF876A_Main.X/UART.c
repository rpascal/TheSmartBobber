#include "defines.h"
#include "UART.h"
#include <string.h>
#include <stdio.h>
#include "congif.h"





//***Initializing UART module for PIC16LF876A***//

void Initialize_UART(void) {
    //****Setting I/O pins for UART****//
    TRISC6 = 0; // TX Pin set as output
    TRISC7 = 1; // RX Pin set as input

    /**Initialize SPBRG register for required 
    baud rate and set BRGH for fast baud_rate**/
    SPBRG = ((_XTAL_FREQ / 16) / Baud_rate) - 1;
    BRGH = 1; // for high baud_rate

    //****Enable Asynchronous serial port*******//
    SYNC = 0; // Asynchronous
    SPEN = 1; // Enable serial port pins

    //**Lets prepare for transmission & reception**//
    TXEN = 1; // enable transmission
    CREN = 1; // enable reception

    //**Select 8-bit mode**//  
    TX9 = 0; // 8-bit reception selected
    RX9 = 0; // 8-bit reception mode selected 
}



//**Function to send one byte of date to UART**//
void UART_send_char(char bt) {
    while (!TXIF); // hold the program till TX buffer is free
    TXREG = bt; //Load the transmitter buffer with the received value
}



//**Function to get one byte of date from UART**//
char UART_get_char(void) {
    if (OERR) // check for Error 
    {
        CREN = 0; //If error -> Reset 
        CREN = 1; //If error -> Reset 
    }

    if (RCIF == 1) {
        return RCREG;
    }
    return * NO_INPUT; //NO_INPUT = -1
}


//**Functions to convert string to byte**//
void UART_send_string(char* st_pt) {
    while (*st_pt) //if there is a char
        UART_send_char(*st_pt++); //process it as a byte data

    UART_send_char(END_DELIMETER);
}

void UART_send_temp(char* st_pt) {
    UART_send_char(TEMP_DELIMETER);
    UART_send_string(st_pt);
}

//**Function to send bite data**//

void UART_send_bite(char* st_pt) {
    UART_send_char(BITE_DELIMETER);
    UART_send_string(st_pt);
}


void UART_send_solenoid_change(char* st_pt){
    UART_send_char(SOLENOID_DELIMETER);
    UART_send_string(st_pt);
}

//___________End of UART SHIT______________//