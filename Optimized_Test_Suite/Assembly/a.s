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
.Ltext0:
	.cfi_sections	.debug_frame
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
.LFB6:
	.file 1 "program.c"
	.loc 1 8 34
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #92
	str	r0, [fp, #-96]
	str	r1, [fp, #-100]
	.loc 1 10 4
	ldr	r3, [fp, #-96]
	cmp	r3, #4
	beq	.L2
	.loc 1 11 3
	ldr	r1, .L24+8
	ldr	r0, .L24+12
	bl	printf
.L2:
	.loc 1 14 6
	mov	r3, #1
	str	r3, [fp, #-56]
	.loc 1 15 6
	mov	r3, #1
	str	r3, [fp, #-60]
	.loc 1 16 6
	mov	r3, #1
	str	r3, [fp, #-64]
	.loc 1 18 19
	ldr	r3, [fp, #-100]
	add	r3, r3, #4
	.loc 1 18 10
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-56]
	.loc 1 19 26
	ldr	r3, [fp, #-100]
	add	r3, r3, #8
	.loc 1 19 17
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-60]
	.loc 1 20 21
	ldr	r3, [fp, #-100]
	add	r3, r3, #12
	.loc 1 20 12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-64]
	.loc 1 23 24
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-68]
.LBB2:
	.loc 1 24 10
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 24 2
	b	.L3
.L4:
	.loc 1 26 21 discriminator 3
	ldr	r3, [fp, #-56]
	lsl	r1, r3, #2
	.loc 1 26 8 discriminator 3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r4, r2, r3
	.loc 1 26 21 discriminator 3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	.loc 1 26 12 discriminator 3
	str	r3, [r4]
	.loc 1 24 23 discriminator 3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	.loc 1 24 2 discriminator 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L4
.LBE2:
	.loc 1 30 6
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 40 18
	sub	r3, fp, #88
	mov	r0, r3
	bl	time
	mov	r3, r0
	.loc 1 40 2
	mov	r0, r3
	bl	srand
.LBB3:
	.loc 1 43 10
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 43 2
	b	.L5
.L8:
.LBB4:
	.loc 1 44 11
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 44 3
	b	.L6
.L7:
	.loc 1 47 18 discriminator 3
	bl	rand
	mov	r1, r0
	.loc 1 47 9 discriminator 3
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	.loc 1 47 12 discriminator 3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r0, r2, r3
	.loc 1 47 25 discriminator 3
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
	.loc 1 47 16 discriminator 3
	str	r2, [r0]
	.loc 1 50 9 discriminator 3
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	.loc 1 50 12 discriminator 3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r2, r3
	.loc 1 50 20 discriminator 3
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-28]
	add	r2, r1, r2
	.loc 1 50 16 discriminator 3
	str	r2, [r3]
	.loc 1 44 30 discriminator 3
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L6:
	.loc 1 44 3 discriminator 1
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L7
.LBE4:
	.loc 1 43 29 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L5:
	.loc 1 43 2 discriminator 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L8
.LBE3:
	.loc 1 55 2
	ldr	r0, .L24+20
	bl	printf
	.loc 1 58 12
	bl	clock
	str	r0, [fp, #-72]
	.loc 1 61 4
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L9
.LBB5:
	.loc 1 62 11
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 62 3
	b	.L10
.L15:
.LBB6:
	.loc 1 63 12
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 63 4
	b	.L11
.L14:
.LBB7:
	.loc 1 64 13
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-40]
	.loc 1 64 5
	b	.L12
.L13:
	.loc 1 65 16 discriminator 3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	.loc 1 65 19 discriminator 3
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	.loc 1 65 8 discriminator 3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	.loc 1 64 33 discriminator 3
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L12:
	.loc 1 64 5 discriminator 1
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L13
.LBE7:
	.loc 1 63 31 discriminator 2
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L11:
	.loc 1 63 4 discriminator 1
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L14
.LBE6:
	.loc 1 62 37 discriminator 2
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L10:
	.loc 1 62 3 discriminator 1
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L15
	b	.L16
.L9:
.LBE5:
	.loc 1 70 9
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L16
.LBB8:
	.loc 1 71 11
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 71 3
	b	.L17
.L22:
.LBB9:
	.loc 1 72 12
	mov	r3, #0
	str	r3, [fp, #-48]
	.loc 1 72 4
	b	.L18
.L21:
.LBB10:
	.loc 1 73 13
	mov	r3, #0
	str	r3, [fp, #-52]
	.loc 1 73 5
	b	.L19
.L20:
	.loc 1 74 17 discriminator 3
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldr	r2, [r3]
	.loc 1 74 20 discriminator 3
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	.loc 1 74 8 discriminator 3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	.loc 1 73 32 discriminator 3
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-52]
.L19:
	.loc 1 73 5 discriminator 1
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L20
.LBE10:
	.loc 1 72 31 discriminator 2
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L18:
	.loc 1 72 4 discriminator 1
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L21
.LBE9:
	.loc 1 71 36 discriminator 2
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L17:
	.loc 1 71 3 discriminator 1
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L22
.L16:
.LBE8:
	.loc 1 83 10
	bl	clock
	str	r0, [fp, #-76]
	.loc 1 86 2
	ldr	r1, [fp, #-72]
	ldr	r0, .L24+24
	bl	printf
	.loc 1 89 2
	ldr	r1, [fp, #-76]
	ldr	r0, .L24+28
	bl	printf
	.loc 1 92 2
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-72]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L24+32
	bl	printf
	.loc 1 95 27
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-72]
	sub	r3, r2, r3
	.loc 1 95 12
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	.loc 1 95 10
	vldr.64	d5, .L24
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [fp, #-84]
	.loc 1 98 2
	ldrd	r2, [fp, #-84]
	ldr	r0, .L24+36
	bl	printf
	mov	r3, #0
	.loc 1 100 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
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
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/8/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
	.file 5 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.file 8 "/usr/include/arm-linux-gnueabihf/bits/types/clock_t.h"
	.file 9 "/usr/include/arm-linux-gnueabihf/bits/types/time_t.h"
	.file 10 "/usr/include/time.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x531
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd8
	.byte	0x17
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x41
	.byte	0x25
	.4byte	0x64
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x96
	.byte	0x19
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.4byte	0x72
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x9a
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x9e
	.byte	0x1a
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xbb
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x98
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.4byte	0x24e
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.4byte	0xb5
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0xb5
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0xb5
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0xb5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0xb5
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0xb5
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.4byte	0xb5
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0xb5
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0xb5
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.4byte	0x267
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.4byte	0x26d
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0x7e
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x41
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.4byte	0x4f
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x273
	.byte	0x47
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.4byte	0x283
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x91
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.4byte	0x28e
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.4byte	0x299
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.4byte	0x26d
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.4byte	0x38
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.4byte	0x25
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x29f
	.byte	0x70
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.4byte	0xc7
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF46
	.uleb128 0x6
	.byte	0x4
	.4byte	0x262
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x283
	.uleb128 0xd
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25a
	.uleb128 0xb
	.4byte	.LASF47
	.uleb128 0x6
	.byte	0x4
	.4byte	0x289
	.uleb128 0xb
	.4byte	.LASF48
	.uleb128 0x6
	.byte	0x4
	.4byte	0x294
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x2af
	.uleb128 0xd
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.4byte	0x2bb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24e
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.4byte	0x2bb
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.4byte	0x2bb
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.4byte	0x5d
	.uleb128 0xc
	.4byte	0x2fb
	.4byte	0x2f0
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2e5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x7
	.4byte	0x2f5
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x13
	.4byte	0x9d
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.4byte	0xa9
	.uleb128 0xc
	.4byte	0xb5
	.4byte	0x334
	.uleb128 0xd
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.4byte	0x324
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.4byte	0x5d
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.4byte	0x8a
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.4byte	0x324
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.4byte	0x5d
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.4byte	0x8a
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51b
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8
	.byte	0x1a
	.4byte	0x51b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x17
	.byte	0x8
	.4byte	0x521
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.4byte	0x30c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.byte	0x13
	.4byte	0x30c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x52d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x13
	.ascii	"t\000"
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x45a
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0x18
	.byte	0xa
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x48c
	.uleb128 0x13
	.ascii	"r\000"
	.byte	0x1
	.byte	0x2b
	.byte	0xa
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x13
	.ascii	"c\000"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x4d5
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x13
	.ascii	"r\000"
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x13
	.ascii	"c\000"
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x13
	.ascii	"c\000"
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x13
	.ascii	"r\000"
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF71
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF10:
	.ascii	"__off_t\000"
.LASF17:
	.ascii	"_IO_read_ptr\000"
.LASF29:
	.ascii	"_chain\000"
.LASF8:
	.ascii	"size_t\000"
.LASF35:
	.ascii	"_shortbuf\000"
.LASF23:
	.ascii	"_IO_buf_base\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF72:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g -O0\000"
.LASF38:
	.ascii	"_codecvt\000"
.LASF58:
	.ascii	"__timezone\000"
.LASF6:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF30:
	.ascii	"_fileno\000"
.LASF18:
	.ascii	"_IO_read_end\000"
.LASF70:
	.ascii	"total_t\000"
.LASF11:
	.ascii	"long int\000"
.LASF16:
	.ascii	"_flags\000"
.LASF24:
	.ascii	"_IO_buf_end\000"
.LASF33:
	.ascii	"_cur_column\000"
.LASF47:
	.ascii	"_IO_codecvt\000"
.LASF9:
	.ascii	"__quad_t\000"
.LASF71:
	.ascii	"double\000"
.LASF32:
	.ascii	"_old_offset\000"
.LASF37:
	.ascii	"_offset\000"
.LASF67:
	.ascii	"array\000"
.LASF54:
	.ascii	"clock_t\000"
.LASF61:
	.ascii	"timezone\000"
.LASF46:
	.ascii	"_IO_marker\000"
.LASF49:
	.ascii	"stdin\000"
.LASF68:
	.ascii	"start_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF41:
	.ascii	"_freeres_buf\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF73:
	.ascii	"program.c\000"
.LASF21:
	.ascii	"_IO_write_ptr\000"
.LASF52:
	.ascii	"sys_nerr\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF25:
	.ascii	"_IO_save_base\000"
.LASF13:
	.ascii	"__clock_t\000"
.LASF36:
	.ascii	"_lock\000"
.LASF31:
	.ascii	"_flags2\000"
.LASF43:
	.ascii	"_mode\000"
.LASF50:
	.ascii	"stdout\000"
.LASF69:
	.ascii	"end_t\000"
.LASF64:
	.ascii	"mSize\000"
.LASF22:
	.ascii	"_IO_write_end\000"
.LASF76:
	.ascii	"_IO_lock_t\000"
.LASF75:
	.ascii	"_IO_FILE\000"
.LASF55:
	.ascii	"time_t\000"
.LASF74:
	.ascii	"/home/pi/CSE-525_Proj4\000"
.LASF53:
	.ascii	"sys_errlist\000"
.LASF28:
	.ascii	"_markers\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"short int\000"
.LASF48:
	.ascii	"_IO_wide_data\000"
.LASF34:
	.ascii	"_vtable_offset\000"
.LASF59:
	.ascii	"tzname\000"
.LASF45:
	.ascii	"FILE\000"
.LASF57:
	.ascii	"__daylight\000"
.LASF60:
	.ascii	"daylight\000"
.LASF15:
	.ascii	"char\000"
.LASF66:
	.ascii	"inMajor\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF19:
	.ascii	"_IO_read_base\000"
.LASF27:
	.ascii	"_IO_save_end\000"
.LASF42:
	.ascii	"__pad5\000"
.LASF14:
	.ascii	"__time_t\000"
.LASF44:
	.ascii	"_unused2\000"
.LASF51:
	.ascii	"stderr\000"
.LASF63:
	.ascii	"argv\000"
.LASF26:
	.ascii	"_IO_backup_base\000"
.LASF65:
	.ascii	"moduloOffset\000"
.LASF62:
	.ascii	"argc\000"
.LASF40:
	.ascii	"_freeres_list\000"
.LASF39:
	.ascii	"_wide_data\000"
.LASF56:
	.ascii	"__tzname\000"
.LASF77:
	.ascii	"main\000"
.LASF20:
	.ascii	"_IO_write_base\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
