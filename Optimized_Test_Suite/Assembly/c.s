	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"program.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LVL0:
.LFB22:
	.file 1 "program.c"
	.loc 1 8 34 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 34 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	mov	r6, r1
	.loc 1 10 2 is_stmt 1 view .LVU2
	.loc 1 10 4 is_stmt 0 view .LVU3
	cmp	r0, #4
	bne	.L32
.LVL1:
.L2:
	.loc 1 14 2 is_stmt 1 view .LVU4
	.loc 1 15 2 view .LVU5
	.loc 1 16 2 view .LVU6
	.loc 1 18 2 view .LVU7
.LBB17:
.LBI17:
	.file 2 "/usr/include/stdlib.h"
	.loc 2 361 1 view .LVU8
.LBB18:
	.loc 2 363 3 view .LVU9
	.loc 2 363 16 is_stmt 0 view .LVU10
	mov	r2, #10
	mov	r1, #0
	ldr	r0, [r6, #4]
	bl	strtol
.LVL2:
	.loc 2 363 16 view .LVU11
	mov	r4, r0
.LVL3:
	.loc 2 363 16 view .LVU12
.LBE18:
.LBE17:
	.loc 1 19 2 is_stmt 1 view .LVU13
.LBB19:
.LBI19:
	.loc 2 361 1 view .LVU14
.LBB20:
	.loc 2 363 3 view .LVU15
	.loc 2 363 16 is_stmt 0 view .LVU16
	mov	r2, #10
	mov	r1, #0
	ldr	r0, [r6, #8]
.LVL4:
	.loc 2 363 16 view .LVU17
	bl	strtol
.LVL5:
	.loc 2 363 16 view .LVU18
	mov	r5, r0
.LVL6:
	.loc 2 363 16 view .LVU19
.LBE20:
.LBE19:
	.loc 1 20 2 is_stmt 1 view .LVU20
.LBB21:
.LBI21:
	.loc 2 361 1 view .LVU21
.LBB22:
	.loc 2 363 3 view .LVU22
	.loc 2 363 16 is_stmt 0 view .LVU23
	mov	r2, #10
	mov	r1, #0
	ldr	r0, [r6, #12]
.LVL7:
	.loc 2 363 16 view .LVU24
	bl	strtol
.LVL8:
	.loc 2 363 16 view .LVU25
	mov	r10, r0
.LVL9:
	.loc 2 363 16 view .LVU26
.LBE22:
.LBE21:
	.loc 1 23 2 is_stmt 1 view .LVU27
	.loc 1 23 24 is_stmt 0 view .LVU28
	mov	r9, r4
	lsl	r7, r4, #2
	mov	r0, r7
.LVL10:
	.loc 1 23 24 view .LVU29
	bl	malloc
.LVL11:
	.loc 1 24 2 is_stmt 1 view .LVU30
.LBB23:
	.loc 1 24 6 view .LVU31
	.loc 1 24 2 is_stmt 0 view .LVU32
	cmp	r4, #0
	ble	.L3
	sub	r6, r0, #4
.LVL12:
	.loc 1 24 2 view .LVU33
	mov	r8, r0
	add	fp, r6, r7
.LVL13:
.L4:
	.loc 1 26 3 is_stmt 1 discriminator 3 view .LVU34
	.loc 1 26 21 is_stmt 0 discriminator 3 view .LVU35
	mov	r0, r7
	bl	malloc
.LVL14:
	.loc 1 26 12 discriminator 3 view .LVU36
	str	r0, [r6, #4]!
	.loc 1 24 2 discriminator 3 view .LVU37
	cmp	r6, fp
	bne	.L4
.LBE23:
	.loc 1 30 2 is_stmt 1 view .LVU38
.LVL15:
	.loc 1 33 2 view .LVU39
	.loc 1 34 2 view .LVU40
	.loc 1 37 2 view .LVU41
	.loc 1 40 2 view .LVU42
	.loc 1 40 18 is_stmt 0 view .LVU43
	add	r0, sp, #4
	bl	time
.LVL16:
	.loc 1 40 2 view .LVU44
	bl	srand
.LVL17:
	.loc 1 43 2 is_stmt 1 view .LVU45
.LBB24:
	.loc 1 43 6 view .LVU46
	.loc 1 43 10 is_stmt 0 view .LVU47
	mov	fp, #0
.LVL18:
.L19:
	.loc 1 43 10 view .LVU48
	mov	r6, fp
.LBE24:
	.loc 1 8 34 view .LVU49
	mov	r7, #0
.LVL19:
.L6:
.LBB26:
.LBB25:
	.loc 1 47 4 is_stmt 1 discriminator 3 view .LVU50
	.loc 1 47 18 is_stmt 0 discriminator 3 view .LVU51
	bl	rand
.LVL20:
	.loc 1 50 4 is_stmt 1 discriminator 3 view .LVU52
	.loc 1 50 16 is_stmt 0 discriminator 3 view .LVU53
	ldr	r3, [r8]
	str	r6, [r3, r7]
	.loc 1 50 16 discriminator 3 view .LVU54
	add	r7, r7, #4
	add	r6, r6, #1
	.loc 1 44 3 discriminator 3 view .LVU55
	cmp	r9, r6
	bne	.L6
.LBE25:
	.loc 1 43 29 discriminator 2 view .LVU56
	add	fp, fp, #1
.LVL21:
	.loc 1 43 29 discriminator 2 view .LVU57
	add	r8, r8, #4
	add	r9, r9, #1
	.loc 1 43 2 discriminator 2 view .LVU58
	cmp	fp, r4
	bne	.L19
.LVL22:
.L7:
	.loc 1 43 2 discriminator 2 view .LVU59
.LBE26:
	.loc 1 55 2 is_stmt 1 view .LVU60
	ldr	r0, .L34+8
	bl	printf
.LVL23:
	.loc 1 58 2 view .LVU61
	.loc 1 58 12 is_stmt 0 view .LVU62
	bl	clock
.LVL24:
	mov	r6, r0
.LVL25:
	.loc 1 61 2 is_stmt 1 view .LVU63
	.loc 1 61 4 is_stmt 0 view .LVU64
	cmp	r10, #0
	bne	.L8
.LVL26:
.LBB27:
	.loc 1 62 3 view .LVU65
	cmp	r5, #0
	.loc 1 62 11 view .LVU66
	movgt	r1, r10
	.loc 1 62 3 view .LVU67
	bgt	.L9
	b	.L10
.LVL27:
.L32:
	.loc 1 62 3 view .LVU68
.LBE27:
	.loc 1 11 3 is_stmt 1 view .LVU69
	ldr	r1, .L34+12
.LVL28:
	.loc 1 11 3 is_stmt 0 view .LVU70
	ldr	r0, .L34+16
.LVL29:
	.loc 1 11 3 view .LVU71
	bl	printf
.LVL30:
	b	.L2
.LVL31:
.L13:
.LBB31:
.LBB28:
	.loc 1 63 31 discriminator 2 view .LVU72
	add	r2, r2, #1
.LVL32:
	.loc 1 63 4 discriminator 2 view .LVU73
	cmp	r2, r4
	beq	.L12
.LVL33:
.L14:
.LBB29:
	.loc 1 64 5 view .LVU74
	cmp	r4, r1
	movgt	r3, r1
	ble	.L13
.LVL34:
.L11:
	.loc 1 65 6 is_stmt 1 discriminator 3 view .LVU75
	.loc 1 64 33 is_stmt 0 discriminator 3 view .LVU76
	add	r3, r3, r5
.LVL35:
	.loc 1 64 5 discriminator 3 view .LVU77
	cmp	r3, r4
	blt	.L11
	b	.L13
.LVL36:
.L12:
	.loc 1 64 5 discriminator 3 view .LVU78
.LBE29:
.LBE28:
	.loc 1 62 37 discriminator 2 view .LVU79
	add	r1, r1, #1
.LVL37:
	.loc 1 62 3 discriminator 2 view .LVU80
	cmp	r1, r5
	beq	.L10
.LVL38:
.L9:
.LBB30:
	.loc 1 63 4 view .LVU81
	cmp	r4, #0
	.loc 1 63 12 view .LVU82
	movgt	r2, r10
	.loc 1 63 4 view .LVU83
	bgt	.L14
	b	.L12
.LVL39:
.L8:
	.loc 1 63 4 view .LVU84
.LBE30:
.LBE31:
	.loc 1 70 7 is_stmt 1 view .LVU85
	.loc 1 70 9 is_stmt 0 view .LVU86
	cmp	r10, #1
	beq	.L33
.LVL40:
.L10:
	.loc 1 80 2 is_stmt 1 view .LVU87
	.loc 1 83 2 view .LVU88
	.loc 1 83 10 is_stmt 0 view .LVU89
	bl	clock
.LVL41:
	.loc 1 83 10 view .LVU90
	mov	r4, r0
.LVL42:
	.loc 1 86 2 is_stmt 1 view .LVU91
	mov	r1, r6
	ldr	r0, .L34+20
.LVL43:
	.loc 1 86 2 is_stmt 0 view .LVU92
	bl	printf
.LVL44:
	.loc 1 89 2 is_stmt 1 view .LVU93
	mov	r1, r4
	ldr	r0, .L34+24
	bl	printf
.LVL45:
	.loc 1 92 2 view .LVU94
	sub	r6, r4, r6
.LVL46:
	.loc 1 92 2 is_stmt 0 view .LVU95
	mov	r1, r6
	ldr	r0, .L34+28
	bl	printf
.LVL47:
	.loc 1 95 2 is_stmt 1 view .LVU96
	.loc 1 98 2 view .LVU97
	.loc 1 95 12 is_stmt 0 view .LVU98
	vmov	s15, r6	@ int
	vcvt.f64.s32	d7, s15
	.loc 1 98 2 view .LVU99
	vldr.64	d6, .L34
	vdiv.f64	d7, d7, d6
.LVL48:
	.loc 1 98 2 view .LVU100
	vmov	r2, r3, d7
	ldr	r0, .L34+32
	bl	printf
.LVL49:
	.loc 1 100 1 view .LVU101
	mov	r0, #0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL50:
.L33:
	.cfi_restore_state
.LBB32:
	.loc 1 71 3 view .LVU102
	cmp	r5, #0
	.loc 1 71 11 view .LVU103
	movgt	r1, #0
	.loc 1 71 3 view .LVU104
	ble	.L10
.LVL51:
.L15:
.LBB33:
	.loc 1 72 4 view .LVU105
	cmp	r4, #0
	.loc 1 72 12 view .LVU106
	movgt	r2, #0
	.loc 1 72 4 view .LVU107
	ble	.L17
.LVL52:
.L18:
.LBB34:
	.loc 1 73 13 view .LVU108
	mov	r3, #0
.LVL53:
.L16:
	.loc 1 74 6 is_stmt 1 discriminator 3 view .LVU109
	.loc 1 73 32 is_stmt 0 discriminator 3 view .LVU110
	add	r3, r3, r5
.LVL54:
	.loc 1 73 5 discriminator 3 view .LVU111
	cmp	r3, r4
	blt	.L16
.LBE34:
	.loc 1 72 31 discriminator 2 view .LVU112
	add	r2, r2, #1
.LVL55:
	.loc 1 72 4 discriminator 2 view .LVU113
	cmp	r2, r4
	bne	.L18
.LVL56:
.L17:
	.loc 1 72 4 discriminator 2 view .LVU114
.LBE33:
	.loc 1 71 36 discriminator 2 view .LVU115
	add	r1, r1, #1
.LVL57:
	.loc 1 71 3 discriminator 2 view .LVU116
	cmp	r1, r5
	bne	.L15
	b	.L10
.LVL58:
.L3:
	.loc 1 71 3 discriminator 2 view .LVU117
.LBE32:
	.loc 1 30 2 is_stmt 1 view .LVU118
	.loc 1 33 2 view .LVU119
	.loc 1 34 2 view .LVU120
	.loc 1 37 2 view .LVU121
	.loc 1 40 2 view .LVU122
	.loc 1 40 18 is_stmt 0 view .LVU123
	add	r0, sp, #4
	bl	time
.LVL59:
	.loc 1 40 2 view .LVU124
	bl	srand
.LVL60:
	.loc 1 43 2 is_stmt 1 view .LVU125
.LBB35:
	.loc 1 43 6 view .LVU126
	.loc 1 43 6 is_stmt 0 view .LVU127
	b	.L7
.L35:
	.align	3
.L34:
	.word	0
	.word	1093567616
	.word	.LC2
	.word	.LC0
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
.LBE35:
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"program.c\000"
	.space	2
.LC1:
	.ascii	"Usage: ./%s <matrix dimension> <access offset> <Row"
	.ascii	"(0)/Column(1) Major>\012\000"
	.space	3
.LC2:
	.ascii	"Program start: \000"
.LC3:
	.ascii	"%ld\012\000"
	.space	3
.LC4:
	.ascii	"Program end: %ld\012\000"
	.space	2
.LC5:
	.ascii	"\316\224V is %ld\012\000"
.LC6:
	.ascii	"Total CPU time: %f\012\000"
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/arm-linux-gnueabihf/8/include/stddef.h"
	.file 4 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 5 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
	.file 6 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.file 9 "/usr/include/arm-linux-gnueabihf/bits/types/clock_t.h"
	.file 10 "/usr/include/arm-linux-gnueabihf/bits/types/time_t.h"
	.file 11 "/usr/include/time.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7da
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd8
	.byte	0x17
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x41
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x96
	.byte	0x19
	.4byte	0x91
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x9a
	.byte	0x1b
	.4byte	0x91
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x9e
	.byte	0x1a
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.4byte	0xc2
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x98
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.4byte	0x255
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.4byte	0xbc
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.4byte	0xbc
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.4byte	0xbc
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0xbc
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.4byte	0xbc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.4byte	0xbc
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.4byte	0xbc
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.4byte	0xbc
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.4byte	0xbc
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.4byte	0xbc
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.4byte	0xbc
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.4byte	0x26e
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.4byte	0x274
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.4byte	0x85
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x4f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.4byte	0x5d
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x27a
	.byte	0x47
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.4byte	0x28a
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x98
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.4byte	0x295
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.4byte	0x2a0
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.4byte	0x274
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.4byte	0x46
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.4byte	0x33
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.4byte	0x2c
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2a6
	.byte	0x70
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.4byte	0xce
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF47
	.uleb128 0x6
	.byte	0x4
	.4byte	0x269
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0xc
	.4byte	0xc2
	.4byte	0x28a
	.uleb128 0xd
	.4byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x261
	.uleb128 0xb
	.4byte	.LASF48
	.uleb128 0x6
	.byte	0x4
	.4byte	0x290
	.uleb128 0xb
	.4byte	.LASF49
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29b
	.uleb128 0xc
	.4byte	0xc2
	.4byte	0x2b6
	.uleb128 0xd
	.4byte	0x3f
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.4byte	0x2c2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x255
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xc
	.4byte	0x302
	.4byte	0x2f7
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0x2fc
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.4byte	0x2f7
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x13
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.4byte	0xb0
	.uleb128 0xc
	.4byte	0xbc
	.4byte	0x33b
	.uleb128 0xd
	.4byte	0x3f
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.4byte	0x32b
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.4byte	0x91
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.4byte	0x32b
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.4byte	0x91
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x753
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.4byte	0x2c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8
	.byte	0x1a
	.4byte	0x753
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x17
	.byte	0x8
	.4byte	0x759
	.uleb128 0x14
	.ascii	"x\000"
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.4byte	0x313
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.byte	0x13
	.4byte	0x313
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x15
	.ascii	"t\000"
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x498
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x18
	.byte	0xa
	.4byte	0x2c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x785
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4d9
	.uleb128 0x14
	.ascii	"r\000"
	.byte	0x1
	.byte	0x2b
	.byte	0xa
	.4byte	0x2c
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1a
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x14
	.ascii	"c\000"
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x792
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x529
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x14
	.ascii	"r\000"
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x14
	.ascii	"c\000"
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0x2c
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x581
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1a
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x14
	.ascii	"c\000"
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1a
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x14
	.ascii	"r\000"
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	0x2c
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x765
	.4byte	.LBI17
	.byte	.LVU8
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.4byte	0x5bc
	.uleb128 0x1e
	.4byte	0x777
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0x79f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x765
	.4byte	.LBI19
	.byte	.LVU14
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.4byte	0x5f7
	.uleb128 0x1e
	.4byte	0x777
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x79f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x765
	.4byte	.LBI21
	.byte	.LVU21
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x632
	.uleb128 0x1e
	.4byte	0x777
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x79f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL11
	.4byte	0x785
	.4byte	0x646
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL16
	.4byte	0x7ab
	.4byte	0x65a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0x7b7
	.uleb128 0x1f
	.4byte	.LVL23
	.4byte	0x7c4
	.4byte	0x67a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0x7d1
	.uleb128 0x1f
	.4byte	.LVL30
	.4byte	0x7c4
	.4byte	0x6a3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0x7d1
	.uleb128 0x1f
	.4byte	.LVL44
	.4byte	0x7c4
	.4byte	0x6c9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL45
	.4byte	0x7c4
	.4byte	0x6e6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL47
	.4byte	0x7c4
	.4byte	0x703
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0x7c4
	.4byte	0x735
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x18
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.4byte	0
	.4byte	0x412e8480
	.byte	0x1b
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL59
	.4byte	0x7ab
	.4byte	0x749
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x7b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x169
	.byte	0x1
	.4byte	0x2c
	.byte	0x3
	.4byte	0x785
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x169
	.byte	0x1
	.4byte	0x2fc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x21b
	.byte	0xe
	.uleb128 0x22
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x1c5
	.byte	0xc
	.uleb128 0x23
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x2
	.byte	0xb0
	.byte	0x11
	.uleb128 0x23
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x4b
	.byte	0xf
	.uleb128 0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x1c7
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x14c
	.byte	0xc
	.uleb128 0x23
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xb
	.byte	0x48
	.byte	0x10
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x2117
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 .LVU91
	.uleb128 .LVU102
	.uleb128 0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU7
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU39
	.uleb128 .LVU65
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU119
	.uleb128 0
.LLST5:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU63
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU95
	.uleb128 .LVU102
	.uleb128 .LVU117
.LLST6:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU102
.LLST7:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU97
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
.LLST8:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.4byte	0
	.4byte	0x412e8480
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-1-.Ltext0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL49-1-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.4byte	0
	.4byte	0x412e8480
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU32
	.uleb128 .LVU34
	.uleb128 .LVU117
	.uleb128 0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU59
	.uleb128 .LVU127
	.uleb128 0
.LLST13:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU48
	.uleb128 .LVU50
.LLST14:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU65
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 .LVU84
.LLST15:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU72
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU84
.LLST16:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU78
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU117
.LLST18:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU105
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU114
.LLST19:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU114
.LLST20:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU8
	.uleb128 .LVU11
.LLST9:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU14
	.uleb128 .LVU18
.LLST10:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU21
	.uleb128 .LVU25
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 12
	.4byte	0
	.4byte	0
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF76:
	.ascii	"printf\000"
.LASF11:
	.ascii	"__off_t\000"
.LASF18:
	.ascii	"_IO_read_ptr\000"
.LASF71:
	.ascii	"malloc\000"
.LASF30:
	.ascii	"_chain\000"
.LASF9:
	.ascii	"size_t\000"
.LASF36:
	.ascii	"_shortbuf\000"
.LASF24:
	.ascii	"_IO_buf_base\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF78:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g -O1\000"
.LASF39:
	.ascii	"_codecvt\000"
.LASF59:
	.ascii	"__timezone\000"
.LASF7:
	.ascii	"long long int\000"
.LASF5:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"_fileno\000"
.LASF19:
	.ascii	"_IO_read_end\000"
.LASF70:
	.ascii	"total_t\000"
.LASF12:
	.ascii	"long int\000"
.LASF73:
	.ascii	"strtol\000"
.LASF17:
	.ascii	"_flags\000"
.LASF25:
	.ascii	"_IO_buf_end\000"
.LASF34:
	.ascii	"_cur_column\000"
.LASF48:
	.ascii	"_IO_codecvt\000"
.LASF10:
	.ascii	"__quad_t\000"
.LASF0:
	.ascii	"double\000"
.LASF33:
	.ascii	"_old_offset\000"
.LASF38:
	.ascii	"_offset\000"
.LASF84:
	.ascii	"array\000"
.LASF55:
	.ascii	"clock_t\000"
.LASF62:
	.ascii	"timezone\000"
.LASF47:
	.ascii	"_IO_marker\000"
.LASF50:
	.ascii	"stdin\000"
.LASF68:
	.ascii	"start_t\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"_freeres_buf\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF79:
	.ascii	"program.c\000"
.LASF72:
	.ascii	"rand\000"
.LASF22:
	.ascii	"_IO_write_ptr\000"
.LASF53:
	.ascii	"sys_nerr\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"_IO_save_base\000"
.LASF14:
	.ascii	"__clock_t\000"
.LASF37:
	.ascii	"_lock\000"
.LASF32:
	.ascii	"_flags2\000"
.LASF44:
	.ascii	"_mode\000"
.LASF51:
	.ascii	"stdout\000"
.LASF69:
	.ascii	"end_t\000"
.LASF65:
	.ascii	"mSize\000"
.LASF23:
	.ascii	"_IO_write_end\000"
.LASF82:
	.ascii	"_IO_lock_t\000"
.LASF81:
	.ascii	"_IO_FILE\000"
.LASF74:
	.ascii	"time\000"
.LASF56:
	.ascii	"time_t\000"
.LASF86:
	.ascii	"__nptr\000"
.LASF80:
	.ascii	"/home/pi/CSE-525_Proj4\000"
.LASF54:
	.ascii	"sys_errlist\000"
.LASF29:
	.ascii	"_markers\000"
.LASF75:
	.ascii	"srand\000"
.LASF85:
	.ascii	"atoi\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"short int\000"
.LASF49:
	.ascii	"_IO_wide_data\000"
.LASF35:
	.ascii	"_vtable_offset\000"
.LASF60:
	.ascii	"tzname\000"
.LASF46:
	.ascii	"FILE\000"
.LASF58:
	.ascii	"__daylight\000"
.LASF61:
	.ascii	"daylight\000"
.LASF16:
	.ascii	"char\000"
.LASF67:
	.ascii	"inMajor\000"
.LASF13:
	.ascii	"__off64_t\000"
.LASF20:
	.ascii	"_IO_read_base\000"
.LASF28:
	.ascii	"_IO_save_end\000"
.LASF43:
	.ascii	"__pad5\000"
.LASF15:
	.ascii	"__time_t\000"
.LASF45:
	.ascii	"_unused2\000"
.LASF52:
	.ascii	"stderr\000"
.LASF64:
	.ascii	"argv\000"
.LASF27:
	.ascii	"_IO_backup_base\000"
.LASF66:
	.ascii	"moduloOffset\000"
.LASF63:
	.ascii	"argc\000"
.LASF41:
	.ascii	"_freeres_list\000"
.LASF40:
	.ascii	"_wide_data\000"
.LASF77:
	.ascii	"clock\000"
.LASF57:
	.ascii	"__tzname\000"
.LASF83:
	.ascii	"main\000"
.LASF21:
	.ascii	"_IO_write_base\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
