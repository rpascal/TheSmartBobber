/*
 * File:   main.c
 * Author: zpyle
 *
 * Created on January 26, 2019, 12:50 PM
 */

//Defining headers that are to be used as well as the config file
#include <xc.h>
#include "config.h"
#define _XTAL_FREQ     4000000

void main(void)
{
   TRISB0 = 0;
   while(1)
   {
    RB0 = 1;
    __delay_ms(1000);
    RB0 = 0;
    __delay_ms(1000);
   }
   return;
}    //End of Main