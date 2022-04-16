
#include "app.h"
#include <string.h>
#include "definitions.h" 
#include "communication.h"
#include "mdot.h"
#include "eeprom.h"
#include "Figaro/ad5940main.h"

APP_DATA appData;
uint32_t clkFreq,divider;
char latch = false;
int count100ms = 0;
bool flag100ms = false;
int count10ms = 0;
bool flag10ms = false;
int count1sec = 0;
bool flag1sec = false;

void cyclicCallback(uintptr_t context,uint32_t alarmCount)//Manages cyclic updates
{
    count10ms++;
    if(count10ms >= 10)
    {
        flag10ms = true;
        count10ms = 0;
    }
    count100ms++;
    if(count100ms >= 100)
    {
        count100ms = 0;
        flag100ms = true;
    }
    count1sec++;
    if(count1sec >= 1000)
    {
        count1sec = 0;
        flag1sec = true;
    }
}

void initCyclicTImer(void)
{
    clkFreq = TMR2_FrequencyGet();//timer running frequency
    divider = clkFreq / 1000;//calculate the divider needed
    TMR2_PeriodSet(divider);//1ms
    TMR2_CallbackRegister(cyclicCallback,(uintptr_t)NULL);
    TMR2_Start();
}

void APP_Initialize(void)
{
    appData.state = APP_STATE_INIT;
}

void APP_Tasks(void)
{
    switch ( appData.state )
    {
        case APP_STATE_INIT:
        {
            LS_Clear();
            initCyclicTImer();
            communication_init();
            mDotInit();
            eepromInit();
            U5_EN_Set();
            LED2_BL_Set();
            LED2_RD_Set();
            LED2_GR_Set();
//            V12_EN_Set();
            FIG_3V3_EN_Set(); 
            FIG_EN_Clear();
            GPS_U_RST_Set();
            AD5940MAIN_Initialize();
            appData.state = APP_STATE_SERVICE_TASKS;
            break;
        }
        case APP_STATE_SERVICE_TASKS:
        {
            communication_task();
            mDotTasks();
            //AD5940MAIN_Tasks();//Problematic busy investigating
            //eepromTasks();
            if(flag1sec)//1 second tasks
            {
                mDotCounters();
                flag1sec = false;
            }
            if(flag100ms)//100ms tasks
            {          
                HB_Toggle();
                flag100ms = false;
            }
            if(flag10ms)//10ms tasks
            {
                uart_counters();
                flag10ms = false;
            }
//            if(GPIO_27_Get())
//            {
//                if(!LED2_GR_Get())
//                    getMdotMessage();
//                LED2_GR_Set();
//                
//            }
//            else
//                LED2_GR_Clear();
                
            break;
            WDT_Clear();
        }
        default:
        {
            break;
        }
    }
}
