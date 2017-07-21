	.file	"main.cpp"
# GNU C++ (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-4), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE -D_REENTRANT main.cpp -march=core-avx2
# -mcx16 -msahf -mmovbe -maes -mpclmul -mpopcnt -mabm -mno-lwp -mfma
# -mno-fma4 -mno-xop -mbmi -mbmi2 -mno-tbm -mavx -mavx2 -msse4.2 -msse4.1
# -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase -mno-rdseed
# -mno-prfchw -mno-adx -mfxsr -mxsave -mxsaveopt --param l1-cache-size=32
# --param l1-cache-line-size=64 --param l2-cache-size=15360 -mtune=generic
# -auxbase-strip main.S -g -O3 -fopenmp -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexceptions
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -foptimize-strlen
# -fpartial-inlining -fpeephole -fpeephole2 -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
# -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
# -funswitch-loops -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -mabm
# -maccumulate-outgoing-args -maes -malign-stringops -mavx -mavx2
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mbmi -mbmi2
# -mcx16 -mf16c -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase -mfxsr
# -mglibc -mhle -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe -mpclmul
# -mpopcnt -mpush-args -mrdrnd -mred-zone -msahf -msse -msse2 -msse3 -msse4
# -msse4.1 -msse4.2 -mssse3 -mtls-direct-seg-refs -mvzeroupper -mxsave
# -mxsaveopt

	.text
.Ltext0:
	.p2align 4,,15
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB1096:
	.file 1 "main.cpp"
	.loc 1 14 0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
.LVL0:
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$10000000, %ecx	#,
	movl	$1, %edx	#,
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# .omp_data_i, .omp_data_i
	andq	$-32, %rsp	#,
	subq	$160, %rsp	#,
	movslq	16(%rdi), %rsi	# .omp_data_i_11(D)->n, D.8701
	xorl	%edi, %edi	#
.LVL1:
	leaq	128(%rsp), %r9	#, tmp94
	leaq	96(%rsp), %r8	#,
	call	GOMP_loop_dynamic_start	#
.LVL2:
.LBB27:
.LBB28:
.LBB29:
	.loc 1 21 0
	vxorps	%xmm1, %xmm1, %xmm1	# d
	testb	%al, %al	# D.8702
	vmovaps	%ymm1, %ymm2	#, c
	je	.L2	#,
	vmovaps	.LC0(%rip), %ymm0	#, tmp93
.LVL3:
	.p2align 4,,10
	.p2align 3
.L5:
	movl	96(%rsp), %eax	# .istart0.7, i
.LVL4:
	movl	128(%rsp), %edx	# .iend0.8, D.8700
.LVL5:
	.p2align 4,,10
	.p2align 3
.L4:
	addl	$1, %eax	#, i
.LVL6:
.LBB30:
.LBB31:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include/fmaintrin.h"
	.loc 2 64 0
	vfmadd231ps	%ymm0, %ymm0, %ymm2	# tmp93, tmp93, c
.LVL7:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	vfmadd231ps	%ymm0, %ymm0, %ymm1	# tmp93, tmp93, d
.LVL8:
	cmpl	%eax, %edx	# i, D.8700
	jg	.L4	#,
	leaq	128(%rsp), %rsi	#, tmp95
	leaq	96(%rsp), %rdi	#,
	vmovaps	%ymm0, (%rsp)	# tmp93, %sfp
	vmovaps	%ymm1, 32(%rsp)	# d, %sfp
	vmovaps	%ymm2, 64(%rsp)	# c, %sfp
	vzeroupper
	call	GOMP_loop_dynamic_next	#
.LVL9:
	testb	%al, %al	# D.8702
	vmovaps	64(%rsp), %ymm2	# %sfp, c
	vmovaps	32(%rsp), %ymm1	# %sfp, d
	vmovaps	(%rsp), %ymm0	# %sfp, tmp93
	jne	.L5	#,
.LVL10:
.L2:
	vmovaps	%ymm1, 32(%rsp)	# d, %sfp
	vmovaps	%ymm2, 64(%rsp)	# c, %sfp
