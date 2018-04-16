#include "led.h"

void setLedOn(int i,int on)
{
	if(i<0 ||i>2)
		return;
	i+=4;
	unsigned int cur=GPFDAT;
	unsigned char on_mask=~(1<<i);
	unsigned char off_mask=0xff ^ on_mask;
	if(on==LIGHT_ON)
	{
		cur&=on_mask;
	}
	else 
	{
		cur|=off_mask;
	}
	GPFDAT = cur;  //4 //5 //6
}
void initLed()
{
	GPFCON = GPF4_out|GPF5_out|GPF6_out;
}
