#include "defines.h"
#include "ADC.h"


void ADC_Initialize(void)
{
  ADCON0 = 0x41; //ADC ON and Fosc/16 is selected
  ADCON1 = 0xC0; // Internal reference voltage is selected
}

unsigned int ADC_Read(void)
{
  ADCON0 &= 0x11000101; //Clearing the Channel Selection Bits
  ADCON0 |= 0<<3; //Setting the required Bits
  __delay_ms(2); //Acquisition time to charge hold capacitor
  GO_nDONE = 1; //Initializes A/D Conversion
  while(GO_nDONE); //Wait for A/D Conversion to complete
  return ((ADRESH<<8)+ADRESL); //Returns Result
  //return(ADC1BUF0)
}
