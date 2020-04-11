	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"program.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"program.c\000"
	.align	2
.LC1:
	.ascii	"Usage: ./%s <matrix dimension> <access offset> <Row"
	.ascii	"(0)/Column(1) Major>\012\000"
	.align	2
.LC2:
	.ascii	"Program start: \000"
	.align	2
.LC3:
	.ascii	"%ld\012\000"
	.align	2
.LC4:
	.ascii	"Program end: %ld\012\000"
	.align	2
.LC5:
	.ascii	"\316\224V is %ld\012\000"
	.align	2
.LC6:
	.ascii	"Total CPU time: %f\012\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #92
	str	r0, [fp, #-96]
	str	r1, [fp, #-100]
	ldr	r3, [fp, #-96]
	cmp	r3, #4
	beq	.L2
	ldr	r1, .L24+8
	ldr	r0, .L24+12
	bl	printf
.L2:
	mov	r3, #1
	str	r3, [fp, #-56]
	mov	r3, #1
	str	r3, [fp, #-60]
	mov	r3, #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-100]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-100]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-60]
	ldr	r3, [fp, #-100]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-64]
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L4:
	ldr	r3, [fp, #-56]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L4
	mov	r3, #0
	str	r3, [fp, #-20]
	sub	r3, fp, #88
	mov	r0, r3
	bl	time
	mov	r3, r0
	mov	r0, r3
	bl	srand
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L5
.L8:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L6
.L7:
	bl	rand
	mov	r1, r0
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r0, r2, r3
	ldr	r3, .L24+16
	smull	r2, r3, r3, r1
	asr	r2, r3, #4
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	str	r2, [r0]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-28]
	add	r2, r1, r2
	str	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L6:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L5:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L8
	ldr	r0, .L24+20
	bl	printf
	bl	clock
	str	r0, [fp, #-72]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L9
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L10
.L15:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L11
.L14:
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-40]
	b	.L12
.L13:
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L12:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L13
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L11:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L14
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L10:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L15
	b	.L16
.L9:
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L16
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L17
.L22:
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L18
.L21:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L19
.L20:
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-52]
.L19:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L20
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L18:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L21
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L17:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L22
.L16:
	bl	clock
	str	r0, [fp, #-76]
	ldr	r1, [fp, #-72]
	ldr	r0, .L24+24
	bl	printf
	ldr	r1, [fp, #-76]
	ldr	r0, .L24+28
	bl	printf
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-72]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L24+32
	bl	printf
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-72]
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L24
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [fp, #-84]
	ldrd	r2, [fp, #-84]
	ldr	r0, .L24+36
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L25:
	.align	3
.L24:
	.word	0
	.word	1093567616
	.word	.LC0
	.word	.LC1
	.word	1374389535
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