.LVL11:
	vzeroupper
	call	GOMP_loop_end	#
.LVL12:
.LBE33:
.LBE32:
.LBE29:
.LBE28:
.LBB34:
.LBB35:
	.file 3 "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include/avxintrin.h"
	.loc 3 865 0
	movq	(%rbx), %rax	# .omp_data_i_11(D)->emem, .omp_data_i_11(D)->emem
	vmovaps	64(%rsp), %ymm2	# %sfp, c
	vmovups	%ymm2, (%rax)	# c,* .omp_data_i_11(D)->emem
.LVL13:
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	movq	8(%rbx), %rax	# .omp_data_i_11(D)->fmem, .omp_data_i_11(D)->fmem
.LVL14:
	vmovaps	32(%rsp), %ymm1	# %sfp, d
	vmovups	%ymm1, (%rax)	# d,* .omp_data_i_11(D)->fmem
.LVL15:
	vzeroupper
.LBE37:
.LBE36:
.LBE27:
	.loc 1 14 0
	movq	-8(%rbp), %rbx	#,
.LVL16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1096:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Flops: %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1095:
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
.LBB38:
	.loc 1 9 0
	movl	$32, %edi	#,
.LBE38:
	.loc 1 6 0
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
.LBB41:
	.loc 1 9 0
	call	malloc	#
.LVL17:
	.loc 1 10 0
	movl	$32, %edi	#,
	.loc 1 9 0
	movq	%rax, %r12	#, tmp80
.LVL18:
	.loc 1 10 0
	call	malloc	#
.LVL19:
	.loc 1 13 0
	movq	%rsp, %rdi	#,
	xorl	%esi, %esi	#
	.loc 1 10 0
	movq	%rax, %rbx	#, tmp81
.LVL20:
	.loc 1 13 0
	call	gettimeofday	#
.LVL21:
	leaq	32(%rsp), %rsi	#, tmp106
	xorl	%edx, %edx	#
	movl	$main._omp_fn.0, %edi	#,
.LBB39:
	.loc 1 14 0
	movq	%r12, 32(%rsp)	# tmp80, .omp_data_o.1.emem
	movq	%rbx, 40(%rsp)	# tmp81, .omp_data_o.1.fmem
	movl	$1000000000, 48(%rsp)	#, .omp_data_o.1.n
	call	GOMP_parallel_start	#
.LVL22:
	leaq	32(%rsp), %rdi	#, tmp107
	call	main._omp_fn.0	#
.LVL23:
	call	GOMP_parallel_end	#
.LVL24:
.LBE39:
	.loc 1 30 0
	leaq	16(%rsp), %rdi	#, tmp108
	xorl	%esi, %esi	#
.LBB40:
	.loc 1 14 0
	movl	48(%rsp), %ebx	# .omp_data_o.1.n, n
.LVL25:
.LBE40:
	.loc 1 30 0
	call	gettimeofday	#
.LVL26:
	.loc 1 33 0
	movq	16(%rsp), %rax	# end.tv_sec, D.8711
	subq	(%rsp), %rax	# beg.tv_sec, D.8711
	.loc 1 34 0
	movl	$.LC3, %edi	#,
	vcvtsi2ss	%ebx, %xmm1, %xmm1	# n, D.8713
	.loc 1 33 0
	vcvtsi2sdq	%rax, %xmm2, %xmm2	# D.8711, D.8712
	movq	24(%rsp), %rax	# end.tv_usec, D.8711
	subq	8(%rsp), %rax	# beg.tv_usec, D.8711
.LVL27:
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# D.8711, D.8712
	.loc 1 34 0
	movl	$1, %eax	#,
