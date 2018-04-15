
CC=arm-linux-gcc
LD=arm-linux-ld
OBJDUMP=arm-linux-objdump
OBJCOPY=arm-linux-objcopy

LIB=/home/zc/Downloads/gcc-3.4.5-glibc-2.3.6/lib/gcc/arm-linux/3.4.5/libgcc.a

CFLAGS 	:= -Wall -Wstrict-prototypes -g -fomit-frame-pointer -ffreestanding -rdynamic -fPIC
memCtrol : crt0.o  led.o watchDog.o test.o memSetup.o
	arm-linux-ld -TmemMap.lds $^ -o $@ $(LIB)  
	arm-linux-objcopy -O binary -S $@ mem.bin
	arm-linux-objdump -D -m arm $@ > asm.asm
%.o:%.S
	arm-linux-gcc $(CFLAGS) -c -o $@ $^
%.o:%.c
	arm-linux-gcc $(CFLAGS) -c -o $@ $^

clean:
	rm -f asm.asm leds.bin leds_elf *.o
