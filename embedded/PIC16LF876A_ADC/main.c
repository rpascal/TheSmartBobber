/*
 * File:   main.c
 * Author: zpyle
 *
 * Created on January 27, 2019, 7:50 PM
 */


#include <xc.h>
#include "config.h"
#define _XTAL_FREQ 4000000

void ADC_Init()
{
   ADCON0 = 0x41;
   ADCON1 = 0xC0;
}

unsigned int ADC_Read(unsigned char channel)
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

void main()
{
   //Declaring Variables
    unsigned int a;
   unsigned int threshold = 61;
   //Output pins for LEDs
   TRISB = 0x00;
   TRISC = 0x00;
   //Intialize ADC
   ADC_Init();

   //Main Loop
   while(1)
   {
     a = ADC_Read(0);
     if (a<threshold)
     {
         PORTB = 0xff;
     }
     else
     {
         PORTB = 0x00;
     }
     __delay_ms(100);
   }
}
