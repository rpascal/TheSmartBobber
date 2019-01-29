/*
 * File:   main.c
 * Author: zpyle
 *
 * Created on January 26, 2019, 12:50 PM
 */

//Defining headers that are to be used as well as the config file
#include <xc.h>
#include "config.h"
//Defining Frequency of the oscillator that is being used (4Mhz)
//Used for the __delay_ms functions
#define _XTAL_FREQ 4000000

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

//Writing the man function
void main()
{
   //Declaring Variables to see if we dip below a certain threshold
   //Using unsigned because they will only hold positive numbers
   //Declaring Counter for for-loop as well as blank array
   unsigned int SampleCount;
   unsigned int ADCSamples[20];
   
   //Declaring the B output pins for the purpose of testing the LEDs
   //TRISB = 0x00;
   
   //Calling the function to Initialize ADC
   ADC_Init();

   //Writing the main loop
   while(1)
   {
     //Writing a for loop to store the ADC samples into an array to compare them
     for(SampleCount = 0; SampleCount < 20; SampleCount++)
     {
         ADCSamples[SampleCount] = Read_ADC(0);
     }
     
     
   }    //End of while(1)
}   //End of Main