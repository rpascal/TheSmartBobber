#include "defines.h"
#include "UART.h"
#include <string.h>
#include <stdio.h>
#include "congif.h"

//***Initializing UART module for PIC16LF876A***//
void Initialize_UART(void) {
    //Setting I/O pins for UART
    TRISC6 = 0; // TX Pin set as output
    TRISC7 = 1; // RX Pin set as input
    
    //Initialize SPBRG register for required baud rate
    SPBRG = ((_XTAL_FREQ / 16) / Baud_rate) - 1;
    
    //Set BRGH for fast baud_rate
    BRGH = 1; 

    //Enable Asynchronous serial port
    SYNC = 0; // Asynchronous mode
    SPEN = 1; // Serial port pins enabled

    //Transmission & Reception
    TXEN = 1; // Transmission enabled
    CREN = 1; // Reception enabled

    //8-bit UART Communication  
    TX9 = 0; 
    RX9 = 0; 
}

//**Sending one byte of data**//
void UART_send_char(char bt) {
    while (!TXIF); // Puase program while TXIF is HIGH
    TXREG = bt; //Load the transmitter buffer with variable bt
}

//**Recieving one byte of data**//
char UART_get_char(void) {
    if (OERR) // Checing data for error 
    {
        CREN = 0;  
        CREN = 1;  
    }

    if (RCIF == 1) {
        return RCREG;
    }
    return * NO_INPUT; //NO_INPUT = -1
}

//**Converting string to byte**//
void UART_send_string(char* st_pt) {
    while (*st_pt) 
    UART_send_char(*st_pt++); 
    UART_send_char(END_DELIMETER);
}

//*Sending TEMP data*//
void UART_send_temp(char* st_pt) {
    UART_send_char(TEMP_DELIMETER);
    UART_send_string(st_pt);
}

//*Sending bite data*//
void UART_send_bite(char* st_pt) {
    UART_send_char(BITE_DELIMETER);
    UART_send_string(st_pt);
}

//*Sending solenoid position data*/
void UART_send_solenoid_change(char* st_pt){
    UART_send_char(SOLENOID_DELIMETER);
    UART_send_string(st_pt);
}