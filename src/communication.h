
#ifndef COMMUNICATION_H
#define	COMMUNICATION_H

#include <stddef.h>                  
#include <stdbool.h>                    
#include <stdlib.h>                    
#include <string.h>
#include "definitions.h" 

#define COM_BUFFER_SIZE 220

typedef enum
{
    UART_SEND_BUFFER,
    UART_RECEIVE_BUFFER,
    UART_RECEIVE_PROCESS,
    UART_BUFFER_WAIT,
    UART_BUFFER_IDLE,
    UART_BUFFER_INIT,    
    UART_BUFFER_ERROR,
}UART_BUFFER_STATE;

typedef struct
{
    bool writeStatus;
    bool readStatus;
    bool timeutStatus;
    uint8_t sendBuffer[COM_BUFFER_SIZE];
    uint8_t receiveBuffer[COM_BUFFER_SIZE];
    uint16_t sendCount;
    uint16_t receiveCount;
    uint16_t timeout;
    UART_BUFFER_STATE state;
}UART_COM_DATA;

extern UART_COM_DATA uartComData6;
extern UART_COM_DATA uartComData4;

void communication_init(void);
void communication_task(void);
void uart_counters(void);
//void communicationTimer(void);
uint16_t sendStringU6(char * str);

#endif	/* COMMUNICATION_H */

