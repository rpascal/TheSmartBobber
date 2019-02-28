#ifndef COUNTER
#define COUNTER

void Counter_Initialize(void);
void turnOffCounter(void);
void interrupt(void);
float getCounter();
float timeEllapsed(float);

void printCounter(void);

#endif