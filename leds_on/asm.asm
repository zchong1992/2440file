
leds_elf:     file format elf32-littlearm

Disassembly of section .text:

00000000 <_start>:
   0:	e3a0da01 	mov	sp, #4096	; 0x1000
   4:	eb000001 	bl	10 <_close_watchdog>
   8:	eb00000f 	bl	4c <main>

0000000c <halt_loop>:
   c:	eafffffe 	b	c <halt_loop>

00000010 <_close_watchdog>:
  10:	e3a00453 	mov	r0, #1392508928	; 0x53000000
  14:	e3a01000 	mov	r1, #0	; 0x0
  18:	e5801000 	str	r1, [r0]
  1c:	e1a0f00e 	mov	pc, lr

00000020 <wait>:
  20:	e24dd004 	sub	sp, sp, #4	; 0x4
  24:	e58d0000 	str	r0, [sp]
  28:	e59d3000 	ldr	r3, [sp]
  2c:	e3530000 	cmp	r3, #0	; 0x0
  30:	0a000003 	beq	44 <wait+0x24>
  34:	e59d3000 	ldr	r3, [sp]
  38:	e2433001 	sub	r3, r3, #1	; 0x1
  3c:	e58d3000 	str	r3, [sp]
  40:	eafffff8 	b	28 <wait+0x8>
  44:	e28dd004 	add	sp, sp, #4	; 0x4
  48:	e1a0f00e 	mov	pc, lr