.LVL28:
	vmulss	.LC1(%rip), %xmm1, %xmm1	#, D.8713, D.8713
	.loc 1 33 0
	vdivsd	.LC2(%rip), %xmm0, %xmm0	#, D.8712, D.8712
	vaddsd	%xmm0, %xmm2, %xmm0	# D.8712, D.8712, D.8712
	vmovddup	%xmm0, %xmm0	# D.8712, seconds
	vcvtpd2psx	%xmm0, %xmm0	# seconds, seconds
	.loc 1 34 0
	vdivss	%xmm0, %xmm1, %xmm0	# seconds, D.8713, D.8713
	vunpcklps	%xmm0, %xmm0, %xmm0	# D.8713, D.8713, D.8713
	vcvtps2pd	%xmm0, %xmm0	# D.8713, D.8712
	call	printf	#
.LVL29:
.LBE41:
	.loc 1 35 0
	addq	$64, %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
.LVL30:
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1095:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1107296256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include/stddef.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/time.h"
	.file 8 "/usr/include/sys/time.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x949
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0x4
	.long	.LASF82
	.long	.LASF83
	.long	.Ldebug_ranges0+0x30
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0xd4
	.long	0x49
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x8c
	.long	0x30
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x8d
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x94
	.long	0x30
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.long	0x30
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF45
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x23d
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xf7
	.long	0x73
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xfc
	.long	0xaf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xfd
	.long	0xaf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xfe
	.long	0xaf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.byte	0xff
	.long	0xaf
	.byte	0x20
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x100
	.long	0xaf
	.byte	0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x101
	.long	0xaf
	.byte	0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x102
	.long	0xaf
	.byte	0x38
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x103
	.long	0xaf
	.byte	0x40
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x105
	.long	0xaf
	.byte	0x48
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x106
	.long	0xaf
	.byte	0x50
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x107
	.long	0xaf
	.byte	0x58
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x109
	.long	0x275
	.byte	0x60
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x10b
	.long	0x27b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x10d
	.long	0x73
	.byte	0x70
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x111
	.long	0x73
	.byte	0x74
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x113
	.long	0x7a
	.byte	0x78
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x117
	.long	0x57
	.byte	0x80
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x118
	.long	0x65
	.byte	0x82
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x119
	.long	0x281
	.byte	0x83
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x11d
	.long	0x291
	.byte	0x88
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x126
	.long	0x85
	.byte	0x90
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x12f
	.long	0xad
	.byte	0x98
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x130
	.long	0xad
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x131
	.long	0xad
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x132
	.long	0xad
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.value	0x133
	.long	0x3e
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.value	0x135
	.long	0x73
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.value	0x137
	.long	0x297
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF84
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF46
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x275
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0xa2
	.long	0x275
	.byte	0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0xa3
	.long	0x27b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0xa7
	.long	0x73
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x244
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0xb
	.long	0xb5
	.long	0x291
	.uleb128 0xc
	.long	0x90
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23d
	.uleb128 0xb
	.long	0xb5
	.long	0x2a7
	.uleb128 0xc
	.long	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ad
	.uleb128 0xd
	.long	0xb5
	.uleb128 0x7
	.long	.LASF50
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.long	0x2d7
	.uleb128 0x8
	.long	.LASF51
	.byte	0x7
	.byte	0x20
	.long	0x97
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x7
	.byte	0x21
	.long	0xa2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x8
	.byte	0x8
	.byte	0x38
	.long	0x2fc
	.uleb128 0x8
	.long	.LASF54
	.byte	0x8
	.byte	0x3a
	.long	0x73
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x3b
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF56
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x3
	.long	.LASF58
	.byte	0x3
	.byte	0x21
	.long	0x31b
	.uleb128 0xe
	.long	0x37
	.long	0x327
	.uleb128 0xf
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0x3
	.byte	0x29
	.long	0x332
	.uleb128 0xe
	.long	0x37
	.long	0x33e
	.uleb128 0xf
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x3
	.value	0x359
	.long	0x327
	.byte	0x3
	.long	0x35c
	.uleb128 0x11
	.string	"__P"
	.byte	0x3
	.value	0x359
	.long	0x35c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x362
	.uleb128 0xd
	.long	0x37
	.uleb128 0x10
	.long	.LASF61
	.byte	0x3
	.value	0x4a5
	.long	0x327
	.byte	0x3
	.long	0x3d9
	.uleb128 0x11
	.string	"__A"
	.byte	0x3
	.value	0x4a5
	.long	0x37
	.uleb128 0x11
	.string	"__B"
	.byte	0x3
	.value	0x4a5
	.long	0x37
	.uleb128 0x11
	.string	"__C"
	.byte	0x3
	.value	0x4a5
	.long	0x37
	.uleb128 0x11
	.string	"__D"
	.byte	0x3
	.value	0x4a5
	.long	0x37
	.uleb128 0x11
	.string	"__E"
	.byte	0x3
	.value	0x4a6
	.long	0x37
	.uleb128 0x11
	.string	"__F"
	.byte	0x3
	.value	0x4a6
	.long	0x37
	.uleb128 0x11
	.string	"__G"
	.byte	0x3
	.value	0x4a6
	.long	0x37
	.uleb128 0x11
	.string	"__H"
	.byte	0x3
	.value	0x4a6
	.long	0x37
	.byte	0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x3
	.value	0x490
	.long	0x327
	.byte	0x3
	.uleb128 0x13
	.long	.LASF62
	.byte	0x2
	.byte	0x3d
	.long	0x327
	.byte	0x3
	.long	0x418
	.uleb128 0x14
	.string	"__A"
	.byte	0x2
	.byte	0x3d
	.long	0x327
	.uleb128 0x14
	.string	"__B"
	.byte	0x2
	.byte	0x3d
	.long	0x327
	.uleb128 0x14
	.string	"__C"
	.byte	0x2
	.byte	0x3d
	.long	0x327
	.byte	0
	.uleb128 0x15
	.long	.LASF68
	.byte	0x3
	.value	0x35f
	.byte	0x3
	.long	0x43e
	.uleb128 0x11
	.string	"__P"
	.byte	0x3
	.value	0x35f
	.long	0x43e
	.uleb128 0x11
	.string	"__A"
	.byte	0x3
	.value	0x35f
	.long	0x327
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37
	.uleb128 0x16
	.long	.LASF86
	.quad	.LFB1096
	.quad	.LFE1096-.LFB1096
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bd
	.uleb128 0x17
	.long	0x6bd
	.uleb128 0x18
	.long	0x6ea
	.long	.LLST0
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x9
	.long	0x43e
	.long	.LLST1
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0xa
	.long	0x43e
	.long	.LLST2
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0xb
	.long	0x73
	.long	.LLST3
	.uleb128 0x1b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x65c
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x11
	.long	0x327
	.uleb128 0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0x12
	.long	0x327
	.uleb128 0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x13
	.long	0x327
	.long	.LLST4
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.byte	0x14
	.long	0x327
	.long	.LLST5
	.uleb128 0x1b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x603
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x73
	.uleb128 0x1e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x73
	.long	.LLST6
	.uleb128 0x1f
	.long	0x3e6
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x17
	.long	0x5ce
	.uleb128 0x20
	.long	0x40c
	.long	.LLST7
	.uleb128 0x20
	.long	0x401
	.long	.LLST8
	.uleb128 0x20
	.long	0x3f6
	.long	.LLST8
	.byte	0
	.uleb128 0x21
	.long	0x3e6
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.byte	0x18
	.uleb128 0x20
	.long	0x40c
	.long	.LLST10
	.uleb128 0x20
	.long	0x401
	.long	.LLST11
	.uleb128 0x20
	.long	0x3f6
	.long	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x418
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x1
	.byte	0x1b
	.long	0x631
	.uleb128 0x20
	.long	0x431
	.long	.LLST13
	.uleb128 0x20
	.long	0x425
	.long	.LLST14
	.byte	0
	.uleb128 0x21
	.long	0x418
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.byte	0x1c
	.uleb128 0x20
	.long	0x431
	.long	.LLST15
	.uleb128 0x20
	.long	0x425
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL2
	.long	0x86a
	.long	0x68f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x77
	.sleb128 96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0x77
	.sleb128 128
	.byte	0
	.uleb128 0x22
	.quad	.LVL9
	.long	0x8a7
	.long	0x6af
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x77
	.sleb128 96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x77
	.sleb128 128
	.byte	0
	.uleb128 0x24
	.quad	.LVL12
	.long	0x8c3
	.byte	0
	.uleb128 0x25
	.byte	0x18
	.long	.LASF87
	.long	0x6ea
	.uleb128 0x8
	.long	.LASF63
	.byte	0x1
	.byte	0x9
	.long	0x43e
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x1
	.byte	0xa
	.long	0x43e
	.byte	0x8
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0xb
	.long	0x73
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.long	0x45f
	.uleb128 0x28
	.long	.LASF88
	.byte	0x1
	.byte	0x6
	.long	0x73
	.quad	.LFB1095
	.quad	.LFE1095-.LFB1095
	.uleb128 0x1
	.byte	0x9c
	.long	0x854
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.long	0x82d
	.uleb128 0x1c
	.string	"beg"
	.byte	0x1
	.byte	0x8
	.long	0x2b2
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.string	"end"
	.byte	0x1
	.byte	0x8
	.long	0x2b2
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x9
	.long	0x43e
	.long	.LLST17
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0xa
	.long	0x43e
	.long	.LLST18
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0xb
	.long	0x73
	.long	.LLST19
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0x1f
	.long	0x327
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0x20
	.long	0x327
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x21
	.long	0x37
	.long	.LLST20
	.uleb128 0x22
	.quad	.LVL17
	.long	0x8cc
	.long	0x79a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.quad	.LVL19
	.long	0x8cc
	.long	0x7b2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.quad	.LVL21
	.long	0x8e2
	.long	0x7cf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL23
	.long	0x444
	.long	0x7e7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.byte	0
	.uleb128 0x24
	.quad	.LVL24
	.long	0x902
	.uleb128 0x22
	.quad	.LVL26
	.long	0x8e2
	.long	0x811
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.quad	.LVL29
	.long	0x90b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL22
	.long	0x922
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main._omp_fn.0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF66
	.byte	0x9
	.byte	0xa8
	.long	0x27b
	.uleb128 0x2b
	.long	.LASF67
	.byte	0x9
	.byte	0xa9
	.long	0x27b
	.uleb128 0x2c
	.long	.LASF69
	.long	.LASF72
	.long	0x89a
	.long	0x89a
	.uleb128 0x2d
	.long	0x30
	.uleb128 0x2d
	.long	0x30
	.uleb128 0x2d
	.long	0x30
	.uleb128 0x2d
	.long	0x30
	.uleb128 0x2d
	.long	0x8a1
	.uleb128 0x2d
	.long	0x8a1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF70
	.uleb128 0x6
	.byte	0x8
	.long	0x30
	.uleb128 0x2c
	.long	.LASF71
	.long	.LASF73
	.long	0x89a
	.long	0x8c3
	.uleb128 0x2d
	.long	0x8a1
	.uleb128 0x2d
	.long	0x8a1
	.byte	0
	.uleb128 0x2e
	.long	.LASF76
	.long	.LASF78
	.uleb128 0x2f
	.long	.LASF74
	.byte	0xa
	.value	0x1d1
	.long	0xad
	.long	0x8e2
	.uleb128 0x2d
	.long	0x3e
	.byte	0
	.uleb128 0x30
	.long	.LASF75
	.byte	0x8
	.byte	0x48
	.long	0x73
	.long	0x8fc
	.uleb128 0x2d
	.long	0x8fc
	.uleb128 0x2d
	.long	0x2fc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b2
	.uleb128 0x2e
	.long	.LASF77
	.long	.LASF79
	.uleb128 0x2f
	.long	.LASF80
	.byte	0x9
	.value	0x16a
	.long	0x73
	.long	0x922
	.uleb128 0x2d
	.long	0x2a7
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.long	.LASF89
	.long	.LASF90
	.long	0x93f
	.uleb128 0x2d
	.long	0x93f
	.uleb128 0x2d
	.long	0xad
	.uleb128 0x2d
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x945
	.uleb128 0x33
	.uleb128 0x2d
	.long	0xad
	.byte	0
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL16
	.value	0x1
	.byte	0x53
	.quad	.LVL16
	.quad	.LFE1096
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL1
	.quad	.LVL16
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL16
	.quad	.LFE1096
	.value	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL1
	.quad	.LVL16
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL16
	.quad	.LFE1096
	.value	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x23
	.uleb128 0x10
	.quad	.LVL1
	.quad	.LVL16
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x23
	.uleb128 0x10
	.quad	.LVL16
	.quad	.LFE1096
	.value	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL3
	.quad	.LVL9-1
	.value	0x1
	.byte	0x63
	.quad	.LVL9-1
	.quad	.LVL10
	.value	0x3
	.byte	0x77
	.sleb128 64
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x1
	.byte	0x63
	.quad	.LVL12-1
	.quad	.LVL13
	.value	0x3
	.byte	0x77
	.sleb128 64
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL3
	.quad	.LVL9-1
	.value	0x1
	.byte	0x62
	.quad	.LVL9-1
	.quad	.LVL10
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x1
	.byte	0x62
	.quad	.LVL12-1
	.quad	.LVL13
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL4
	.quad	.LVL5
	.value	0x3
	.byte	0x77
	.sleb128 96
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x50
	.quad	.LVL6
	.quad	.LVL8
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL9-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL5
	.quad	.LVL10
	.value	0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL7
	.quad	.LVL10
	.value	0x40
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x3
	.byte	0x77
	.sleb128 64
	.quad	.LVL13
	.quad	.LFE1096
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LVL15
	.quad	.LFE1096
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	.LVL15
	.quad	.LFE1096
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL18
	.quad	.LVL19-1
	.value	0x1
	.byte	0x50
	.quad	.LVL19-1
	.quad	.LVL24
	.value	0x1
	.byte	0x5c
	.quad	.LVL24
	.quad	.LVL26-1
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL20
	.quad	.LVL21-1
	.value	0x1
	.byte	0x50
	.quad	.LVL21-1
	.quad	.LVL24
	.value	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LVL26-1
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL20
	.quad	.LVL25
	.value	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL30
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL26
	.quad	.LVL27
	.value	0x26
	.byte	0x77
	.sleb128 24
	.byte	0x6
	.byte	0x77
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x412e8480
	.byte	0x1b
	.byte	0x77
	.sleb128 16
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x22
	.byte	0xf7
	.uleb128 0x37
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL28
	.value	0x21
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x412e8480
	.byte	0x1b
	.byte	0x77
	.sleb128 16
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x22
	.byte	0xf7
	.uleb128 0x37
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x26
	.byte	0x77
	.sleb128 24
	.byte	0x6
	.byte	0x77
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x412e8480
	.byte	0x1b
	.byte	0x77
	.sleb128 16
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x22
	.byte	0xf7
	.uleb128 0x37
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB1095
	.quad	.LFE1095-.LFB1095
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB38
	.quad	.LBE38
	.quad	.LBB41
	.quad	.LBE41
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB1095
	.quad	.LFE1095
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"_chain"
.LASF79:
	.string	"GOMP_parallel_end"
