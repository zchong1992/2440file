#define WATCHDOG 0x53000000

void watchdog_close()
{
	unsigned int *wd=(unsigned int *)WATCHDOG;
	*wd=0;
}

