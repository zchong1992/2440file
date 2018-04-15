

#ifndef __LED_H__
#define __LED_H__

#define	GPFCON		(*(volatile unsigned long *)0x56000050)
#define	GPFDAT		(*(volatile unsigned long *)0x56000054)

#define	GPF4_out	(1<<(4*2))
#define	GPF5_out	(1<<(5*2))
#define	GPF6_out	(1<<(6*2))
#define	GPF7_out	(1<<(7*2))
#define LIGHT_ON 0
#define LIGHT_OFF 1
extern void setLedOn(int i,int on);
extern void initLed();
#endif


