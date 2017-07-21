	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-4), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  drystone.c -mtune=generic -march=x86-64
# -auxbase-strip dhry0.S -g -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-debug-strings -fmove-loop-invariants -fpeephole
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstrict-volatile-bitfields -fsync-libcalls
# -ftrapping-math -ftree-coalesce-vars -ftree-cselim -ftree-forwprop
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-slp-vectorize
# -ftree-vect-loop-version -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "drystone.c"
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 129 0
	movl	$0, %eax	#,
	call	Proc0	#
	.loc 1 130 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.comm	IntGlob,4,4
	.comm	BoolGlob,4,4
	.comm	Char1Glob,1,1
	.comm	Char2Glob,1,1
	.comm	Array1Glob,204,32
	.comm	Array2Glob,10404,32
	.comm	PtrGlb,8,8
	.comm	PtrGlbNext,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align 8
.LC1:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB1:
	.loc 1 145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 161 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
	movq	%rax, -32(%rbp)	# tmp99, starttime
	.loc 1 162 0
	movl	$0, %ebx	#, i
	jmp	.L3	#
.L4:
	.loc 1 162 0 is_stmt 0 discriminator 2
	addl	$1, %ebx	#, i
.L3:
	.loc 1 162 0 discriminator 1
	cmpl	$99999999, %ebx	#, i
	jbe	.L4	#,
	.loc 1 163 0 is_stmt 1
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
	subq	-32(%rbp), %rax	# starttime, tmp101
	movq	%rax, -40(%rbp)	# tmp101, nulltime
	.loc 1 176 0
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, PtrGlbNext(%rip)	# PtrGlbNext.0, PtrGlbNext
	.loc 1 177 0
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, PtrGlb(%rip)	# PtrGlb.1, PtrGlb
	.loc 1 178 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.2
	movq	PtrGlbNext(%rip), %rdx	# PtrGlbNext, PtrGlbNext.3
	movq	%rdx, (%rax)	# PtrGlbNext.3, PtrGlb.2_11->PtrComp
	.loc 1 179 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.4
	movl	$0, 8(%rax)	#, PtrGlb.4_13->Discr
	.loc 1 180 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.5
	movl	$2, 12(%rax)	#, PtrGlb.5_14->EnumComp
	.loc 1 181 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.6
	movl	$40, 16(%rax)	#, PtrGlb.6_15->IntComp
	.loc 1 182 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.7
	addq	$20, %rax	#, D.2046
	movabsq	$5642821575076104260, %rcx	#, tmp123
	movq	%rcx, (%rax)	# tmp123, MEM[(void *)_17]
	movabsq	$4706902966564560965, %rcx	#, tmp124
	movq	%rcx, 8(%rax)	# tmp124, MEM[(void *)_17]
	movabsq	$2325349785699101773, %rbx	#, tmp125
	movq	%rbx, 16(%rax)	# tmp125, MEM[(void *)_17]
	movl	$1230132307, 24(%rax)	#, MEM[(void *)_17]
	movw	$18254, 28(%rax)	#, MEM[(void *)_17]
	movb	$0, 30(%rax)	#, MEM[(void *)_17]
	.loc 1 188 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
	movq	%rax, -32(%rbp)	# tmp104, starttime
	.loc 1 193 0
	movl	$0, %ebx	#, i
	jmp	.L5	#