0000004c <main>:
  4c:	e52de004 	str	lr, [sp, #-4]!
  50:	e24dd004 	sub	sp, sp, #4	; 0x4
  54:	e3a03000 	mov	r3, #0	; 0x0
  58:	e58d3000 	str	r3, [sp]
  5c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
  60:	e2833050 	add	r3, r3, #80	; 0x50
  64:	e3a02c15 	mov	r2, #5376	; 0x1500
  68:	e5832000 	str	r2, [r3]
  6c:	e3a00c75 	mov	r0, #29952	; 0x7500
  70:	e2800030 	add	r0, r0, #48	; 0x30
  74:	ebffffe9 	bl	20 <wait>
  78:	e3a02456 	mov	r2, #1442840576	; 0x56000000
  7c:	e2822054 	add	r2, r2, #84	; 0x54
  80:	e3a01001 	mov	r1, #1	; 0x1
  84:	e59d3000 	ldr	r3, [sp]
  88:	e1a03311 	mov	r3, r1, lsl r3
  8c:	e1e03003 	mvn	r3, r3
  90:	e5823000 	str	r3, [r2]
  94:	e59d3000 	ldr	r3, [sp]
  98:	e2833001 	add	r3, r3, #1	; 0x1
  9c:	e58d3000 	str	r3, [sp]
  a0:	e59d3000 	ldr	r3, [sp]
  a4:	e3530006 	cmp	r3, #6	; 0x6
  a8:	9affffef 	bls	6c <main+0x20>
  ac:	e3a03004 	mov	r3, #4	; 0x4
  b0:	e58d3000 	str	r3, [sp]
  b4:	eaffffec 	b	6c <main+0x20>

000000b8 <watchdog_close>:
  b8:	e24dd004 	sub	sp, sp, #4	; 0x4
  bc:	e3a03453 	mov	r3, #1392508928	; 0x53000000
  c0:	e58d3000 	str	r3, [sp]
  c4:	e59d2000 	ldr	r2, [sp]
  c8:	e3a03000 	mov	r3, #0	; 0x0
  cc:	e5823000 	str	r3, [r2]
  d0:	e28dd004 	add	sp, sp, #4	; 0x4
  d4:	e1a0f00e 	mov	pc, lr
Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000034 	andeq	r0, r0, r4, lsr r0
   4:	001a0002 	andeqs	r0, sl, r2
   8:	01020000 	tsteq	r2, r0
   c:	000a0efb 	streqd	r0, [sl], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	tsteq	r0, r0
  18:	74726300 	ldrvcbt	r6, [r2], #-768
  1c:	00532e30 	subeqs	r2, r3, r0, lsr lr
  20:	00000000 	andeq	r0, r0, r0
  24:	00020500 	andeq	r0, r2, r0, lsl #10
  28:	17000000 	strne	r0, [r0, -r0]
  2c:	2f2d302d 	swics	0x002d302d
  30:	022c2c2c 	eoreq	r2, ip, #11264	; 0x2c00
  34:	01010002 	tsteq	r1, r2
  38:	00000039 	andeq	r0, r0, r9, lsr r0
  3c:	001a0002 	andeqs	r0, sl, r2
  40:	01020000 	tsteq	r2, r0
  44:	000a0efb 	streqd	r0, [sl], -fp
  48:	01010101 	tsteq	r1, r1, lsl #2
  4c:	01000000 	tsteq	r0, r0
  50:	64656c00 	strvsbt	r6, [r5], #-3072
  54:	00632e73 	rsbeq	r2, r3, r3, ror lr
  58:	00000000 	andeq	r0, r0, r0
  5c:	20020500 	andcs	r0, r2, r0, lsl #10
  60:	03000000 	tsteq	r0, #0	; 0x0
  64:	d448010a 	strleb	r0, [r8], #-266
  68:	8149484a 	cmphi	r9, sl, asr #16
  6c:	6464d464 	strvsbt	sp, [r4], #-1124
  70:	01000602 	tsteq	r0, r2, lsl #12
  74:	00003401 	andeq	r3, r0, r1, lsl #8
  78:	1e000200 	cdpne	2, 0, cr0, cr0, cr0, {0}
  7c:	02000000 	andeq	r0, r0, #0	; 0x0
  80:	0a0efb01 	beq	3bec8c <watchdog_close+0x3bebd4>
  84:	01010100 	tsteq	r1, r0, lsl #2
  88:	00000001 	andeq	r0, r0, r1
  8c:	61770001 	cmnvs	r7, r1
  90:	64686374 	strvsbt	r6, [r8], #-884
  94:	632e676f 	teqvs	lr, #29097984	; 0x1bc0000
  98:	00000000 	andeq	r0, r0, r0
  9c:	02050000 	andeq	r0, r5, #0	; 0x0
  a0:	000000b8 	streqh	r0, [r0], -r8
  a4:	64482c12 	strvsb	r2, [r8], #-3090
  a8:	01000402 	tsteq	r0, r2, lsl #8
  ac:	Address 0xac is out of bounds.

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000050 	andeq	r0, r0, r0, asr r0
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	tsteq	r4, r0
	...
  14:	00000020 	andeq	r0, r0, r0, lsr #32
  18:	30747263 	rsbccs	r7, r4, r3, ror #4
  1c:	2f00532e 	swics	0x0000532e
  20:	656d6f68 	strvsb	r6, [sp, #-3944]!
  24:	2f637a2f 	swics	0x00637a2f
  28:	75636f44 	strvcb	r6, [r3, #-3908]!
  2c:	746e656d 	strvcbt	r6, [lr], #-1389
  30:	34322f73 	ldrcct	r2, [r2], #-3955
  34:	7a2f3034 	bvc	bcc10c <watchdog_close+0xbcc054>
  38:	74736574 	ldrvcbt	r6, [r3], #-1396
  3c:	3434322f 	ldrcct	r3, [r4], #-559
  40:	6c696630 	stcvsl	6, cr6, [r9], #-192
  44:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
  48:	53412055 	cmppl	r1, #85	; 0x55
  4c:	312e3220 	teqcc	lr, r0, lsr #4
  50:	80010035 	andhi	r0, r1, r5, lsr r0
  54:	000000c1 	andeq	r0, r0, r1, asr #1
  58:	00140002 	andeqs	r0, r4, r2
  5c:	01040000 	tsteq	r4, r0
  60:	00000038 	andeq	r0, r0, r8, lsr r0
  64:	000000b8 	streqh	r0, [r0], -r8
  68:	00000020 	andeq	r0, r0, r0, lsr #32
  6c:	20554e47 	subcss	r4, r5, r7, asr #28
  70:	2e332043 	cdpcs	0, 3, cr2, cr3, cr3, {2}
  74:	00352e34 	eoreqs	r2, r5, r4, lsr lr
  78:	64656c01 	strvsbt	r6, [r5], #-3073
  7c:	00632e73 	rsbeq	r2, r3, r3, ror lr
  80:	6d6f682f 	stcvsl	8, cr6, [pc, #-188]!
  84:	637a2f65 	cmnvs	sl, #404	; 0x194
  88:	636f442f 	cmnvs	pc, #788529152	; 0x2f000000
  8c:	6e656d75 	mcrvs	13, 3, r6, cr5, cr5, {3}
  90:	322f7374 	eorcc	r7, pc, #-805306367	; 0xd0000001
  94:	2f303434 	swics	0x00303434
  98:	7365747a 	cmnvc	r5, #2046820352	; 0x7a000000
  9c:	34322f74 	ldrcct	r2, [r2], #-3956
  a0:	69663034 	stmvsdb	r6!, {r2, r4, r5, ip, sp}^
  a4:	0200656c 	andeq	r6, r0, #452984832	; 0x1b000000
  a8:	0000007a 	andeq	r0, r0, sl, ror r0
  ac:	69617701 	stmvsdb	r1!, {r0, r8, r9, sl, ip, sp, lr}^
  b0:	0b010074 	bleq	40288 <watchdog_close+0x401d0>
  b4:	00002001 	andeq	r2, r0, r1
  b8:	00004c00 	andeq	r4, r0, r0, lsl #24
  bc:	035d0100 	cmpeq	sp, #0	; 0x0
  c0:	00796c64 	rsbeqs	r6, r9, r4, ror #24
  c4:	007a0a01 	rsbeqs	r0, sl, r1, lsl #20
  c8:	91020000 	tstls	r2, r0
  cc:	7f040000 	swivc	0x00040000
  d0:	05000000 	streq	r0, [r0]
  d4:	676e6f6c 	strvsb	r6, [lr, -ip, ror #30]!
  d8:	736e7520 	cmnvc	lr, #134217728	; 0x8000000
  dc:	656e6769 	strvsb	r6, [lr, #-1897]!
  e0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  e4:	07040074 	smlsdxeq	r4, r4, r0, r0
  e8:	0000bd06 	andeq	fp, r0, r6, lsl #26
  ec:	616d0100 	cmnvs	sp, r0, lsl #2
  f0:	01006e69 	tsteq	r0, r9, ror #28
  f4:	00bd0110 	adceqs	r0, sp, r0, lsl r1
  f8:	004c0000 	subeq	r0, ip, r0
  fc:	00b80000 	adceqs	r0, r8, r0
 100:	5d010000 	stcpl	0, cr0, [r1]
 104:	01006907 	tsteq	r0, r7, lsl #18
 108:	00007f11 	andeq	r7, r0, r1, lsl pc
 10c:	00910200 	addeqs	r0, r1, r0, lsl #4
 110:	6e690500 	cdpvs	5, 6, cr0, cr9, cr0, {0}
 114:	05040074 	streq	r0, [r4, #-116]
 118:	00009900 	andeq	r9, r0, r0, lsl #18
 11c:	88000200 	stmhida	r0, {r9}
 120:	04000000 	streq	r0, [r0]
 124:	00007501 	andeq	r7, r0, r1, lsl #10
 128:	0000d800 	andeq	sp, r0, r0, lsl #16
 12c:	0000b800 	andeq	fp, r0, r0, lsl #16
 130:	554e4700 	strplb	r4, [lr, #-1792]
 134:	33204320 	teqcc	r0, #-2147483648	; 0x80000000
 138:	352e342e 	strcc	r3, [lr, #-1070]!
 13c:	61770100 	cmnvs	r7, r0, lsl #2
 140:	64686374 	strvsbt	r6, [r8], #-884
 144:	632e676f 	teqvs	lr, #29097984	; 0x1bc0000
 148:	6f682f00 	swivs	0x00682f00
 14c:	7a2f656d 	bvc	bd9708 <watchdog_close+0xbd9650>
 150:	6f442f63 	swivs	0x00442f63
 154:	656d7563 	strvsb	r7, [sp, #-1379]!
 158:	2f73746e 	swics	0x0073746e
 15c:	30343432 	eorccs	r3, r4, r2, lsr r4
 160:	65747a2f 	ldrvsb	r7, [r4, #-2607]!
 164:	322f7473 	eorcc	r7, pc, #1929379840	; 0x73000000
 168:	66303434 	undefined
 16c:	00656c69 	rsbeq	r6, r5, r9, ror #24
 170:	00008602 	andeq	r8, r0, r2, lsl #12
 174:	61770100 	cmnvs	r7, r0, lsl #2
 178:	64686374 	strvsbt	r6, [r8], #-884
 17c:	635f676f 	cmpvs	pc, #29097984	; 0x1bc0000
 180:	65736f6c 	ldrvsb	r6, [r3, #-3948]!
 184:	b8040100 	stmltda	r4, {r8}
 188:	d8000000 	stmleda	r0, {}
 18c:	01000000 	tsteq	r0, r0
 190:	6477035d 	ldrvsbt	r0, [r7], #-861
 194:	86050100 	strhi	r0, [r5], -r0, lsl #2
 198:	02000000 	andeq	r0, r0, #0	; 0x0
 19c:	04000091 	streq	r0, [r0], #-145
 1a0:	00008c04 	andeq	r8, r0, r4, lsl #24
 1a4:	6e750500 	cdpvs	5, 7, cr0, cr5, cr0, {0}
 1a8:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
 1ac:	69206465 	stmvsdb	r0!, {r0, r2, r5, r6, sl, sp, lr}
 1b0:	0400746e 	streq	r7, [r0], #-1134
 1b4:	Address 0x1b4 is out of bounds.

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	andne	r1, r0, r1, lsl #2
   4:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
   8:	1b080301 	blne	200c14 <watchdog_close+0x200b5c>
   c:	13082508 	tstne	r8, #33554432	; 0x2000000
  10:	00000005 	andeq	r0, r0, r5
  14:	10011101 	andne	r1, r1, r1, lsl #2
  18:	11011206 	tstne	r1, r6, lsl #4
  1c:	13082501 	tstne	r8, #4194304	; 0x400000
  20:	1b08030b 	blne	200c54 <watchdog_close+0x200b9c>
  24:	02000008 	andeq	r0, r0, #8	; 0x8
  28:	1301012e 	tstne	r1, #-2147483637	; 0x8000000b
  2c:	08030c3f 	stmeqda	r3, {r0, r1, r2, r3, r4, r5, sl, fp}
  30:	0b3b0b3a 	bleq	ec2d20 <watchdog_close+0xec2c68>
  34:	01110c27 	tsteq	r1, r7, lsr #24
  38:	0a400112 	beq	1000488 <watchdog_close+0x10003d0>
  3c:	05030000 	streq	r0, [r3]
  40:	3a080300 	bcc	200c48 <watchdog_close+0x200b90>
  44:	490b3b0b 	stmmidb	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  48:	000a0213 	andeq	r0, sl, r3, lsl r2
  4c:	00350400 	eoreqs	r0, r5, r0, lsl #8
  50:	00001349 	andeq	r1, r0, r9, asr #6
  54:	03002405 	tsteq	r0, #83886080	; 0x5000000
  58:	3e0b0b08 	fmacdcc	d0, d11, d8
  5c:	0600000b 	streq	r0, [r0], -fp
  60:	1301012e 	tstne	r1, #-2147483637	; 0x8000000b
  64:	08030c3f 	stmeqda	r3, {r0, r1, r2, r3, r4, r5, sl, fp}
  68:	0b3b0b3a 	bleq	ec2d58 <watchdog_close+0xec2ca0>
  6c:	13490c27 	cmpne	r9, #9984	; 0x2700
  70:	01120111 	tsteq	r2, r1, lsl r1
  74:	00000a40 	andeq	r0, r0, r0, asr #20
  78:	03003407 	tsteq	r0, #117440512	; 0x7000000
  7c:	3b0b3a08 	blcc	2ce8a4 <watchdog_close+0x2ce7ec>
  80:	0213490b 	andeqs	r4, r3, #180224	; 0x2c000
  84:	0000000a 	andeq	r0, r0, sl
  88:	10011101 	andne	r1, r1, r1, lsl #2
  8c:	11011206 	tstne	r1, r6, lsl #4
  90:	13082501 	tstne	r8, #4194304	; 0x400000
  94:	1b08030b 	blne	200cc8 <watchdog_close+0x200c10>
  98:	02000008 	andeq	r0, r0, #8	; 0x8
  9c:	1301012e 	tstne	r1, #-2147483637	; 0x8000000b
  a0:	08030c3f 	stmeqda	r3, {r0, r1, r2, r3, r4, r5, sl, fp}
  a4:	0b3b0b3a 	bleq	ec2d94 <watchdog_close+0xec2cdc>
  a8:	01120111 	tsteq	r2, r1, lsl r1
  ac:	00000a40 	andeq	r0, r0, r0, asr #20
  b0:	03003403 	tsteq	r0, #50331648	; 0x3000000
  b4:	3b0b3a08 	blcc	2ce8dc <watchdog_close+0x2ce824>
  b8:	0213490b 	andeqs	r4, r3, #180224	; 0x2c000
  bc:	0400000a 	streq	r0, [r0], #-10
  c0:	0b0b000f 	bleq	2c0104 <watchdog_close+0x2c004c>
  c4:	00001349 	andeq	r1, r0, r9, asr #6
  c8:	03002405 	tsteq	r0, #83886080	; 0x5000000
  cc:	3e0b0b08 	fmacdcc	d0, d11, d8
  d0:	0000000b 	andeq	r0, r0, fp
Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	00000020 	andeq	r0, r0, r0, lsr #32
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00540002 	subeqs	r0, r4, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00000020 	andeq	r0, r0, r0, lsr #32
  34:	00000098 	muleq	r0, r8, r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	01190002 	tsteq	r9, r2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	000000b8 	streqh	r0, [r0], -r8
  54:	00000020 	andeq	r0, r0, r0, lsr #32
	...
Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 	swinv	0x00ffffff
   8:	7c010001 	stcvc	0, cr0, [r1], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000010 	andeq	r0, r0, r0, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00000020 	andeq	r0, r0, r0, lsr #32
  1c:	0000002c 	andeq	r0, r0, ip, lsr #32
  20:	00040e44 	andeq	r0, r4, r4, asr #28
  24:	00000014 	andeq	r0, r0, r4, lsl r0
  28:	00000000 	andeq	r0, r0, r0
  2c:	0000004c 	andeq	r0, r0, ip, asr #32
  30:	0000006c 	andeq	r0, r0, ip, rrx
  34:	44040e44 	strmi	r0, [r4], #-3652
  38:	018e080e 	orreq	r0, lr, lr, lsl #16
  3c:	0000000c 	andeq	r0, r0, ip
  40:	ffffffff 	swinv	0x00ffffff
  44:	7c010001 	stcvc	0, cr0, [r1], {1}
  48:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  4c:	00000010 	andeq	r0, r0, r0, lsl r0
  50:	0000003c 	andeq	r0, r0, ip, lsr r0
  54:	000000b8 	streqh	r0, [r0], -r8
  58:	00000020 	andeq	r0, r0, r0, lsr #32
  5c:	00040e44 	andeq	r0, r4, r4, asr #28
Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
   0:	00000020 	andeq	r0, r0, r0, lsr #32
   4:	00540002 	subeqs	r0, r4, r2
   8:	00c50000 	sbceq	r0, r5, r0
   c:	00530000 	subeqs	r0, r3, r0
  10:	61770000 	cmnvs	r7, r0
  14:	94007469 	strls	r7, [r0], #-1129
  18:	6d000000 	stcvs	0, cr0, [r0]
  1c:	006e6961 	rsbeq	r6, lr, r1, ror #18
  20:	00000000 	andeq	r0, r0, r0
  24:	00000021 	andeq	r0, r0, r1, lsr #32
  28:	01190002 	tsteq	r9, r2
  2c:	009d0000 	addeqs	r0, sp, r0
  30:	00570000 	subeqs	r0, r7, r0
  34:	61770000 	cmnvs	r7, r0
  38:	64686374 	strvsbt	r6, [r8], #-884
  3c:	635f676f 	cmpvs	pc, #29097984	; 0x1bc0000
  40:	65736f6c 	ldrvsb	r6, [r3, #-3948]!
  44:	00000000 	andeq	r0, r0, r0
	...
Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	cmpmi	r3, #0	; 0x0
   4:	4728203a 	undefined
   8:	2029554e 	eorcs	r5, r9, lr, asr #10
   c:	2e342e33 	mrccs	14, 1, r2, cr4, cr3, {1}
  10:	47000035 	smladxmi	r0, r5, r0, r0
  14:	203a4343 	eorcss	r4, sl, r3, asr #6
  18:	554e4728 	strplb	r4, [lr, #-1832]
  1c:	2e332029 	cdpcs	0, 3, cr2, cr3, cr9, {1}
  20:	00352e34 	eoreqs	r2, r5, r4, lsr lr
