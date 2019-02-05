/*
 * File:   main.c
 * Author: zpyle
 *
 * Created on January 26, 2019, 12:50 PM
 */

//Defining headers that are to be used as well as the config file
#include <xc.h>
#include "config.h"
#include "defines.h"
#include <string.h>
#include <stdio.h>

//Defining Frequency of the oscillator that is being used (4Mhz)
//Used for the __delay_ms functions
#define _XTAL_FREQ 4000000

//ADC CODE
//Initializing the ADC.  See data sheets pages 127-134 (hard copy)
//See data sheets pages 129-136 (digital copy)
void ADC_Init()
{
   //Turning on the ADCON0 (Binary = 0100 0001)
   //First Bit turns on ADC, Bit 7/6 makes the Clock Conversion = Fosc/16
   ADCON0 = 0x41;
   //Turning on the ADCON1 (Binary = 1100 0000)
   //7th Bit is A/D Result Format Select bit (Right Justified)
   //6th Bit is dependent on ADCON0 Clock Conversion
   ADCON1 = 0xC0;
}

//Declaring the Read_ADC Function in order to Read the ADC
unsigned int Read_ADC(unsigned char channel)
{
   if(channel > 7)
     return 0; 

   ADCON0 &= 0xC5;
   ADCON0 |= channel<<3;
   __delay_ms(2);
   GO_nDONE = 1;
   while(GO_nDONE);
   return ((ADRESH<<8)+ADRESL);
}

//PWM Code
//--[ Duty Cycle % Input Function ]--
void PWM1_Set_Duty(unsigned int DC)
{
  // Check The DC Value To Make Sure it's Within 10-Bit Range
  if(DC<1024)
  {
    CCP1Y = DC & 1;
    CCP1X = DC & 2;
    CCPR1L = DC >> 2;
  }
}

//Function for PWM Initialize
void PWM_Initialize(void)
{
   //--[ Configure The CCP Module For PWM Mode ]--
  //CPP in PWM Mode
  CCP1M3 = 1;
  CCP1M2 = 1;
  // The CCP1 Output Pin (PWM) [RC2]
  TRISC2 = 0; 
  // Set The PWM Frequency of 1kHz
  PR2 = 250; 
  // Set The PS For Timer2 (1:1f Ratio)
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  // Start CCP1 PWM
  TMR2ON = 1; //TIMER2 Begins
  //--[ End of Configuration ]--
  
  //--[ Set Duty Cycle to 50% ]--
  PWM1_Set_Duty(500);//Set duty cycle to 50% 
}

//UART Code RS232
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
//_____________End of function________________//



//**Function to convert string to byte**//

void UART_send_string(char* st_pt) {
    while (*st_pt) //if there is a char
        UART_send_char(*st_pt++); //process it as a byte data

    UART_send_char(END_DELIMETER);
}

//Declaring global variable
unsigned int previous_value = 0;
unsigned int new_value=0;


//Writing the man function
void main()
{
   char str[30];
   //Declaring Variables to see if we dip below a certain threshold
   //Using unsigned because they will only hold positive numbers
   
   //Declaring the B output pins for the purpose of testing the LEDs
   //TRISB0 = 0x00;
   
   //Intilize UART
   Initialize_UART();
   
   //Calling the function to Initialize PWM
   PWM_Initialize();
   
   //Calling the function to Initialize ADC
   ADC_Init();

   //Writing the main loop
   sprintf(str, "ADC Value: %d", Read_ADC(0));
   UART_send_string(str);
   UART_send_char(10);
//   while(1)
//   {
//    new_value =  Read_ADC(0);
//    sprintf(str, "ADC Value: %d", new_value);
//    UART_send_string(str);
//    UART_send_char(10);
//    int compare = (new_value - previous_value);
//    //UART_send_string(compare);
//    //Deciding if the there is large enough value change
//    //To see if the Plunger has been moved
//    if(compare>2)
//    {
//        RB0 = 1;
//    }
//    else
//    {
//        RB0 = 0;
//        
//    }
//    previous_value = new_value;
//    //UART_send_string(previous_value);
//     
//     
//   }    //End of while(1)
//   return;
}   //End of Main