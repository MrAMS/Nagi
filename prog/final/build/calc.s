	.file	"calc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.align	4
	.globl	calc
	.type	calc, @function
calc:
.LFB0 = .
	.file 1 "calc.c"
	.loc 1 11 12 view -0
	.cfi_startproc
.LBB2 = .
	.loc 1 16 12 is_stmt 0 view .LVU1
	lu12i.w	$r13,-1879048192>>12			# 0xffffffff90000000
	.align	4,54525952,4
.L2:
.LBE2 = .
	.loc 1 13 5 is_stmt 1 view .LVU2
.LBB3 = .
	.loc 1 15 9 view .LVU3
.LVL0 = .
	.loc 1 16 9 view .LVU4
	.loc 1 16 12 is_stmt 0 view .LVU5
	ld.w	$r12,$r13,0
	.loc 1 16 11 view .LVU6
	beq	$r12,$r0,.L2
.LBE3 = .
	.loc 1 19 1 view .LVU7
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	calc, .-calc
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x62
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0xc
	.4byte	.LASF1
	.4byte	.LASF2
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53
	.uleb128 0x3
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0xf
	.byte	0x20
	.4byte	0x53
	.sleb128 -1879048192
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	0x59
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.ascii	"unsigned int\000"
.LASF3:
	.ascii	"calc\000"
.LASF1:
	.ascii	"calc.c\000"
.LASF2:
	.ascii	"/home/santiego/proj/arch/nscscc/work/nagi/prog/final\000"
.LASF4:
	.ascii	"mir_finish\000"
.LASF0:
	.ascii	"GNU C17 8.3.0 -mabi=ilp32s -march=loongarch32r -mfpu=non"
	.ascii	"e -msimd=none -mcmodel=normal -mtune=loongarch32r -g -O2"
	.ascii	" -fno-builtin\000"
	.ident	"GCC: (LoongArch GNU toolchain LA32 v2.0 (20230903)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
