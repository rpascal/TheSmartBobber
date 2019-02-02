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
  // Set The PWM Frequency of 8kHz
  PR2 = 124; 
  // Set The PS For Timer2 (1:1 Ratio)
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  // Start CCP1 PWM
  TMR2ON = 1; //TIMER2 Begins
  //--[ End of Configuration ]--
  
  //--[ Set Duty Cycle to 50% ]--
  PWM1_Set_Duty(250);//Set duty cycle to 50% 
}

//Declaring global variable
unsigned int previous_value = 0;

//Writing the man function
void main()
{
   //Declaring Variables to see if we dip below a certain threshold
   //Using unsigned because they will only hold positive numbers
   unsigned int new_value;
   
   //Declaring the B output pins for the purpose of testing the LEDs
   TRISB = 0x00;
   
   //Calling the function to Initialize PWM
   PWM_Initialize();
   
   //Calling the function to Initialize ADC
   ADC_Init();

   //Writing the main loop
   while(1)
   {
    new_value =  Read_ADC(0);
    unsigned int compare = (new_value - previous_value);
    previous_value = new_value;
    
    //Deciding if the there is large enough value change
    //To see if the Plunger has been moved
    if(compare>9)
    {
        PORTB=1;
    }
    else
    {
        PORTB = 0;
        
    }
     
   }    //End of while(1)
}   //End of Main