	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-4), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  drystone.c -mtune=generic -march=x86-64
# -auxbase-strip dhry1.S -g -O1 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -finline -finline-atomics -finline-functions-called-once -fipa-profile
# -fipa-pure-const -fipa-reference -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
# -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-ter -ftree-vect-loop-version -funit-at-a-time -funwind-tables
# -fvar-tracking -fvar-tracking-assignments -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.file 1 "drystone.c"
	.loc 1 264 0
	.cfi_startproc
.LVL0:
	.loc 1 268 0
	movl	(%rdi), %eax	# *IntParIO_3(D), D.2017
.LVL1:
	.loc 1 271 0
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	jne	.L3	#,
.LVL2:
	.loc 1 273 0
	addl	$9, %eax	#, IntLoc
.LVL3:
	.loc 1 274 0
	subl	IntGlob(%rip), %eax	# IntGlob, D.2017
.LVL4:
	movl	%eax, (%rdi)	# D.2017, *IntParIO_3(D)
.LVL5:
.L3:
	.loc 1 280 0
	rep ret
	.cfi_endproc
.LFE3:
	.size	Proc2, .-Proc2
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB4:
	.loc 1 284 0
	.cfi_startproc
.LVL6:
	.loc 1 285 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.15
	testq	%rax, %rax	# PtrGlb.15
	je	.L5	#,
	.loc 1 286 0
	movq	(%rax), %rax	# PtrGlb.15_3->PtrComp, D.2024
	movq	%rax, (%rdi)	# D.2024, *PtrParOut_5(D)
	jmp	.L6	#
.L5:
	.loc 1 288 0
	movl	$100, IntGlob(%rip)	#, IntGlob
.L6:
.LVL7:
.LBB4:
.LBB5:
	.loc 1 336 0
	movl	IntGlob(%rip), %eax	# IntGlob, tmp71
	leal	12(%rax), %edx	#, D.2025
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb
	movl	%edx, 16(%rax)	# D.2025, MEM[(OneToFifty *)PtrGlb.15_8 + 16B]
.LBE5:
.LBE4:
	.loc 1 290 0
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
.LVL8:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	.loc 1 299 0
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
	.loc 1 303 0
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 304 0
	movl	$0, BoolGlob(%rip)	#, BoolGlob
	.loc 1 305 0
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
.LVL9:
	.loc 1 314 0
	cmpl	$2, %edi	#, EnumParIn
	je	.L10	#,
	movl	$3, (%rsi)	#, *EnumParOut_4(D)
	.loc 1 316 0
	cmpl	$1, %edi	#, EnumParIn
	je	.L12	#,
	cmpl	$1, %edi	#, EnumParIn
	jb	.L13	#,
	cmpl	$2, %edi	#, EnumParIn
	je	.L10	#,
	cmpl	$4, %edi	#, EnumParIn
	.p2align 4,,2
	je	.L14	#,
	.p2align 4,,5
	rep ret
.L13:
	.loc 1 318 0
	movl	$0, (%rsi)	#, *EnumParOut_4(D)
	.p2align 4,,2
	ret
.L12:
	.loc 1 319 0
	cmpl	$101, IntGlob(%rip)	#, IntGlob
	setl	%al	#, tmp64
	movzbl	%al, %eax	# tmp64, tmp64
	leal	(%rax,%rax,2), %eax	#, tmp64
	movl	%eax, (%rsi)	# tmp64, *EnumParOut_4(D)
	ret
.L10:
	.loc 1 322 0
	movl	$1, (%rsi)	#, *EnumParOut_4(D)
	ret
.L14:
	.loc 1 324 0
	movl	$2, (%rsi)	#, *EnumParOut_4(D)
	.loc 1 326 0
	ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.loc 1 241 0
	.cfi_startproc
