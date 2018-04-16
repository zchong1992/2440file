#include "watchDog.h"
void watchDogClose()
{
	unsigned int *wd=(unsigned int *)WATCHDOG;
	*wd=0;
}

