#ifndef UART
#define UART

void Initialize_UART();
void UART_send_char(char bt);
char UART_get_char();
void UART_send_string(char* st_pt);
void UART_send_temp(char* st_pt);
void UART_send_bite(char* st_pt);

#endif