
.equ MEMSETUPBASE,0x48000000
.text
.global _start
_start:
        ldr  sp, =0x1000
        bl   initSys
        ldr  sp,=0x34000000
	bl   _moveProc
	ldr pc,=p300
p300:
        bl   main
halt_loop:
        b       halt_loop

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
