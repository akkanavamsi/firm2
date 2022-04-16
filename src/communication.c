#include "communication.h"
#include "nmea.h"

void uart6_comTasks(void);
void uart6_counters(void);
void uart4_comTasks(void);
void uart4_counters(void);

//*********** All UARTS *********** 
void communication_init(void)
{
    uartComData6.state = UART_BUFFER_INIT;
    uartComData4.state = UART_BUFFER_INIT;
}

void communication_task(void)
{
    uart6_comTasks();
    uart4_comTasks();
}

void uart_counters(void)
{
    uart6_counters();
}

//*********** UART 6 mDot *********** 
void clearSendBufferUart6(void);
void clearReceiveBufferUart6(void);
void sendBufferUart6(void);
bool uart6Busy(void);
void uart6_comHandlingDone(void);

UART_COM_DATA uartComData6;
uint8_t rxByteU6;
uint16_t uart6_timeout = 0;
uint16_t uart6_eof = 0;
bool uart6_timeoutFlag = false;
bool uart6_eofFlag = false;

void uart6_writeCallback(uintptr_t context)
{ 
    uartComData6.state = UART_BUFFER_WAIT;
    uartComData6.writeStatus = true;
}

void uart6_readCallback(uintptr_t context)
{         
    UART6_Read(&rxByteU6, 1);
    uartComData6.receiveBuffer[uartComData6.receiveCount++] = rxByteU6;
    uart6_eof = 0;
    uartComData6.state = UART_RECEIVE_BUFFER;
}

void uart6_counters(void)
{
    if((uartComData6.state == UART_BUFFER_WAIT) || (uartComData6.state == UART_RECEIVE_BUFFER))
    {
        uart6_timeout++;
        if(uart6_timeout >= 1000)//1000ms
        {
            uart6_timeout = 0;
            uart6_timeoutFlag = true;
        }
    }
    if(uartComData6.state == UART_RECEIVE_BUFFER)//check eof
    {
        uart6_eof++;
        if(uart6_eof >= 10)//100ms
        {
            uart6_eofFlag = true;
            uart6_eof = 0;
        }
    }
}

void uart6_comHandlingDone(void)
{
    uartComData6.readStatus = false;
    uartComData6.state = UART_BUFFER_IDLE;
}

void uart6_comTasks(void)
{
    switch(uartComData6.state)
    {
        case UART_BUFFER_INIT:
            UART6_WriteCallbackRegister(uart6_writeCallback, 0);
            UART6_ReadCallbackRegister(uart6_readCallback, 0);
            uartComData6.writeStatus = false;
            uartComData6.readStatus = false;
            uartComData6.timeutStatus = false;
            clearSendBufferUart6();
            clearReceiveBufferUart6();
            UART6_Read(&rxByteU6, 1); 
            uart6_eof = 0;
            uart6_timeout = 0;
            uart6_timeoutFlag = false;
            uart6_eofFlag = false;
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_SEND_BUFFER:
            clearReceiveBufferUart6();
            UART6_Write(uartComData6.sendBuffer, uartComData6.sendCount);
            uart6_timeout = 0;
            uart6_eof = 0;
            uart6_timeoutFlag = false;
            uart6_eofFlag = false;
            uartComData6.timeutStatus = false;
            uartComData6.readStatus = false;
            uartComData6.state = UART_BUFFER_WAIT;
            break;
        case UART_RECEIVE_BUFFER:
            //if(uartComData6.receiveBuffer[uartComData6.receiveCount - 1] == 0x0A)//Line Feed
            //if(uartComData6.receiveBuffer[uartComData6.receiveCount -1] == 0x00)//NULL
            if(uart6_eofFlag)
            {
                uartComData6.state = UART_RECEIVE_PROCESS;
                uartComData6.readStatus = true;//EOF
                uart6_eofFlag = false;
            }
            if(uart6_timeoutFlag)
            {
                uartComData6.state = UART_BUFFER_ERROR;
            }
            break;
        case UART_RECEIVE_PROCESS:
//            clearReceiveBuffer();
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_BUFFER_ERROR:
            uartComData6.timeout++;
            uartComData6.readStatus = true;
            uartComData6.timeutStatus = true;
            clearReceiveBufferUart6();
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_BUFFER_WAIT:
            if(uart6_timeoutFlag)
            {
                uartComData6.state = UART_BUFFER_ERROR;
            }
//            if(!UART6_WriteIsBusy())              
//                uartComData6.state = UART_BUFFER_IDLE;
            break;
        default:
        case UART_BUFFER_IDLE:
            break;
    }
}

