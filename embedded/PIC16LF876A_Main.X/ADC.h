#ifndef ADC
#define ADC

void ADC_Initialize(void);
unsigned int ADC_Read(void);
void monitorBiteAverage(void);
void sendBiteDataToPhone(void);
//unsigned int ADC_Read();

#endif