#include "defines.h"
#include "counter.h"
#include <stdint.h>

double dummyClock = 0;

uint8_t C = 0; // Global Counter Variable



void Counter_Initialize(void){
  // -- [[ Configure Timer1 To Operate In Timer Mode]] --
  // Clear The Timer1 Register. To start counting from 0
  TMR1 = 0;
  // Choose the local clock source (timer mode)
  TMR1CS = 0;
  // Choose the desired prescaler ratio (1:1)
  T1CKPS0 = 0;
  T1CKPS1 = 0;
  // Switch ON Timer1 Module!
  TMR1ON = 1;
 
  // -- [[ Interrupts Configurations ]] --
  TMR1IE = 1; // Timer1 Interrupt Enable Bit
  TMR1IF = 0; // Clear The Interrupt Flag Bit
  PEIE = 1;   // Peripherals Interrupts Enable Bit
  GIE = 1;    // Global Interrupts Enable Bit
}

void turnOffCounter(void){
 // -- [[ Turn OFF Timer1 In Timer Mode ]] --
 //We will want to turn off the counter so that we don't 
 //continuously run the ISR
 // Switch ON Timer1 Module!
  TMR1ON = 0;
}

void interrupt(void)
//void interrupt   tc_int  (void)
{
   // Check The Flag Bit
   if (TMR1IF)
   {
      C++;
      if(C==3)//3 * .065536 = .2seconds
      {
        // Clear The Global Counter
        C = 0;
      }
      TMR1IF = 0; // Clear The Flag Bit
   }
}

double getClock(){
    return ++dummyClock;
}

double timeEllapsed(double past){
    return getClock()-past;
}