.L11:
.LBB2:
	.loc 1 196 0
	movl	$0, %eax	#,
	call	Proc5	#
	.loc 1 197 0
	movl	$0, %eax	#,
	call	Proc4	#
	.loc 1 198 0
	movl	$2, -60(%rbp)	#, IntLoc1
	.loc 1 199 0
	movl	$3, -44(%rbp)	#, IntLoc2
	.loc 1 200 0
	movabsq	$5642821575076104260, %rax	#, tmp126
	movq	%rax, -144(%rbp)	# tmp126, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp127
	movq	%rax, -136(%rbp)	# tmp127, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp128
	movq	%rax, -128(%rbp)	# tmp128, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, -120(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	$18254, -116(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, -114(%rbp)	#, MEM[(char * {ref-all})&String2Loc]
	.loc 1 201 0
	movl	$1, -68(%rbp)	#, EnumLoc
	.loc 1 202 0
	leaq	-144(%rbp), %rdx	#, tmp105
	leaq	-112(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	Func2	#
	testl	%eax, %eax	# D.2047
	sete	%al	#, D.2048
	movzbl	%al, %eax	# D.2048, BoolGlob.8
	movl	%eax, BoolGlob(%rip)	# BoolGlob.8, BoolGlob
	.loc 1 203 0
	jmp	.L6	#
.L7:
.LBB3:
	.loc 1 205 0
	movl	-60(%rbp), %edx	# IntLoc1, IntLoc1.9
	movl	%edx, %eax	# IntLoc1.9, tmp107
	sall	$2, %eax	#, tmp107
	addl	%edx, %eax	# IntLoc1.9, D.2047
	subl	-44(%rbp), %eax	# IntLoc2, IntLoc3.10
	movl	%eax, -64(%rbp)	# IntLoc3.10, IntLoc3
	.loc 1 206 0
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.11
	leaq	-64(%rbp), %rdx	#, tmp108
	movl	-44(%rbp), %ecx	# IntLoc2, tmp109
	movl	%ecx, %esi	# tmp109,
	movl	%eax, %edi	# IntLoc1.11,
	movl	$0, %eax	#,
	call	Proc7	#
	.loc 1 207 0
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.12
	addl	$1, %eax	#, IntLoc1.13
	movl	%eax, -60(%rbp)	# IntLoc1.13, IntLoc1
.L6:
.LBE3:
	.loc 1 203 0 discriminator 1
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.14
	cmpl	-44(%rbp), %eax	# IntLoc2, IntLoc1.14
	jl	.L7	#,
	.loc 1 209 0
	movl	-64(%rbp), %edx	# IntLoc3, IntLoc3.15
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.16
	movl	%edx, %ecx	# IntLoc3.15,
	movl	%eax, %edx	# IntLoc1.16,
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	movl	$0, %eax	#,
	call	Proc8	#
	.loc 1 210 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.17
	movq	%rax, %rdi	# PtrGlb.17,
	movl	$0, %eax	#,
	call	Proc1	#
	.loc 1 211 0
	movb	$65, -17(%rbp)	#, CharIndex
	jmp	.L8	#
.L10:
	.loc 1 212 0
	movsbl	-17(%rbp), %eax	# CharIndex, D.2047
	movl	$67, %esi	#,
	movl	%eax, %edi	# D.2047,
	movl	$0, %eax	#,
	call	Func1	#
	movl	-68(%rbp), %edx	# EnumLoc, EnumLoc.18
	cmpl	%edx, %eax	# EnumLoc.18, D.2049
	jne	.L9	#,
	.loc 1 213 0
	leaq	-68(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Proc6	#
.L9:
	.loc 1 211 0
	addb	$1, -17(%rbp)	#, CharIndex
.L8:
	.loc 1 211 0 is_stmt 0 discriminator 1
	movzbl	Char2Glob(%rip), %eax	# Char2Glob, Char2Glob.19
	cmpb	%al, -17(%rbp)	# Char2Glob.19, CharIndex
	jle	.L10	#,
	.loc 1 214 0 is_stmt 1
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.20
	imull	-44(%rbp), %eax	# IntLoc2, IntLoc3.21
	movl	%eax, -64(%rbp)	# IntLoc3.21, IntLoc3
	.loc 1 215 0
	movl	-64(%rbp), %eax	# IntLoc3, IntLoc3.22
	movl	-60(%rbp), %ecx	# IntLoc1, IntLoc1.23
	cltd
	idivl	%ecx	# IntLoc1.23
	movl	%eax, -44(%rbp)	# tmp111, IntLoc2
	.loc 1 216 0
	movl	-64(%rbp), %eax	# IntLoc3, IntLoc3.24
	subl	-44(%rbp), %eax	# IntLoc2, D.2047
	movl	%eax, %edx	# D.2047, D.2047
	movl	%edx, %eax	# D.2047, tmp113
	sall	$3, %eax	#, tmp114
	subl	%edx, %eax	# D.2047, D.2047
	movl	%eax, %edx	# D.2047, D.2047
	movl	-60(%rbp), %eax	# IntLoc1, IntLoc1.25
	subl	%eax, %edx	# IntLoc1.25, tmp115
	movl	%edx, %eax	# tmp115, tmp115
	movl	%eax, -44(%rbp)	# tmp115, IntLoc2
	.loc 1 217 0
	leaq	-60(%rbp), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	Proc2	#
.LBE2:
	.loc 1 193 0
	addl	$1, %ebx	#, i
.L5:
	.loc 1 193 0 is_stmt 0 discriminator 1
	cmpl	$99999999, %ebx	#, i
	jbe	.L11	#,
	.loc 1 224 0 is_stmt 1
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
	subq	-32(%rbp), %rax	# starttime, D.2045
	subq	-40(%rbp), %rax	# nulltime, tmp118
	movq	%rax, -56(%rbp)	# tmp118, benchtime
	.loc 1 225 0
	movq	-56(%rbp), %rax	# benchtime, tmp119
	movq	%rax, %rdx	# tmp119,
	movl	$100000000, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 226 0
	movl	$100000000, %eax	#, tmp122
	cqto
	idivq	-56(%rbp)	# benchtime
	movq	%rax, %rsi	# D.2045,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 237 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	Proc0, .-Proc0
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# PtrParIn, PtrParIn
	.loc 1 244 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp82
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.26
	movq	(%rdx), %rcx	# *PtrGlb.26_3, tmp83
	movq	%rcx, (%rax)	# tmp83, *_2
	movq	8(%rdx), %rcx	# *PtrGlb.26_3, tmp84
	movq	%rcx, 8(%rax)	# tmp84, *_2
	movq	16(%rdx), %rcx	# *PtrGlb.26_3, tmp85
	movq	%rcx, 16(%rax)	# tmp85, *_2
	movq	24(%rdx), %rcx	# *PtrGlb.26_3, tmp86
	movq	%rcx, 24(%rax)	# tmp86, *_2
	movq	32(%rdx), %rcx	# *PtrGlb.26_3, tmp87
	movq	%rcx, 32(%rax)	# tmp87, *_2
	movq	40(%rdx), %rcx	# *PtrGlb.26_3, tmp88
	movq	%rcx, 40(%rax)	# tmp88, *_2
	movq	48(%rdx), %rdx	# *PtrGlb.26_3, tmp89
	movq	%rdx, 48(%rax)	# tmp89, *_2
	.loc 1 245 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp90
	movl	$5, 16(%rax)	#, PtrParIn_1(D)->IntComp
	.loc 1 246 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp91
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movq	-8(%rbp), %rdx	# PtrParIn, tmp92
	movl	16(%rdx), %edx	# PtrParIn_1(D)->IntComp, D.2054
	movl	%edx, 16(%rax)	# D.2054, _4->IntComp
	.loc 1 247 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp93
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movq	-8(%rbp), %rdx	# PtrParIn, tmp94
	movq	(%rdx), %rdx	# PtrParIn_1(D)->PtrComp, D.2053
	movq	%rdx, (%rax)	# D.2053, _6->PtrComp
	.loc 1 248 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp95
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movq	(%rax), %rax	# _8->PtrComp, D.2053
	movq	%rax, %rdi	# D.2053,
	movl	$0, %eax	#,
	call	Proc3	#
	.loc 1 249 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp96
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movl	8(%rax), %eax	# _10->Discr, D.2055
	testl	%eax, %eax	# D.2055
	jne	.L13	#,
.LBB4:
	.loc 1 251 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp97
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movl	$6, 16(%rax)	#, _12->IntComp
	.loc 1 252 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp98
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	leaq	12(%rax), %rdx	#, D.2056
	movq	-8(%rbp), %rax	# PtrParIn, tmp99
	movl	12(%rax), %eax	# PtrParIn_1(D)->EnumComp, D.2055
	movq	%rdx, %rsi	# D.2056,
	movl	%eax, %edi	# D.2055,
	movl	$0, %eax	#,
	call	Proc6	#
	.loc 1 253 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp100
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.27
	movq	(%rdx), %rdx	# PtrGlb.27_17->PtrComp, D.2053
	movq	%rdx, (%rax)	# D.2053, _16->PtrComp
	.loc 1 254 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp101
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	leaq	16(%rax), %rdx	#, D.2057
	movq	-8(%rbp), %rax	# PtrParIn, tmp102
	movq	(%rax), %rax	# PtrParIn_1(D)->PtrComp, D.2053
	movl	16(%rax), %eax	# _21->IntComp, D.2054
	movl	$10, %esi	#,
	movl	%eax, %edi	# D.2054,
	movl	$0, %eax	#,
	call	Proc7	#
.LBE4:
	jmp	.L15	#
.L13:
	.loc 1 257 0
	movq	-8(%rbp), %rax	# PtrParIn, tmp103
	movq	(%rax), %rdx	# PtrParIn_1(D)->PtrComp, D.2053
	movq	-8(%rbp), %rax	# PtrParIn, tmp104
	movq	(%rdx), %rcx	# *_23, tmp105
	movq	%rcx, (%rax)	# tmp105, *PtrParIn_1(D)
	movq	8(%rdx), %rcx	# *_23, tmp106
	movq	%rcx, 8(%rax)	# tmp106, *PtrParIn_1(D)
	movq	16(%rdx), %rcx	# *_23, tmp107
	movq	%rcx, 16(%rax)	# tmp107, *PtrParIn_1(D)
	movq	24(%rdx), %rcx	# *_23, tmp108
	movq	%rcx, 24(%rax)	# tmp108, *PtrParIn_1(D)
	movq	32(%rdx), %rcx	# *_23, tmp109
	movq	%rcx, 32(%rax)	# tmp109, *PtrParIn_1(D)
	movq	40(%rdx), %rcx	# *_23, tmp110
	movq	%rcx, 40(%rax)	# tmp110, *PtrParIn_1(D)
	movq	48(%rdx), %rdx	# *_23, tmp111
	movq	%rdx, 48(%rax)	# tmp111, *PtrParIn_1(D)
.L15:
	.loc 1 260 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# IntParIO, IntParIO
	.loc 1 268 0
	movq	-24(%rbp), %rax	# IntParIO, tmp64
	movl	(%rax), %eax	# *IntParIO_5(D), D.2058
	addl	$10, %eax	#, tmp65
	movl	%eax, -4(%rbp)	# tmp65, IntLoc
.L20:
	.loc 1 271 0
	movzbl	Char1Glob(%rip), %eax	# Char1Glob, Char1Glob.28
	cmpb	$65, %al	#, Char1Glob.28
	jne	.L17	#,
	.loc 1 273 0
	subl	$1, -4(%rbp)	#, IntLoc
	.loc 1 274 0
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.29
	movl	-4(%rbp), %edx	# IntLoc, tmp66
	subl	%eax, %edx	# IntGlob.29, D.2058
	movq	-24(%rbp), %rax	# IntParIO, tmp67
	movl	%edx, (%rax)	# D.2058, *IntParIO_5(D)
	.loc 1 275 0
	movl	$0, -8(%rbp)	#, EnumLoc
.L17:
	.loc 1 277 0
	cmpl	$0, -8(%rbp)	#, EnumLoc
	jne	.L18	#,
	.loc 1 278 0
	jmp	.L22	#
.L18:
	.loc 1 279 0
	jmp	.L20	#
.L22:
	.loc 1 280 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Proc2, .-Proc2
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB4:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# PtrParOut, PtrParOut
	.loc 1 285 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.30
	testq	%rax, %rax	# PtrGlb.30
	je	.L24	#,
	.loc 1 286 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.31
	movq	(%rax), %rdx	# PtrGlb.31_2->PtrComp, D.2059
	movq	-8(%rbp), %rax	# PtrParOut, tmp66
	movq	%rdx, (%rax)	# D.2059, *PtrParOut_4(D)
	jmp	.L25	#
.L24:
	.loc 1 288 0
	movl	$100, IntGlob(%rip)	#, IntGlob
.L25:
	.loc 1 289 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.32
	leaq	16(%rax), %rdx	#, D.2060
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.33
	movl	%eax, %esi	# IntGlob.33,
	movl	$10, %edi	#,
	movl	$0, %eax	#,
	call	Proc7	#
	.loc 1 290 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Proc3, .-Proc3
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB5:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 296 0
	movzbl	Char1Glob(%rip), %eax	# Char1Glob, Char1Glob.34
	cmpb	$65, %al	#, Char1Glob.34
	sete	%al	#, D.2061
	movzbl	%al, %eax	# D.2061, tmp63
	movl	%eax, -4(%rbp)	# tmp63, BoolLoc
	.loc 1 297 0
	movl	BoolGlob(%rip), %eax	# BoolGlob, BoolGlob.35
	orl	%eax, -4(%rbp)	# BoolGlob.35, BoolLoc
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	.loc 1 299 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Proc4, .-Proc4
	.globl	Proc5
	.type	Proc5, @function
Proc5:
.LFB6:
	.loc 1 302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 303 0
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 304 0
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	.loc 1 305 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Proc5, .-Proc5
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB7:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# EnumParIn, EnumParIn
	movq	%rsi, -16(%rbp)	# EnumParOut, EnumParOut
	.loc 1 313 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp62
	movl	-4(%rbp), %edx	# EnumParIn, tmp63
	movl	%edx, (%rax)	# tmp63, *EnumParOut_1(D)
	.loc 1 314 0
	movl	-4(%rbp), %eax	# EnumParIn, tmp64
	movl	%eax, %edi	# tmp64,
	movl	$0, %eax	#,
	call	Func3	#
	testl	%eax, %eax	# D.2062
	jne	.L29	#,
	.loc 1 315 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp65
	movl	$3, (%rax)	#, *EnumParOut_1(D)
.L29:
	.loc 1 316 0
	cmpl	$4, -4(%rbp)	#, EnumParIn
	ja	.L39	#,
	movl	-4(%rbp), %eax	# EnumParIn, tmp66
	movq	.L32(,%rax,8), %rax	#, tmp67
	jmp	*%rax	# tmp67
	.section	.rodata
	.align 8
	.align 4
.L32:
	.quad	.L31
	.quad	.L33
	.quad	.L34
	.quad	.L40
	.quad	.L36
	.text
.L31:
	.loc 1 318 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp68
	movl	$0, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L33:
	.loc 1 319 0
	movl	IntGlob(%rip), %eax	# IntGlob, IntGlob.36
	cmpl	$100, %eax	#, IntGlob.36
	jle	.L37	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# EnumParOut, tmp69
	movl	$0, (%rax)	#, *EnumParOut_1(D)
	.loc 1 321 0 is_stmt 1 discriminator 1
	jmp	.L39	#
.L37:
	.loc 1 320 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp70
	movl	$3, (%rax)	#, *EnumParOut_1(D)
	.loc 1 321 0
	jmp	.L39	#
.L34:
	.loc 1 322 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp71
	movl	$1, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L36:
	.loc 1 324 0
	movq	-16(%rbp), %rax	# EnumParOut, tmp72
	movl	$2, (%rax)	#, *EnumParOut_1(D)
	jmp	.L39	#
.L40:
	.loc 1 323 0
	nop
.L39:
	.loc 1 326 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB8:
	.loc 1 332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# IntParI1, IntParI1
	movl	%esi, -24(%rbp)	# IntParI2, IntParI2
	movq	%rdx, -32(%rbp)	# IntParOut, IntParOut
	.loc 1 335 0
	movl	-20(%rbp), %eax	# IntParI1, tmp64
	addl	$2, %eax	#, tmp63
	movl	%eax, -4(%rbp)	# tmp63, IntLoc
	.loc 1 336 0
	movl	-4(%rbp), %eax	# IntLoc, tmp65
	movl	-24(%rbp), %edx	# IntParI2, tmp66
	addl	%eax, %edx	# tmp65, D.2063
	movq	-32(%rbp), %rax	# IntParOut, tmp67
	movl	%edx, (%rax)	# D.2063, *IntParOut_5(D)
	.loc 1 337 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Proc7, .-Proc7
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB9:
	.loc 1 344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Array1Par, Array1Par
	movq	%rsi, -32(%rbp)	# Array2Par, Array2Par
	movl	%edx, -36(%rbp)	# IntParI1, IntParI1
	movl	%ecx, -40(%rbp)	# IntParI2, IntParI2
	.loc 1 348 0
	movl	-36(%rbp), %eax	# IntParI1, tmp96
	addl	$5, %eax	#, tmp95
	movl	%eax, -8(%rbp)	# tmp95, IntLoc
	.loc 1 349 0
	movl	-8(%rbp), %eax	# IntLoc, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2064
	movq	-24(%rbp), %rax	# Array1Par, tmp98
	addq	%rax, %rdx	# tmp98, D.2065
	movl	-40(%rbp), %eax	# IntParI2, tmp99
	movl	%eax, (%rdx)	# tmp99, *_7
	.loc 1 350 0
	movl	-8(%rbp), %eax	# IntLoc, tmp100
	cltq
	addq	$1, %rax	#, D.2066
	leaq	0(,%rax,4), %rdx	#, D.2066
	movq	-24(%rbp), %rax	# Array1Par, tmp101
	addq	%rax, %rdx	# tmp101, D.2065
	movl	-8(%rbp), %eax	# IntLoc, tmp102
	cltq
	leaq	0(,%rax,4), %rcx	#, D.2064
	movq	-24(%rbp), %rax	# Array1Par, tmp103
	addq	%rcx, %rax	# D.2064, D.2065
	movl	(%rax), %eax	# *_15, D.2067
	movl	%eax, (%rdx)	# D.2067, *_12
	.loc 1 351 0
	movl	-8(%rbp), %eax	# IntLoc, tmp104
	cltq
	addq	$30, %rax	#, D.2066
	leaq	0(,%rax,4), %rdx	#, D.2066
	movq	-24(%rbp), %rax	# Array1Par, tmp105
	addq	%rax, %rdx	# tmp105, D.2065
	movl	-8(%rbp), %eax	# IntLoc, tmp106
	movl	%eax, (%rdx)	# tmp106, *_20
	.loc 1 352 0
	movl	-8(%rbp), %eax	# IntLoc, tmp107
	movl	%eax, -4(%rbp)	# tmp107, IntIndex
	jmp	.L43	#
.L44:
	.loc 1 353 0 discriminator 2
	movl	-8(%rbp), %eax	# IntLoc, tmp108
	cltq
	imulq	$204, %rax, %rdx	#, D.2064, D.2064
	movq	-32(%rbp), %rax	# Array2Par, tmp109
	leaq	(%rdx,%rax), %rcx	#, D.2068
	movl	-4(%rbp), %eax	# IntIndex, tmp111
	cltq
	movl	-8(%rbp), %edx	# IntLoc, tmp112
	movl	%edx, (%rcx,%rax,4)	# tmp112, *_26
	.loc 1 352 0 discriminator 2
	addl	$1, -4(%rbp)	#, IntIndex
.L43:
	.loc 1 352 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# IntLoc, tmp113
	addl	$1, %eax	#, D.2067
	cmpl	-4(%rbp), %eax	# IntIndex, D.2067
	jge	.L44	#,
	.loc 1 354 0 is_stmt 1
	movl	-8(%rbp), %eax	# IntLoc, tmp114
	cltq
	imulq	$204, %rax, %rdx	#, D.2064, D.2064
	movq	-32(%rbp), %rax	# Array2Par, tmp115
	addq	%rdx, %rax	# D.2064, D.2068
	movl	-8(%rbp), %edx	# IntLoc, tmp116
	subl	$1, %edx	#, D.2067
	movslq	%edx, %rcx	# D.2067, tmp117
	movl	(%rax,%rcx,4), %ecx	# *_30, D.2067
	addl	$1, %ecx	#, D.2067
	movslq	%edx, %rdx	# D.2067, tmp118
	movl	%ecx, (%rax,%rdx,4)	# D.2067, *_30
	.loc 1 355 0
	movl	-8(%rbp), %eax	# IntLoc, tmp119
	cltq
	imulq	$204, %rax, %rax	#, D.2064, D.2064
	leaq	4080(%rax), %rdx	#, D.2066
	movq	-32(%rbp), %rax	# Array2Par, tmp120
	leaq	(%rdx,%rax), %rcx	#, D.2068
	movl	-8(%rbp), %eax	# IntLoc, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	#, D.2064
	movq	-24(%rbp), %rax	# Array1Par, tmp122
	addq	%rdx, %rax	# D.2064, D.2065
	movl	(%rax), %edx	# *_40, D.2067
	movl	-8(%rbp), %eax	# IntLoc, tmp124
	cltq
	movl	%edx, (%rcx,%rax,4)	# D.2067, *_37
	.loc 1 356 0
	movl	$5, IntGlob(%rip)	#, IntGlob
	.loc 1 357 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Proc8, .-Proc8
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB10:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %edx	# CharPar1, tmp61
	movl	%esi, %eax	# CharPar2, tmp62
	movb	%dl, -20(%rbp)	# tmp61, CharPar1
	movb	%al, -24(%rbp)	# tmp62, CharPar2
	.loc 1 366 0
	movzbl	-20(%rbp), %eax	# CharPar1, tmp63
	movb	%al, -1(%rbp)	# tmp63, CharLoc1
	.loc 1 367 0
	movzbl	-1(%rbp), %eax	# CharLoc1, tmp64
	movb	%al, -2(%rbp)	# tmp64, CharLoc2
	.loc 1 368 0
	movzbl	-2(%rbp), %eax	# CharLoc2, tmp65
	cmpb	-24(%rbp), %al	# CharPar2, tmp65
	je	.L46	#,
	.loc 1 369 0
	movl	$0, %eax	#, D.2069
	jmp	.L47	#
.L46:
	.loc 1 371 0
	movl	$1, %eax	#, D.2069
.L47:
	.loc 1 372 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Func1, .-Func1
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB11:
	.loc 1 377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# StrParI1, StrParI1
	movq	%rsi, -32(%rbp)	# StrParI2, StrParI2
	.loc 1 381 0
	movl	$1, -4(%rbp)	#, IntLoc
	.loc 1 382 0
	jmp	.L49	#
.L50:
	.loc 1 383 0
	movl	-4(%rbp), %eax	# IntLoc, tmp72
	cltq
	leaq	1(%rax), %rdx	#, D.2071
	movq	-32(%rbp), %rax	# StrParI2, tmp73
	addq	%rdx, %rax	# D.2071, D.2072
	movzbl	(%rax), %eax	# *_10, D.2073
	movsbl	%al, %edx	# D.2073, D.2074
	movl	-4(%rbp), %eax	# IntLoc, tmp74
	movslq	%eax, %rcx	# tmp74, D.2071
	movq	-24(%rbp), %rax	# StrParI1, tmp75
	addq	%rcx, %rax	# D.2071, D.2072
	movzbl	(%rax), %eax	# *_15, D.2073
	movsbl	%al, %eax	# D.2073, D.2074
	movl	%edx, %esi	# D.2074,
	movl	%eax, %edi	# D.2074,
	movl	$0, %eax	#,
	call	Func1	#
	testl	%eax, %eax	# D.2075
	jne	.L49	#,
	.loc 1 385 0
	movb	$65, -5(%rbp)	#, CharLoc
	.loc 1 386 0
	addl	$1, -4(%rbp)	#, IntLoc
.L49:
	.loc 1 382 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, IntLoc
	jle	.L50	#,
	.loc 1 388 0
	cmpb	$86, -5(%rbp)	#, CharLoc
	jle	.L51	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	cmpb	$90, -5(%rbp)	#, CharLoc
	jg	.L51	#,
	.loc 1 389 0 is_stmt 1
	movl	$7, -4(%rbp)	#, IntLoc
.L51:
	.loc 1 390 0
	cmpb	$88, -5(%rbp)	#, CharLoc
	jne	.L52	#,
	.loc 1 391 0
	movl	$1, %eax	#, D.2070
	jmp	.L53	#
.L52:
.LBB5:
	.loc 1 394 0
	movq	-32(%rbp), %rdx	# StrParI2, tmp76
	movq	-24(%rbp), %rax	# StrParI1, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	strcmp	#
	testl	%eax, %eax	# D.2074
	jle	.L54	#,
	.loc 1 396 0
	addl	$7, -4(%rbp)	#, IntLoc
	.loc 1 397 0
	movl	$1, %eax	#, D.2070
	jmp	.L53	#
.L54:
	.loc 1 400 0
	movl	$0, %eax	#, D.2070
.L53:
.LBE5:
	.loc 1 402 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Func2, .-Func2
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# EnumParIn, EnumParIn
	.loc 1 409 0
	movl	-20(%rbp), %eax	# EnumParIn, tmp61
	movl	%eax, -4(%rbp)	# tmp61, EnumLoc
	.loc 1 410 0
	cmpl	$2, -4(%rbp)	#, EnumLoc
	jne	.L56	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.2076
	jmp	.L57	#
.L56:
	.loc 1 411 0 is_stmt 1
	movl	$0, %eax	#, D.2076
.L57:
	.loc 1 412 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Func3, .-Func3
.Letext0:
	.file 2 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7be
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.long	.LASF83
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x1
	.byte	0x58
	.long	0x54
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.uleb128 0x3
	.long	.LASF2
	.sleb128 2
	.uleb128 0x3
	.long	.LASF3
	.sleb128 3
	.uleb128 0x3
	.long	.LASF4
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF5
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x5b
	.long	0x6a
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x5c
	.long	0x6a
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0x5d
	.long	0x87
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x5e
	.long	0x99
	.uleb128 0x7
	.long	0x87
	.long	0xa9
	.uleb128 0x8
	.long	0xa9
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x5f
	.long	0xbb
	.uleb128 0x7
	.long	0x6a
	.long	0xcb
	.uleb128 0x8
	.long	0xa9
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x60
	.long	0xd6
	.uleb128 0x7
	.long	0x6a
	.long	0xec
	.uleb128 0x8
	.long	0xa9
	.byte	0x32
	.uleb128 0x8
	.long	0xa9
	.byte	0x32
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x38
	.byte	0x1
	.byte	0x62
	.long	0x135
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x64
	.long	0x135
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0x65
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x66
	.long	0x54
	.byte	0xc
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x67
	.long	0x71
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x68
	.long	0x8e
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xec
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x6b
	.long	0xec
	.uleb128 0x4
	.long	.LASF20
	.byte	0x1
	.byte	0x6c
	.long	0x151
	.uleb128 0xb
	.byte	0x8
	.long	0x13b
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x6d
	.long	0x6a
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.byte	0x7f
	.long	0x6a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x191
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x81
	.long	0x6a
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x90
	.long	0x6a
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x348
	.uleb128 0xf
	.long	.LASF24
	.byte	0x1
	.byte	0x92
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x93
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x94
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.byte	0x95
	.long	0x87
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0x96
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x97
	.long	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x98
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x99
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x348
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x9d
	.long	0x34f
	.long	0x240
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0x9e
	.long	0x34f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.byte	0x9f
	.long	0x34f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0xa0
	.long	0x34f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF34
	.byte	0x2
	.byte	0
	.long	0x356
	.long	0x280
	.uleb128 0x14
	.long	0x358
	.byte	0
	.uleb128 0x13
	.long	.LASF35
	.byte	0x2
	.byte	0
	.long	0x35f
	.long	0x29a
	.uleb128 0x14
	.long	0x35f
	.uleb128 0x14
	.long	0x365
	.byte	0
	.uleb128 0x13
	.long	.LASF36
	.byte	0x2
	.byte	0
	.long	0x6a
	.long	0x2b0
	.uleb128 0x14
	.long	0x365
	.uleb128 0xe
	.byte	0
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0xc4
	.long	0x6a
	.long	0x2d2
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.byte	0xc5
	.long	0x6a
	.long	0x2e3
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xd1
	.long	0x6a
	.long	0x2f4
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0xd2
	.long	0x6a
	.long	0x305
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0xd5
	.long	0x6a
	.long	0x316
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0xd9
	.long	0x6a
	.long	0x327
	.uleb128 0xe
	.byte	0
	.uleb128 0x15
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xb
	.byte	0x8
	.long	0x87
	.uleb128 0xb
	.byte	0x8
	.long	0x36b
	.uleb128 0x17
	.long	0x87
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.byte	0xef
	.long	0x6a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e1
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.byte	0xf0
	.long	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0xf8
	.long	0x6a
	.long	0x3b0
	.uleb128 0xe
	.byte	0
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0xd5
	.long	0x6a
	.long	0x3d2
	.uleb128 0xe
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF43
	.byte	0x1
	.value	0x106
	.long	0x6a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x431
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.value	0x107
	.long	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x109
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x1
	.value	0x10a
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x71
	.uleb128 0x1c
	.long	.LASF48
	.byte	0x1
	.value	0x11a
	.long	0x6a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x476
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x1
	.value	0x11b
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x146
	.uleb128 0x19
	.long	.LASF39
	.byte	0x1
	.value	0x124
	.long	0x6a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ae
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.value	0x126
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF38
	.byte	0x1
	.value	0x12d
	.long	0x6a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF42
	.byte	0x1
	.value	0x135
	.long	0x6a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.value	0x136
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.value	0x137
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x54
	.uleb128 0x19
	.long	.LASF44
	.byte	0x1
	.value	0x148
	.long	0x6a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x572
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.value	0x149
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF57
	.byte	0x1
	.value	0x14a
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF58
	.byte	0x1
	.value	0x14b
	.long	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x14d
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF40
	.byte	0x1
	.value	0x153
	.long	0x6a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ef
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.value	0x154
	.long	0x5ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.value	0x155
	.long	0x5f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.value	0x156
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF57
	.byte	0x1
	.value	0x157
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x159
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x15a
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x6a
	.uleb128 0xb
	.byte	0x8
	.long	0xbb
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x167
	.long	0x54
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x168
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x169
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x1
	.value	0x16b
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.value	0x16c
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x176
	.long	0x157
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d8
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x177
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.value	0x178
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.value	0x17a
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.value	0x17b
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x15
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xd
	.long	.LASF71
	.byte	0x2
	.byte	0
	.long	0x6a
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.value	0x194
	.long	0x157
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x719
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.value	0x195
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x1
	.value	0x197
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF73
	.byte	0x1
	.byte	0x87
	.long	0x6a
	.uleb128 0x9
	.byte	0x3
	.quad	IntGlob
	.uleb128 0x1e
	.long	.LASF74
	.byte	0x1
	.byte	0x88
	.long	0x157
	.uleb128 0x9
	.byte	0x3
	.quad	BoolGlob
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x1
	.byte	0x89
	.long	0x87
	.uleb128 0x9
	.byte	0x3
	.quad	Char1Glob
	.uleb128 0x1e
	.long	.LASF76
	.byte	0x1
	.byte	0x8a
	.long	0x87
	.uleb128 0x9
	.byte	0x3
	.quad	Char2Glob
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0x8b
	.long	0xb0
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.byte	0x8c
	.long	0xcb
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x1e
	.long	.LASF79
	.byte	0x1
	.byte	0x8d
	.long	0x146
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlb
	.uleb128 0x1e
	.long	.LASF80
	.byte	0x1
	.byte	0x8e
	.long	0x146
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlbNext
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"IntGlob"
.LASF78:
	.string	"Array2Glob"
.LASF68:
	.string	"StrParI1"
.LASF76:
	.string	"Char2Glob"
.LASF60:
	.string	"Array2Par"
.LASF10:
	.string	"String30"
.LASF52:
	.string	"PtrParOut"
.LASF82:
	.string	"drystone.c"
.LASF81:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-4) -mtune=generic -march=x86-64 -g"
.LASF84:
	.string	"Record"
.LASF69:
	.string	"StrParI2"
.LASF25:
	.string	"IntLoc2"
.LASF61:
	.string	"IntIndex"
.LASF45:
	.string	"unsigned int"
.LASF55:
	.string	"EnumParOut"
.LASF40:
	.string	"Proc8"
.LASF20:
	.string	"RecordPtr"
.LASF35:
	.string	"strcpy"
.LASF79:
	.string	"PtrGlb"
.LASF19:
	.string	"RecordType"
.LASF47:
	.string	"long unsigned int"
.LASF65:
	.string	"CharLoc1"
.LASF23:
	.string	"Proc0"
.LASF51:
	.string	"IntLoc"
.LASF32:
	.string	"benchtime"
.LASF43:
	.string	"Proc2"
.LASF56:
	.string	"IntParI1"
.LASF28:
	.string	"EnumLoc"
.LASF39:
	.string	"Proc4"
.LASF58:
	.string	"IntParOut"
.LASF7:
	.string	"OneToFifty"
.LASF5:
	.string	"Enumeration"
.LASF42:
	.string	"Proc6"
.LASF44:
	.string	"Proc7"
.LASF22:
	.string	"main"
.LASF18:
	.string	"StringComp"
.LASF63:
	.string	"CharPar1"
.LASF54:
	.string	"EnumParIn"
.LASF70:
	.string	"CharLoc"
.LASF62:
	.string	"Func1"
.LASF67:
	.string	"Func2"
.LASF33:
	.string	"nulltime"
.LASF6:
	.string	"OneToThirty"
.LASF31:
	.string	"starttime"
.LASF49:
	.string	"PtrParIn"
.LASF57:
	.string	"IntParI2"
.LASF8:
	.string	"CapitalLetter"
.LASF74:
	.string	"BoolGlob"
.LASF37:
	.string	"time"
.LASF29:
	.string	"String1Loc"
.LASF71:
	.string	"strcmp"
.LASF11:
	.string	"sizetype"
.LASF41:
	.string	"Proc1"
.LASF30:
	.string	"String2Loc"
.LASF48:
	.string	"Proc3"
.LASF27:
	.string	"CharIndex"
.LASF38:
	.string	"Proc5"
.LASF9:
	.string	"char"
.LASF13:
	.string	"Array2Dim"
.LASF15:
	.string	"Discr"
.LASF66:
	.string	"CharLoc2"
.LASF36:
	.string	"printf"
.LASF0:
	.string	"Ident1"
.LASF1:
	.string	"Ident2"
.LASF2:
	.string	"Ident3"
.LASF3:
	.string	"Ident4"
.LASF4:
	.string	"Ident5"
.LASF16:
	.string	"EnumComp"
.LASF75:
	.string	"Char1Glob"
.LASF59:
	.string	"Array1Par"
.LASF14:
	.string	"PtrComp"
.LASF50:
	.string	"IntParIO"
.LASF12:
	.string	"Array1Dim"
.LASF46:
	.string	"long int"
.LASF80:
	.string	"PtrGlbNext"
.LASF17:
	.string	"IntComp"
.LASF83:
	.string	"/users/ktalaric/HPCKyleTalarico/dhrystone"
.LASF64:
	.string	"CharPar2"
.LASF53:
	.string	"BoolLoc"
.LASF24:
	.string	"IntLoc1"
.LASF21:
	.string	"boolean"
.LASF26:
	.string	"IntLoc3"
.LASF34:
	.string	"malloc"
.LASF77:
	.string	"Array1Glob"
.LASF72:
	.string	"Func3"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-4)"
	.section	.note.GNU-stack,"",@progbits