.LASF0:
	.string	"double"
.LASF45:
	.string	"_IO_FILE"
.LASF69:
	.string	"__builtin_GOMP_loop_dynamic_start"
.LASF90:
	.string	"GOMP_parallel_start"
.LASF27:
	.string	"_IO_save_end"
.LASF8:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF74:
	.string	"malloc"
.LASF12:
	.string	"sizetype"
.LASF37:
	.string	"_offset"
.LASF21:
	.string	"_IO_write_ptr"
.LASF16:
	.string	"_flags"
.LASF58:
	.string	"__v8sf"
.LASF44:
	.string	"_unused2"
.LASF72:
	.string	"GOMP_loop_dynamic_start"
.LASF76:
	.string	"__builtin_GOMP_loop_end"
.LASF28:
	.string	"_markers"
.LASF18:
	.string	"_IO_read_end"
.LASF53:
	.string	"timezone"
.LASF70:
	.string	"bool"
.LASF51:
	.string	"tv_sec"
.LASF62:
	.string	"_mm256_fmadd_ps"
.LASF63:
	.string	"emem"
.LASF2:
	.string	"float"
.LASF77:
	.string	"__builtin_GOMP_parallel_end"
.LASF56:
	.string	"long long int"
.LASF60:
	.string	"_mm256_loadu_ps"
