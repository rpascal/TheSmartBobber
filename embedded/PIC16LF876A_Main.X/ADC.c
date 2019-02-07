#include "defines.h"
#include "ADC.h"
#include "UART.h"
#include <stdio.h>
#include <stdlib.h>

void ADC_Initialize(void)
{
    ADCON0 = 0x41; //ADC ON and Fosc/16 is selected
    ADCON1 = 0xC0; // Internal reference voltage is selected
}

/*
 * Averaging of the DC signal 
 */

//#define MAX_ADC_VALUES  20
//#define ADC_CHANNEL  0
//
//unsigned short adcValues [MAX_ADC_VALUES];   // array of ADC readings
//#if MAX_ADC_VALUES < 256
//unsigned char adcValueIndex = 0;       // current index into array
//#else
//unsigned short adcValueIndex = 0;
//#endif
//unsigned char fullArray = 0;       // set to 1 after we have filled array
//
//// call this on a periodic basis
//unsigned int ADC_Read()
//{
//#if MAX_ADC_VALUES < 256
//unsigned char i;
//#else
//unsigned short i;
//#endif
//unsigned int adcReading;         // latest reading from ADC
//#if MAX_ADC_VALUES < 66
//unsigned int adcAverage;         // 10-bit ADC; sum of 65 readings just fit in an unsigned  short
//#else
//unsigned long adcAverage;
//#endif
//
//    // if your input is noisy, then add a loop here to take several readings in a row and average
//    ADCON0bits.CHS = ADC_CHANNEL;  // channel set here
//    ADCON0bits.GO = 1;             // start ADC conversion
//    while (ADCON0bits.nDONE);      // wait till ADC conversion is over
//
//    adcReading = (ADRESH<<8) + ADRESL ;   //merge the MSB and LSB of the result
//    adcValues[adcValueIndex++] = adcReading;    // overwrite oldest reading with newest one
//
//    adcAverage = 0;
//    for (i=0; i < MAX_ADC_VALUES; i++)
//    {
//        adcAverage += adcValues[i];
//    }
//    if (fullArray)
//    {
//        adcAverage /= MAX_ADC_VALUES;          // get average of MAX_ADC_VALUES readings
//    }
//    else
//    {
//        adcAverage /= adcValueIndex;          // use this if array not filled yet
//    }
//
//    if (adcValueIndex >= MAX_ADC_VALUES)
//    {
//        adcValueIndex= 0;          // if at end of array, loop around
//        fullArray = 1;             // we have now filled array, can divide by MAX_ADC_VALUES from now on
//    }
//
//    return (unsigned int)adcAverage;    // cast only needed if adcAverage is unsigned long
//}

unsigned int ADC_Read(void)
{
    ADCON0 &= 0x11000101; //Clearing the Channel Selection Bits
    ADCON0 |= 0 << 3;     //Setting the required Bits
    __delay_ms(2);        //Acquisition time to charge hold capacitor
    GO_nDONE = 1;         //Initializes A/D Conversion
    while (GO_nDONE)
        ;                            //Wait for A/D Conversion to complete
    return ((ADRESH << 8) + ADRESL); //Returns Result
}

int count = 0;
int iterationsPerAverage = 10;
int mean = 0;
int oldMean = 0;
int threshold = 10;

int monitorBiteAverage(void)
{
    if (count >= iterationsPerAverage) //sets count to 0 when count = iterationsPerAverage
    {
        count = 0;
    }

    int newValue = ADC_Read();

    count++;

    int differential = (newValue - mean) / count;
    int newMean = mean + differential;
    mean = newMean;

    if (count % iterationsPerAverage == 0) //Runs if remainder is 0
    {
        if (oldMean > 0 && abs(oldMean - mean) >= threshold)
        {
            RC4 = 1;
            UART_send_string("FISH ATTACK");
            UART_send_char(10);
        }
        else
        {
            RC4 = 0;
        }
        oldMean = mean;
        mean = 0;
    }

    return mean;
}

void sendBiteDataToPhone(void)
{

    if (oldMean > 0 && count % iterationsPerAverage == 0)
    {
        // send oldMean to bobber
        // UART_send_bite(oldMean);
    }
}
