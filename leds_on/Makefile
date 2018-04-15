
CC=arm-linux-gcc
LD=arm-linux-ld
OBJDUMP=arm-linux-objdump
OBJCOPY=arm-linux-objcopy



CFLAGS 	:= -Wall -Wstrict-prototypes -g -fomit-frame-pointer -ffreestanding
leds_elf : crt0.o  leds.o watchdog.o
	arm-linux-ld -Tleds.lds $^ -o $@
	arm-linux-objcopy -O binary -S $@ leds.bin
	arm-linux-objdump -D -m arm $@ > asm.asm
%.o:%.S
	arm-linux-gcc $(CFLAGS) -c -o $@ $^
%.o:%.c
	arm-linux-gcc $(CFLAGS) -c -o $@ $^

clean:
	rm -f asm.asm leds.bin leds_elf *.o
