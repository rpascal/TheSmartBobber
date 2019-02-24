#ifndef COUNTER
#define COUNTER

void Counter_Initialize(void);
void turnOffCounter(void);
void interrupt(void);
double getCounter();
double timeEllapsed(double);

#endif