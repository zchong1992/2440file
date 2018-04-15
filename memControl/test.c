#include "led.h"
#include "watchDog.h"
#include "memSetup.h"
void  sleepTick(volatile unsigned long dly)
{
	for(; dly > 0; dly--);
}
int initSys(void)
{

	watchDogClose();
	initLed();
//	initMemSetup();
}
int clear4k()
{
	char *data=0;
	int i=0;
	for(i=0;i<4096;i++)
		data[i]=0;
}
int main(void)
{
	clear4k();
	int index=0;
	while(1)
	{
		setLedOn(index%3,index%2);	
		sleepTick(5000);
		index++;
	}	
}
