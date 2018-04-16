
#include "memSetup.h"


void initMemSetup()
{
	unsigned long memSetValue[]=
	{
		0x22011110, //bwscon
		0x00000700, //bankcon0
		0x00000700, //bankcon1
		0x00000700, //bankcon2
		0x00000700, //bankcon3
		0x00000700, //bankcon4
		0x00000700, //bankcon5
		0x00018005, //bankcon6
		0x00018005, //bankcon7
		0x008c07a3, //refresh
		0x000000b1, //banksize
		0x00000030, //mrsrb6
		0x00000030  //mrsrb7
	};
	int i=0;
	unsigned long * pos=(unsigned long*)MEM_CTL_BASE;
	for (i=0;i<13;i++)
	{
		pos[i]=memSetValue[i];
	}		

}