.LASF36:
	.string	"_lock"
.LASF1:
	.string	"long int"
.LASF11:
	.string	"__off64_t"
.LASF80:
	.string	"printf"
.LASF33:
	.string	"_cur_column"
.LASF55:
	.string	"tz_dsttime"
.LASF71:
	.string	"__builtin_GOMP_loop_dynamic_next"
.LASF49:
	.string	"_pos"
.LASF48:
	.string	"_sbuf"
.LASF32:
	.string	"_old_offset"
.LASF86:
	.string	"main._omp_fn.0"
.LASF4:
	.string	"unsigned char"
.LASF41:
	.string	"__pad4"
.LASF75:
	.string	"gettimeofday"
.LASF7:
	.string	"signed char"
.LASF57:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF46:
	.string	"_IO_marker"
.LASF35:
	.string	"_shortbuf"
.LASF20:
	.string	"_IO_write_base"
.LASF81:
	.ascii	"GNU C++ 4.8.5 20150623 (Red Hat 4.8.5-4) -march=core-avx2 -m"
	.ascii	"cx16 -msahf -mmovbe -maes -mpclmul -mpopcnt -mabm -mno-lwp -"
	.ascii	"mfma -mno-fma4 -mno-xop -mbmi -mbmi2 -mno-tbm"
	.string	" -mavx -mavx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase -mno-rdseed -mno-prfchw -mno-adx -mfxsr -mxsave -mxsaveopt --param l1-cache-size=32 --param l1-cache-line-size=64 --param l2-cache-size=15360 -mtune=generic -g -O3 -fopenmp"
