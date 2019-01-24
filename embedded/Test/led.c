#include <xc.h>
#include "config.h"
#define _XTAL_FREQ 4000000

void main(void) {
   
   // Configure The Pins To Be Output Pins
   TRISB0 = 0;
   TRISB1 = 0;
   TRISB2 = 0;
   // The Main Infinite Loop OF The System
   while(1)
   {
    // Flash LED1
    RB0 = 1;
    __delay_ms(50);
    RB0 = 0;
    __delay_ms(50);
    // Flash LED2
    RB1 = 1;
    __delay_ms(50);
    RB1 = 0;
    __delay_ms(50);
    // Flash LED3
    RB2 = 1;
    __delay_ms(50);
    RB2 = 0;
    __delay_ms(50);
    }
    return;
}