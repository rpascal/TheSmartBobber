#include "defines.h"
#include "UART.h"
#include "ds18b20.h"
#include "counter.h"

int previousTemp = -999;

//***Delay Functions for GPIO***//
void delay_us(int useconds) {
    int s;
    for (s = 0; s < useconds; s++);
}

void delay_ms(int j) {
    unsigned char i;
    for (; j; j--)
    for (i = 122; i <= 0; i--);
}

//***Reseting 1-Wire Data***//
unsigned char ow_reset(void) {
    DQ_TRIS = 0; // Set RC3 to Output
    DQ = 0; // Set RC3 LOW
    __delay_us(480); // 1-wire required delay
    DQ_TRIS = 1; // Set RC3 HIGH
    __delay_us(60); // 1-wire required delay
    if (DQ == 0) // If DS18B20 is connected
    {
        __delay_us(480);
        return 0; // 1-wire is present
    } else { // If DS18B20 is NOT connected
        __delay_us(480);
        return 1; // Notify DS18B20 is NOT connected
    }
}

//***Communication protocol for DS18B20 (1-Wire)***//

//**Transmission bits from DS18B20**//
unsigned char read_bit(void) {
    unsigned char i;
    DQ_TRIS = 1; //Set RC3 to Output
    DQ = 0; // RC3 LOW
    DQ_TRIS = 1; //Set RC3 to Output
    DQ = 1; // Set RC3 HIGH to start data time slot
    for (i = 0; i < 3; i++); // delay 15us from start for data time slot
    return (DQ); // Return value of DQ line (HIGH or LOW?)
}

//**Transmission bytes from DS18B20**// 
unsigned char read_byte(void) {
    char i, result = 0;
    DQ_TRIS = 1; // Set RC3 to Input
    for (i = 0; i < 8; i++) {
        DQ_TRIS = 0; // Set RC3 as Output
        DQ = 0; // Set RC3 Low 
        __delay_us(2); //Keep RC3 LOW for 2us
        DQ_TRIS = 1; // Set RC3 to Input
        if (DQ != 0) // if Bit is 1 
            result |= 1 << i;
        __delay_us(60); 
    }
    return result;
}

//**Sending bits to DS18B20**//
void write_bit(char bitval) {
    DQ_TRIS = 0; //Set RC3 to Output
    DQ = 0; // pull RC3 Low
    if (bitval == 1) DQ = 1; // return DQ high if write 1
    __delay_us(5); // Ride out rest of time slot 
    DQ_TRIS = 1;
    DQ = 1;
}

//**Sending Bytes to DS18B20**//
void write_byte(char val) {
    char i;
    DQ_TRIS = 1; // Set RC3 to Input

    for (i = 0; i < 8; i++) {
        if ((val & (1 << i)) != 0) {
            // Writing HIGH 
            DQ_TRIS = 0; 
            DQ = 0; 
            __delay_us(1); // 1-Wire Delay
            DQ_TRIS = 1; 
            __delay_us(60); // 1-Wire Delay
        } else {
            // Writing LOW
            DQ_TRIS = 0; 
            DQ = 0; 
            __delay_us(60); // 1-Wire Delay
            DQ_TRIS = 1; 
        }
    }

}

//***Setting 12-bit resolution for TEMP Data***//

//**Initialization of DS18B20 (1-Wire)**//
void ds18b20_Initialize(void) {
    ow_reset();
    write_byte(write_scratchpad);
    write_byte(0);
    write_byte(0);
    write_byte(resolution_12bit);
}

//**Getting and Sending TEMP value**//
void broadcastTempValue(void) {
    int getTimer = (int) getCounter();
    if (getTimer % 60 != 0) {
        return;
    }
    int temp = read_temp();
    if (temp != previousTemp) {
        sendTemp(temp);
    }
    previousTemp = temp;
}

//**Send TEMP value via UART**//
void sendTemp(int temp) {
    if (temp != -999 && temp < 100) {
        char str[40];
        sprintf(str, "%d", temp);
        UART_send_temp(str);
    }
}

//**Reading TEMP data**//
unsigned int read_temp(void) {
    //Checking for DS18B20 connection
    if (ow_reset() == 1) {
        UART_send_string("Temp. NOT connected");
        UART_send_char(10);
        return -999;
    }
    
    unsigned short TempL, TempH; //Data will be in 2 bytes
    int temp = 0; //Setting initial Temp
    char str[30]; 

    ow_reset(); //Reseting DS18B20
    write_byte(skip_rom);
    write_byte(convert_temp);

    while (read_byte() == 0xff)
        ;
    __delay_ms(500);

    ow_reset();

    write_byte(skip_rom);
    write_byte(read_scratchpad);

    TempL = read_byte();
    TempH = read_byte();

    temp = ((unsigned int) TempH << 8) + (unsigned int) TempL; 
    temp = temp / 16; 

    return temp;
}