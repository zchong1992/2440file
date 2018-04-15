@******************************************************************************
@ File：crt0.S
@ 功能：通过它转入C程序
@******************************************************************************       

.text
.global _start
_start:
            ldr  sp, =0x1000
@  colse watch dog use asm 
	bl _close_watchdog
@ close watch dog use C
@	bl watchdog_close            
                       
                 
            bl      main
halt_loop:
            b       halt_loop

.global _close_watchdog
_close_watchdog:
        ldr     r0, =0x53000000 
        mov     r1, #0x0                     
        str     r1, [r0] 
	mov	pc,lr