.LASF61:
	.string	"_mm256_set_ps"
.LASF24:
	.string	"_IO_buf_end"
.LASF65:
	.string	"seconds"
.LASF15:
	.string	"char"
.LASF88:
	.string	"main"
.LASF47:
	.string	"_next"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF54:
	.string	"tz_minuteswest"
.LASF42:
	.string	"__pad5"
.LASF5:
	.string	"short unsigned int"
.LASF68:
	.string	"_mm256_storeu_ps"
.LASF3:
	.string	"long unsigned int"
.LASF85:
	.string	"_mm256_setzero_ps"
.LASF22:
	.string	"_IO_write_end"
.LASF13:
	.string	"__time_t"
.LASF30:
	.string	"_fileno"
.LASF87:
	.string	"13.omp_data_s.0"
.LASF50:
	.string	"timeval"
.LASF59:
	.string	"__m256"
.LASF10:
	.string	"__off_t"
.LASF83:
	.string	"/users/ktalaric/HPCKyleTalarico/Kyle_Talarico_assignment_1"
.LASF89:
	.string	"__builtin_GOMP_parallel_start"
.LASF52:
	.string	"tv_usec"
.LASF26:
	.string	"_IO_backup_base"
.LASF66:
	.string	"stdin"
.LASF23:
	.string	"_IO_buf_base"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF19:
	.string	"_IO_read_base"
.LASF34:
	.string	"_vtable_offset"
.LASF64:
	.string	"fmem"
.LASF25:
	.string	"_IO_save_base"
.LASF14:
	.string	"__suseconds_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF82:
	.string	"main.cpp"
.LASF78:
	.string	"GOMP_loop_end"
.LASF67:
	.string	"stdout"
.LASF73:
	.string	"GOMP_loop_dynamic_next"
.LASF84:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-4)"
	.section	.note.GNU-stack,"",@progbits