void clearSendBufferUart6(void)
{
    memset(uartComData6.sendBuffer,0,COM_BUFFER_SIZE);
    uartComData6.sendCount = 0;
}

void clearReceiveBufferUart6(void)
{
    memset(uartComData6.receiveBuffer,0,COM_BUFFER_SIZE);
    uartComData6.receiveCount = 0;
}

void sendBufferUart6(void)
{
    if(uartComData6.state == UART_BUFFER_IDLE)
        uartComData6.state = UART_SEND_BUFFER;
}

bool uart6Busy(void)
{
    if(uartComData6.state == UART_BUFFER_IDLE)
        return false;
    else
        return true;
}

uint16_t sendStringU6(char * str)
{
    uint16_t len = strlen(str);
    int i;
    clearSendBufferUart6();
    for(i =0; i < len; i++)
        uartComData6.sendBuffer[i] = str[i];
    uartComData6.sendBuffer[len] = 0x0D;//CR
    uartComData6.sendBuffer[len + 1] = 0x0A;//LF
    uartComData6.sendCount = len + 2;
    sendBufferUart6();
    //UART6_Write(str,len);
    return len;
}

//*********** UART 4 GPS *********** 
void clearSendBufferUart4(void);
void clearReceiveBufferUart4(void);
void sendBufferUart4(void);
bool uart4Busy(void);
void uart4_comHandlingDone(void);

UART_COM_DATA uartComData4;
uint8_t rxByteU4;

void uart4_writeCallback(uintptr_t context)
{
    uartComData4.writeStatus = true;
}

void uart4_readCallback(uintptr_t context)
{         
    //interCharDelay = 0;
//    while(UART2_ReadCountGet() != 0)
//    {
        UART4_Read(&rxByteU4, 1);
        uartComData4.receiveBuffer[uartComData4.receiveCount++] = rxByteU4;
//    }
    //UART2_Read(&rxByte, 1);
    uartComData4.state = UART_RECEIVE_BUFFER;
}

void uart4_comHandlingDone(void)
{
    uartComData4.readStatus = false;
    uartComData4.state = UART_BUFFER_IDLE;
}

void clearSendBufferUart4(void)
{
    memset(uartComData4.sendBuffer,0,COM_BUFFER_SIZE);
    uartComData4.sendCount = 0;
}

void clearReceiveBufferUart4(void)
{
    memset(uartComData4.receiveBuffer,0,COM_BUFFER_SIZE);
    uartComData4.receiveCount = 0;
}

void sendBufferUart4(void)
{
    if(uartComData4.state == UART_BUFFER_IDLE)
        uartComData4.state = UART_SEND_BUFFER;
}

bool uart4Busy(void)
{
    if(uartComData4.state == UART_BUFFER_IDLE)
        return false;
    else
        return true;
}

void uart4_comTasks(void)
{
    switch(uartComData4.state)
    {
        case UART_BUFFER_INIT:
            UART4_WriteCallbackRegister(uart4_writeCallback, 0);
            UART4_ReadCallbackRegister(uart4_readCallback, 0);
            uartComData4.writeStatus = false;
            uartComData4.readStatus = false;
            U4_EN_Clear();
            //interCharDelay = 0;
            clearSendBufferUart4();
            clearReceiveBufferUart4();
            UART4_Read(&rxByteU4, 1);
            uartComData4.state = UART_BUFFER_IDLE;
            break;
        case UART_SEND_BUFFER:
            clearReceiveBufferUart4();
            UART4_Write(uartComData4.sendBuffer, uartComData4.sendCount);
            uartComData4.state = UART_BUFFER_WAIT;
            break;
        case UART_RECEIVE_BUFFER:
            if(uartComData4.receiveBuffer[uartComData4.receiveCount - 1] == 0x0A)//Line Feed
            {
//                uartComData4.state = UART_RECEIVE_PROCESS;
                uartComData4.readStatus = true;//EOF
            }
            break;
        case UART_RECEIVE_PROCESS:
            parseNMEAstring(uartComData4.receiveBuffer);
            clearReceiveBufferUart4();
            uartComData4.state = UART_BUFFER_IDLE;
            break;
        case UART_BUFFER_ERROR:
            break;
        case UART_BUFFER_WAIT:
            if(!UART4_WriteIsBusy())              
                uartComData4.state = UART_BUFFER_IDLE;
            break;
        default:
        case UART_BUFFER_IDLE:
            break;
    }
}