.LVL10:
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# PtrParIn, PtrParIn
	.loc 1 244 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.2043
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.12
	movq	(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, (%rax)	# *PtrGlb.12_5, *_4
	movq	8(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 8(%rax)	# *PtrGlb.12_5, *_4
	movq	16(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 16(%rax)	# *PtrGlb.12_5, *_4
	movq	24(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 24(%rax)	# *PtrGlb.12_5, *_4
	movq	32(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 32(%rax)	# *PtrGlb.12_5, *_4
	movq	40(%rdx), %rcx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rcx, 40(%rax)	# *PtrGlb.12_5, *_4
	movq	48(%rdx), %rdx	# *PtrGlb.12_5, *PtrGlb.12_5
	movq	%rdx, 48(%rax)	# *PtrGlb.12_5, *_4
	.loc 1 245 0
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
	.loc 1 246 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.2043
	movl	$5, 16(%rax)	#, _8->IntComp
	.loc 1 247 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.2043
	movq	%rax, (%rax)	# D.2043, _10->PtrComp
	.loc 1 248 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
	movq	(%rax), %rdi	# _12->PtrComp,
.LVL11:
	movl	$0, %eax	#,
	call	Proc3	#
.LVL12:
	.loc 1 249 0
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.2043
	cmpl	$0, 8(%rax)	#, _15->Discr
	jne	.L18	#,
.LBB11:
	.loc 1 251 0
	movl	$6, 16(%rax)	#, _15->IntComp
	.loc 1 252 0
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, tmp97
	leaq	12(%rax), %rsi	#, D.2045
	movl	12(%rbx), %edi	# PtrParIn_3(D)->EnumComp, PtrParIn_3(D)->EnumComp
	movl	$0, %eax	#,
	call	Proc6	#
.LVL13:
	.loc 1 253 0
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.2043
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb
	movq	(%rdx), %rdx	# PtrGlb.12_23->PtrComp, D.2043
	movq	%rdx, (%rax)	# D.2043, _22->PtrComp
	.loc 1 254 0
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.2043
.LVL14:
.LBB12:
.LBB13:
	.loc 1 336 0
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_26 + 16B]
.LVL15:
	jmp	.L20	#
.LVL16:
.L18:
.LBE13:
.LBE12:
.LBE11:
	.loc 1 257 0
	movq	(%rax), %rdx	# *_15, *_15
	movq	%rdx, (%rbx)	# *_15, *PtrParIn_3(D)
	movq	8(%rax), %rdx	# *_15, *_15
	movq	%rdx, 8(%rbx)	# *_15, *PtrParIn_3(D)
	movq	16(%rax), %rdx	# *_15, *_15
	movq	%rdx, 16(%rbx)	# *_15, *PtrParIn_3(D)
	movq	24(%rax), %rdx	# *_15, *_15
	movq	%rdx, 24(%rbx)	# *_15, *PtrParIn_3(D)
	movq	32(%rax), %rdx	# *_15, *_15
	movq	%rdx, 32(%rbx)	# *_15, *PtrParIn_3(D)
	movq	40(%rax), %rdx	# *_15, *_15
	movq	%rdx, 40(%rbx)	# *_15, *PtrParIn_3(D)
	movq	48(%rax), %rax	# *_15, *_15
	movq	%rax, 48(%rbx)	# *_15, *PtrParIn_3(D)
.L20:
	.loc 1 260 0
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LVL17:
	ret
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB8:
	.loc 1 332 0
	.cfi_startproc
.LVL18:
	.loc 1 336 0
	leal	2(%rdi,%rsi), %eax	#, tmp66
	movl	%eax, (%rdx)	# tmp66, *IntParOut_6(D)
	.loc 1 337 0
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
.LVL19:
	.loc 1 348 0
	leal	5(%rdx), %r8d	#, IntIndex
.LVL20:
	.loc 1 349 0
	movslq	%r8d, %r10	# IntIndex, D.2065
	leaq	0(,%r10,4), %rax	#, D.2065
	leaq	(%rdi,%rax), %r11	#, D.2066
	movl	%ecx, (%r11)	# IntParI2, *_8
	.loc 1 350 0
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	.loc 1 351 0
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
.LVL21:
	.loc 1 352 0
	leal	6(%rdx), %edi	#, D.2067
.LVL22:
	cmpl	%edi, %r8d	# D.2067, IntIndex
	jg	.L24	#,
	.loc 1 353 0
	imulq	$204, %r10, %r9	#, D.2065, D.2065
	addq	%rsi, %r9	# Array2Par, D.2063
	.loc 1 352 0
	movl	%r8d, %eax	# IntIndex, IntIndex
.LVL23:
.L25:
	.loc 1 353 0 discriminator 2
	movslq	%eax, %rcx	# IntIndex, IntIndex
	movl	%r8d, (%r9,%rcx,4)	# IntIndex, *_23
	.loc 1 352 0 discriminator 2
	addl	$1, %eax	#, IntIndex
.LVL24:
	cmpl	%edi, %eax	# D.2067, IntIndex
	jle	.L25	#,
.LVL25:
.L24:
	.loc 1 354 0
	imulq	$204, %r10, %r10	#, D.2065, D.2065
	leaq	(%rsi,%r10), %rax	#, D.2063
	addl	$4, %edx	#, D.2067
.LVL26:
	movslq	%edx, %rdx	# D.2067, D.2064
	addl	$1, (%rax,%rdx,4)	#, MEM[(int[51] *)_1]
	.loc 1 355 0
	movl	(%r11), %edx	# *_8, D.2067
.LVL27:
	movslq	%r8d, %r8	# IntIndex, IntIndex
	leaq	(%rsi,%r8,4), %rax	#, tmp99
	movl	%edx, 4080(%r10,%rax)	# D.2067, *_33
	.loc 1 356 0
	movl	$5, IntGlob(%rip)	#, IntGlob
	.loc 1 357 0
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
.LVL28:
	.loc 1 368 0
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.2076
	movzbl	%al, %eax	# D.2076, D.2076
	.loc 1 372 0
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
.LVL29:
	.loc 1 383 0
	movzbl	1(%rdi), %eax	# MEM[(char *)StrParI1_10(D) + 1B], tmp71
	cmpb	%al, 2(%rsi)	# tmp71, MEM[(char *)StrParI2_5(D) + 2B]
	jne	.L28	#,
.LVL30:
.L29:
	jmp	.L29	#
.LVL31:
.L28:
	.loc 1 377 0
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
.LVL32:
.LBB17:
	.loc 1 394 0
	call	strcmp	#
.LVL33:
	testl	%eax, %eax	# D.2086
	setg	%al	#, D.2087
	movzbl	%al, %eax	# D.2087, D.2087
.LBE17:
	.loc 1 402 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	Func2, .-Func2
	.section	.rodata.str1.8,"aMS",@progbits,1
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
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 128
	.loc 1 161 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
.LVL34:
	movq	%rax, %rbx	#, starttime
.LVL35:
	movl	$100000000, %edx	#, D.2127
.LVL36:
.L33:
	.loc 1 162 0 discriminator 2
	subl	$1, %edx	#, D.2127
.LVL37:
	jne	.L33	#,
	.loc 1 163 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
.LVL38:
	call	time	#
.LVL39:
	subq	%rbx, %rax	# starttime, nulltime
	movq	%rax, %r13	# nulltime, nulltime
.LVL40:
	.loc 1 176 0
	movl	$56, %edi	#,
	call	malloc	#
.LVL41:
	movq	%rax, %rbx	#, tmp96
.LVL42:
	movq	%rax, PtrGlbNext(%rip)	# tmp96, PtrGlbNext
	.loc 1 177 0
	movl	$56, %edi	#,
	call	malloc	#
.LVL43:
	movq	%rax, %rdx	#, tmp97
	movq	%rax, PtrGlb(%rip)	# tmp97, PtrGlb
	.loc 1 178 0
	movq	%rbx, (%rax)	# tmp96, MEM[(struct RecordType *)PtrGlb.1_19].PtrComp
	.loc 1 179 0
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].Discr
	.loc 1 180 0
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].EnumComp
	.loc 1 181 0
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_19].IntComp
	.loc 1 182 0
	movabsq	$5642821575076104260, %rcx	#, tmp128
	movq	%rcx, 20(%rdx)	# tmp128, MEM[(void *)PtrGlb.1_19 + 20B]
	movabsq	$4706902966564560965, %rcx	#, tmp129
	movq	%rcx, 28(%rdx)	# tmp129, MEM[(void *)PtrGlb.1_19 + 20B]
	movabsq	$2325349785699101773, %rcx	#, tmp130
	movq	%rcx, 36(%rdx)	# tmp130, MEM[(void *)PtrGlb.1_19 + 20B]
	movl	$1230132307, 44(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	movw	$18254, 48(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	movb	$0, 50(%rdx)	#, MEM[(void *)PtrGlb.1_19 + 20B]
	.loc 1 188 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
.LVL44:
	movq	%rax, %r12	#, starttime
.LVL45:
	movl	$100000000, %ebp	#, D.2127
.LVL46:
.L41:
.LBB26:
	.loc 1 196 0
	movl	$0, %eax	#,
	call	Proc5	#
.LVL47:
.LBB27:
.LBB28:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
.LBE28:
.LBE27:
	.loc 1 198 0
	movl	$2, 76(%rsp)	#, IntLoc1
.LVL48:
	.loc 1 200 0
	movabsq	$5642821575076104260, %rax	#, tmp131
	movq	%rax, (%rsp)	# tmp131, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp132
	movq	%rax, 8(%rsp)	# tmp132, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp133
	movq	%rax, 16(%rsp)	# tmp133, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, 24(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	$18254, 28(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 30(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	.loc 1 201 0
	movl	$1, 72(%rsp)	#, EnumLoc
	.loc 1 202 0
	movq	%rsp, %rsi	#,
	leaq	32(%rsp), %rdi	#, tmp134
	movl	$0, %eax	#,
	call	Func2	#
.LVL49:
	testl	%eax, %eax	# D.2130
	sete	%al	#, D.2131
	movzbl	%al, %eax	# D.2131, D.2131
	movl	%eax, BoolGlob(%rip)	# D.2131, BoolGlob
	.loc 1 203 0
	movl	$2, %edx	#, IntLoc1.5
.L36:
.LVL50:
.LBB29:
	.loc 1 207 0
	addl	$1, %edx	#, IntLoc1.7
.LVL51:
.LBE29:
	.loc 1 203 0
	cmpl	$3, %edx	#, IntLoc1.7
	jne	.L36	#,
	movl	$3, 76(%rsp)	#, IntLoc1
	.loc 1 209 0
	movl	$7, %ecx	#,
	movl	$3, %edx	#,
.LVL52:
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	movl	$0, %eax	#,
	call	Proc8	#
.LVL53:
	.loc 1 210 0
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	movl	$0, %eax	#,
	call	Proc1	#
.LVL54:
	.loc 1 211 0
	cmpb	$64, Char2Glob(%rip)	#, Char2Glob
	jle	.L37	#,
	movl	$65, %ebx	#, CharIndex
.LVL55:
.L39:
.LBB30:
.LBB31:
	.loc 1 368 0
	cmpb	$67, %bl	#, CharIndex
	sete	%al	#, D.2131
	movzbl	%al, %eax	# D.2131, D.2131
.LBE31:
.LBE30:
	.loc 1 212 0
	cmpl	%eax, 72(%rsp)	# D.2131, EnumLoc
	jne	.L38	#,
	.loc 1 213 0
	leaq	72(%rsp), %rsi	#, tmp135
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Proc6	#
.LVL56:
.L38:
	.loc 1 211 0
	addl	$1, %ebx	#, CharIndex
.LVL57:
	cmpb	%bl, Char2Glob(%rip)	# CharIndex, Char2Glob
	jge	.L39	#,
.LVL58:
.L37:
	.loc 1 217 0
	leaq	76(%rsp), %rdi	#, tmp136
	movl	$0, %eax	#,
	call	Proc2	#
.LVL59:
.LBE26:
	.loc 1 193 0
	subl	$1, %ebp	#, D.2127
.LVL60:
	jne	.L41	#,
	.loc 1 224 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	time	#
.LVL61:
	subq	%r12, %rax	# starttime, D.2128
	movq	%rax, %rbx	# D.2128, D.2128
	subq	%r13, %rbx	# nulltime, benchtime
.LVL62:
	.loc 1 225 0
	movq	%rbx, %rdx	# benchtime,
	movl	$100000000, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.LVL63:
	.loc 1 226 0
	movl	$100000000, %eax	#, tmp121
	cqto
	idivq	%rbx	# benchtime
	movq	%rax, %rsi	# D.2128, D.2128
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.LVL64:
	.loc 1 237 0
	addq	$88, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
.LVL65:
	popq	%rbp	#
	.cfi_def_cfa_offset 24
.LVL66:
	popq	%r12	#
	.cfi_def_cfa_offset 16
.LVL67:
	popq	%r13	#
	.cfi_def_cfa_offset 8
.LVL68:
	ret
	.cfi_endproc
.LFE1:
	.size	Proc0, .-Proc0
	.globl	main
	.type	main, @function
main:
.LFB0:
	.loc 1 128 0
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	.loc 1 129 0
	movl	$0, %eax	#,
	call	Proc0	#
.LVL69:
	.loc 1 130 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.loc 1 406 0
	.cfi_startproc
.LVL70:
	.loc 1 410 0
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.2138
	movzbl	%al, %eax	# D.2138, D.2138
	.loc 1 412 0
	ret
	.cfi_endproc
.LFE12:
	.size	Func3, .-Func3
	.comm	PtrGlbNext,8,8
	.comm	PtrGlb,8,8
	.comm	Array2Glob,10404,32
	.comm	Array1Glob,204,32
	.comm	Char2Glob,1,1
	.comm	Char1Glob,1,1
	.comm	BoolGlob,4,4
	.comm	IntGlob,4,4
.Letext0:
	.file 2 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb8e
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
	.long	.LASF27
	.byte	0x1
	.value	0x106
	.long	0x6a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0x107
	.long	0x1af
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.value	0x109
	.long	0x71
	.long	.LLST0
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.value	0x10a
	.long	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x71
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.value	0x148
	.long	0x6a
	.byte	0x1
	.long	0x1f7
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.value	0x149
	.long	0x71
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.value	0x14a
	.long	0x71
	.uleb128 0x11
	.long	.LASF24
	.byte	0x1
	.value	0x14b
	.long	0x1af
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.value	0x14d
	.long	0x71
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.value	0x11a
	.long	0x6a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x292
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0x11b
	.long	0x292
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.long	0x238
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	0x1b5
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0x1
	.value	0x121
	.uleb128 0x15
	.long	0x1de
	.uleb128 0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.uleb128 0x15
	.long	0x1d2
	.uleb128 0x9
	.byte	0x3
	.quad	IntGlob
	.uleb128 0x16
	.long	0x1c6
	.byte	0xa
	.uleb128 0x17
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x18
	.long	0x1ea
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x146
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.value	0x124
	.long	0x6a
	.byte	0x1
	.long	0x2b6
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.value	0x126
	.long	0x157
	.byte	0
	.uleb128 0x19
	.long	0x298
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6
	.uleb128 0x1a
	.long	0x2a9
	.uleb128 0x1e
	.byte	0x3
	.quad	Char1Glob
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x41
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.quad	BoolGlob
	.byte	0x94
	.byte	0x4
	.byte	0x21
	.byte	0x9f
	.byte	0
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.value	0x12d
	.long	0x6a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.value	0x194
	.long	0x157
	.byte	0x1
	.long	0x33e
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.value	0x195
	.long	0x54
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.value	0x197
	.long	0x54
	.byte	0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.value	0x135
	.long	0x6a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0x136
	.long	0x54
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0x137
	.long	0x37d
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x54
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.byte	0xef
	.long	0x6a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x469
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.byte	0xf0
	.long	0x146
	.long	.LLST1
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0xf8
	.long	0x6a
	.long	0x3c4
	.uleb128 0x13
	.byte	0
	.uleb128 0x1e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x45b
	.uleb128 0x12
	.long	.LASF36
	.byte	0x1
	.byte	0xd5
	.long	0x6a
	.long	0x3ea
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.long	0x3fb
	.uleb128 0x13
	.byte	0
	.uleb128 0x1f
	.long	0x1b5
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0xfe
	.long	0x44d
	.uleb128 0x20
	.long	0x1de
	.long	.LLST2
	.uleb128 0x20
	.long	0x1d2
	.long	.LLST3
	.uleb128 0x20
	.long	0x1c6
	.long	.LLST4
	.uleb128 0x17
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.long	0x1ea
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL13
	.long	0x33e
	.byte	0
	.uleb128 0x22
	.quad	.LVL12
	.long	0x1f7
	.byte	0
	.uleb128 0x19
	.long	0x1b5
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a3
	.uleb128 0x15
	.long	0x1c6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.long	0x1d2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.long	0x1de
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.long	0x1ea
	.uleb128 0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.value	0x153
	.long	0x6a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x522
	.uleb128 0x23
	.long	.LASF41
	.byte	0x1
	.value	0x154
	.long	0x522
	.long	.LLST6
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.value	0x155
	.long	0x528
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF22
	.byte	0x1
	.value	0x156
	.long	0x71
	.long	.LLST7
	.uleb128 0x23
	.long	.LASF23
	.byte	0x1
	.value	0x157
	.long	0x71
	.long	.LLST8
	.uleb128 0x24
	.long	.LASF26
	.byte	0x1
	.value	0x159
	.long	0x71
	.uleb128 0x1
	.byte	0x58
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.value	0x15a
	.long	0x71
	.long	.LLST9
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x6a
	.uleb128 0xb
	.byte	0x8
	.long	0xbb
	.uleb128 0x10
	.long	.LASF44
	.byte	0x1
	.value	0x167
	.long	0x54
	.byte	0x1
	.long	0x570
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x168
	.long	0x7c
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0x169
	.long	0x7c
	.uleb128 0xf
	.long	.LASF47
	.byte	0x1
	.value	0x16b
	.long	0x7c
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.value	0x16c
	.long	0x7c
	.byte	0
	.uleb128 0x19
	.long	0x52e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a8
	.uleb128 0x15
	.long	0x53f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.long	0x54b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.long	0x557
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.long	0x563
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x1
	.value	0x176
	.long	0x157
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x638
	.uleb128 0x23
	.long	.LASF50
	.byte	0x1
	.value	0x177
	.long	0x638
	.long	.LLST10
	.uleb128 0x23
	.long	.LASF51
	.byte	0x1
	.value	0x178
	.long	0x638
	.long	.LLST11
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.value	0x17a
	.long	0x5f
	.long	.LLST12
	.uleb128 0x25
	.long	.LASF52
	.byte	0x1
	.value	0x17b
	.long	0x7c
	.byte	0x41
	.uleb128 0x17
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x12
	.long	.LASF53
	.byte	0x2
	.byte	0
	.long	0x6a
	.long	0x629
	.uleb128 0x13
	.byte	0
	.uleb128 0x22
	.quad	.LVL33
	.long	0xb3f
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x87
	.uleb128 0x1c
	.long	.LASF54
	.byte	0x1
	.byte	0x90
	.long	0x6a
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0b
	.uleb128 0x26
	.long	.LASF55
	.byte	0x1
	.byte	0x92
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.byte	0x93
	.long	0x71
	.long	.LLST13
	.uleb128 0x27
	.long	.LASF57
	.byte	0x1
	.byte	0x94
	.long	0x71
	.long	.LLST14
	.uleb128 0x28
	.long	.LASF52
	.byte	0x1
	.byte	0x95
	.long	0x87
	.uleb128 0x27
	.long	.LASF58
	.byte	0x1
	.byte	0x96
	.long	0x87
	.long	.LLST15
	.uleb128 0x26
	.long	.LASF25
	.byte	0x1
	.byte	0x97
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF59
	.byte	0x1
	.byte	0x98
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF60
	.byte	0x1
	.byte	0x99
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0xa0b
	.long	.LLST16
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x9d
	.long	0xa12
	.long	0x6ef
	.uleb128 0x13
	.byte	0
	.uleb128 0x27
	.long	.LASF62
	.byte	0x1
	.byte	0x9e
	.long	0xa12
	.long	.LLST17
	.uleb128 0x27
	.long	.LASF63
	.byte	0x1
	.byte	0x9f
	.long	0xa12
	.long	.LLST18
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.byte	0xa0
	.long	0xa12
	.long	.LLST19
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x2
	.byte	0
	.long	0xa19
	.long	0x731
	.uleb128 0x2b
	.long	0xa1b
	.byte	0
	.uleb128 0x2a
	.long	.LASF66
	.byte	0x2
	.byte	0
	.long	0x638
	.long	0x74b
	.uleb128 0x2b
	.long	0x638
	.uleb128 0x2b
	.long	0xa22
	.byte	0
	.uleb128 0x2a
	.long	.LASF67
	.byte	0x2
	.byte	0
	.long	0x6a
	.long	0x761
	.uleb128 0x2b
	.long	0xa22
	.uleb128 0x13
	.byte	0
	.uleb128 0x1e
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x929
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0xc4
	.long	0x6a
	.long	0x787
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0xc5
	.long	0x6a
	.long	0x798
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xd1
	.long	0x6a
	.long	0x7a9
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0xd2
	.long	0x6a
	.long	0x7ba
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF36
	.byte	0x1
	.byte	0xd5
	.long	0x6a
	.long	0x7cb
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0xd9
	.long	0x6a
	.long	0x7dc
	.uleb128 0x13
	.byte	0
	.uleb128 0x1f
	.long	0x298
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0x1
	.byte	0xc5
	.long	0x813
	.uleb128 0x17
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x21
	.long	0x2a9
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x836
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.byte	0xce
	.long	0x6a
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x52e
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0xd4
	.long	0x888
	.uleb128 0x20
	.long	0x54b
	.long	.LLST21
	.uleb128 0x20
	.long	0x53f
	.long	.LLST22
	.uleb128 0x17
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x21
	.long	0x557
	.long	.LLST22
	.uleb128 0x21
	.long	0x563
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL47
	.long	0x2f6
	.uleb128 0x2d
	.quad	.LVL49
	.long	0x5a8
	.long	0x8b4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL53
	.long	0x4a3
	.long	0x8ea
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x22
	.quad	.LVL54
	.long	0x383
	.uleb128 0x2d
	.quad	.LVL56
	.long	0x33e
	.long	0x914
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2f
	.quad	.LVL59
	.long	0x162
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL34
	.long	0xb59
	.long	0x940
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL39
	.long	0xb59
	.long	0x957
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL41
	.long	0xb6a
	.long	0x96f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x2d
	.quad	.LVL43
	.long	0xb6a
	.long	0x987
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x2d
	.quad	.LVL44
	.long	0xb59
	.long	0x99e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL61
	.long	0xb59
	.long	0x9b5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL63
	.long	0xb7f
	.long	0x9e3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL64
	.long	0xb7f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0xc
	.long	0x5f5e100
	.byte	0x73
	.sleb128 0
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF69
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x30
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xb
	.byte	0x8
	.long	0xa28
	.uleb128 0x31
	.long	0x87
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x1
	.byte	0x7f
	.long	0x6a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6d
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x81
	.long	0x6a
	.long	0xa5f
	.uleb128 0x13
	.byte	0
	.uleb128 0x22
	.quad	.LVL69
	.long	0x63e
	.byte	0
	.uleb128 0x19
	.long	0x314
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa97
	.uleb128 0x15
	.long	0x325
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.long	0x331
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x32
	.long	.LASF73
	.byte	0x1
	.byte	0x87
	.long	0x6a
	.uleb128 0x9
	.byte	0x3
	.quad	IntGlob
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.byte	0x88
	.long	0x157
	.uleb128 0x9
	.byte	0x3
	.quad	BoolGlob
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.byte	0x89
	.long	0x87
	.uleb128 0x9
	.byte	0x3
	.quad	Char1Glob
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.byte	0x8a
	.long	0x87
	.uleb128 0x9
	.byte	0x3
	.quad	Char2Glob
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.byte	0x8b
	.long	0xb0
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.byte	0x8c
	.long	0xcb
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.byte	0x8d
	.long	0x146
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlb
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.byte	0x8e
	.long	0x146
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlbNext
	.uleb128 0x2a
	.long	.LASF53
	.byte	0x2
	.byte	0
	.long	0x6a
	.long	0xb59
	.uleb128 0x2b
	.long	0xa22
	.uleb128 0x2b
	.long	0xa22
	.byte	0
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x9d
	.long	0xa12
	.long	0xb6a
	.uleb128 0x13
	.byte	0
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x2
	.byte	0
	.long	0xa19
	.long	0xb7f
	.uleb128 0x2b
	.long	0xa1b
	.byte	0
	.uleb128 0x33
	.long	.LASF67
	.byte	0x2
	.byte	0
	.long	0x6a
	.uleb128 0x2b
	.long	0xa22
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 10
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 9
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL17-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 16
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 16
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL22-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL19-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 -6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL19-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL23-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL29-.Ltext0
	.quad	.LVL33-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL33-1-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL29-.Ltext0
	.quad	.LVL33-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL33-1-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL29-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL48-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 5
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.quad	.LVL55-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x9
	.byte	0xc
	.long	0x5f5e101
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-1-.Ltext0
	.value	0x9
	.byte	0xc
	.long	0x5f5e100
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x9
	.byte	0xc
	.long	0x5f5e100
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x9
	.byte	0xc
	.long	0x5f5e101
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x9
	.byte	0xc
	.long	0x5f5e100
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL35-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL46-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL62-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL47-.Ltext0
	.quad	.LVL49-1-.Ltext0
	.value	0x1e
	.byte	0x3
	.quad	Char1Glob
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x41
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.quad	BoolGlob
	.byte	0x94
	.byte	0x4
	.byte	0x21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL55-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x43
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL55-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
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
.LASF59:
	.string	"String1Loc"
.LASF76:
	.string	"Char2Glob"
.LASF42:
	.string	"Array2Par"
.LASF10:
	.string	"String30"
.LASF30:
	.string	"PtrParOut"
.LASF82:
	.string	"drystone.c"
.LASF50:
	.string	"StrParI1"
.LASF84:
	.string	"Record"
.LASF51:
	.string	"StrParI2"
.LASF56:
	.string	"IntLoc2"
.LASF70:
	.string	"long int"
.LASF43:
	.string	"IntIndex"
.LASF69:
	.string	"unsigned int"
.LASF37:
	.string	"EnumParOut"
.LASF40:
	.string	"Proc8"
.LASF20:
	.string	"RecordPtr"
.LASF66:
	.string	"strcpy"
.LASF64:
	.string	"nulltime"
.LASF79:
	.string	"PtrGlb"
.LASF19:
	.string	"RecordType"
.LASF71:
	.string	"long unsigned int"
.LASF47:
	.string	"CharLoc1"
.LASF54:
	.string	"Proc0"
.LASF26:
	.string	"IntLoc"
.LASF63:
	.string	"benchtime"
.LASF25:
	.string	"EnumLoc"
.LASF32:
	.string	"Proc4"
.LASF24:
	.string	"IntParOut"
.LASF7:
	.string	"OneToFifty"
.LASF5:
	.string	"Enumeration"
.LASF36:
	.string	"Proc6"
.LASF31:
	.string	"Proc7"
.LASF72:
	.string	"main"
.LASF18:
	.string	"StringComp"
.LASF39:
	.string	"PtrParIn"
.LASF35:
	.string	"EnumParIn"
.LASF52:
	.string	"CharLoc"
.LASF44:
	.string	"Func1"
.LASF49:
	.string	"Func2"
.LASF34:
	.string	"Func3"
.LASF78:
	.string	"Array2Glob"
.LASF6:
	.string	"OneToThirty"
.LASF62:
	.string	"starttime"
.LASF22:
	.string	"IntParI1"
.LASF23:
	.string	"IntParI2"
.LASF8:
	.string	"CapitalLetter"
.LASF61:
	.string	"time"
.LASF45:
	.string	"CharPar1"
.LASF46:
	.string	"CharPar2"
.LASF53:
	.string	"strcmp"
.LASF11:
	.string	"sizetype"
.LASF38:
	.string	"Proc1"
.LASF27:
	.string	"Proc2"
.LASF28:
	.string	"Proc3"
.LASF81:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-4) -mtune=generic -march=x86-64 -g -O1"
.LASF68:
	.string	"Proc5"
.LASF9:
	.string	"char"
.LASF13:
	.string	"Array2Dim"
.LASF15:
	.string	"Discr"
.LASF48:
	.string	"CharLoc2"
.LASF67:
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
.LASF41:
	.string	"Array1Par"
.LASF14:
	.string	"PtrComp"
.LASF29:
	.string	"IntParIO"
.LASF12:
	.string	"Array1Dim"
.LASF33:
	.string	"BoolLoc"
.LASF80:
	.string	"PtrGlbNext"
.LASF17:
	.string	"IntComp"
.LASF83:
	.string	"/users/ktalaric/HPCKyleTalarico/dhrystone"
.LASF58:
	.string	"CharIndex"
.LASF74:
	.string	"BoolGlob"
.LASF55:
	.string	"IntLoc1"
.LASF21:
	.string	"boolean"
.LASF57:
	.string	"IntLoc3"
.LASF65:
	.string	"malloc"
.LASF77:
	.string	"Array1Glob"
.LASF60:
	.string	"String2Loc"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-4)"
	.section	.note.GNU-stack,"",@progbits
