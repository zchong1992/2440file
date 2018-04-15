
.equ MEMSETUPBASE,0x48000000
.text
.global _start
_start:
        ldr  sp, =0x1000
        bl   initSys
	bl   _initMemSetup
        ldr  sp,=0x34000000
	bl   _moveProc
	ldr pc,=p300
p300:
        bl   main
halt_loop:
        b       halt_loop

.global _close_watchdog
_close_watchdog:
        ldr     r0, =0x53000000 
        mov     r1, #0x0                     
        str     r1, [r0] 
	mov	pc,lr


.global _movePoc
_moveProc:
	mov r0,#0
	mov r1,#0
	mov r2,#0x30000000
loop:
	ldr r3,[r1],#4
	str r3,[r2],#4
	add r0,r0,#4
	cmp r0,#4096
	bne loop
	mov pc,lr	

.global _initMemSetup
_initMemSetup:
	mov r1,#MEMSETUPBASE
	adrl r2,_static_memSetup_data
	add r3,r1,#52
l:
	ldr r4,[r2],#4
	str r4,[r1],#4
	cmp r1,r3
	bne l
	mov pc,lr 

.align 4
.global _static_memSetup_data
_static_memSetup_data:
	.long 0x22011110  @bwscon
	.long 0x00000700  @bankcon0
	.long 0x00000700  @bankcon1
	.long 0x00000700  @bankcon2
	.long 0x00000700  @bankcon3
	.long 0x00000700  @bankcon4
	.long 0x00000700  @bankcon5
	.long 0x00018005  @bankcon6
	.long 0x00018005  @bankcon7
	.long 0x008c07a3  @refresh
	.long 0x000000b1  @banksize
	.long 0x00000030  @mrsrb6
	.long 0x00000030  @mrsrb7
