	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-4), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  drystone.c -mtune=generic -march=x86-64
# -auxbase-strip dhry2.S -g -O2 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
# -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-atomics -finline-functions-called-once -finline-small-functions
# -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
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
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
# -funit-at-a-time -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
# -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.file 1 "drystone.c"
	.loc 1 264 0
	.cfi_startproc
.LVL0:
	.loc 1 271 0
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 268 0
	movl	(%rdi), %eax	# *IntParIO_3(D), D.2076
.LVL1:
	.loc 1 271 0
	je	.L5	#,
.LVL2:
	.loc 1 280 0
	rep ret
.LVL3:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 273 0
	addl	$9, %eax	#, D.2076
.LVL4:
	.loc 1 274 0
	subl	IntGlob(%rip), %eax	# IntGlob, D.2076
.LVL5:
	movl	%eax, (%rdi)	# D.2076, *IntParIO_3(D)
.LVL6:
	.loc 1 280 0
	ret
	.cfi_endproc
.LFE3:
	.size	Proc2, .-Proc2
	.p2align 4,,15
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB4:
	.loc 1 284 0
	.cfi_startproc
.LVL7:
	.loc 1 285 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.16
	testq	%rax, %rax	# PtrGlb.16
	je	.L7	#,
	.loc 1 286 0
	movq	(%rax), %rax	# PtrGlb.16_3->PtrComp, D.2079
	movl	IntGlob(%rip), %ecx	# IntGlob, tmp67
	movq	%rax, (%rdi)	# D.2079, *PtrParOut_5(D)
	movq	PtrGlb(%rip), %rax	# PtrGlb, D.2080
	leal	12(%rcx), %edx	#, D.2081
.LVL8:
.LBB30:
.LBB31:
	.loc 1 336 0
	movl	%edx, 16(%rax)	# D.2081, MEM[(OneToFifty *)_15 + 16B]
.LVL9:
.LBE31:
.LBE30:
	.loc 1 290 0
	ret
.LVL10:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 288 0
	xorl	%eax, %eax	# D.2080
.LVL11:
	movl	$112, %edx	#, D.2081
	movl	$100, IntGlob(%rip)	#, IntGlob
.LBB33:
.LBB32:
	.loc 1 336 0
	movl	%edx, 16(%rax)	# D.2081, MEM[(OneToFifty *)_15 + 16B]
.LVL12:
.LBE32:
.LBE33:
	.loc 1 290 0
	ret
	.cfi_endproc
.LFE4:
	.size	Proc3, .-Proc3
	.p2align 4,,15
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB5:
	.loc 1 293 0
	.cfi_startproc
.LVL13:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
	.loc 1 299 0
	ret
	.cfi_endproc
.LFE5:
	.size	Proc4, .-Proc4
	.p2align 4,,15
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
	.p2align 4,,15
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB7:
	.loc 1 312 0
	.cfi_startproc
.LVL14:
.LBB42:
.LBB43:
	.loc 1 410 0
	cmpl	$2, %edi	#, EnumParIn
	je	.L12	#,
.LBE43:
.LBE42:
	.loc 1 316 0
	cmpl	$1, %edi	#, EnumParIn
	movl	$3, (%rsi)	#, *EnumParOut_3(D)
	je	.L14	#,
	jb	.L18	#,
	cmpl	$4, %edi	#, EnumParIn
	jne	.L19	#,
	.loc 1 324 0
	movl	$2, (%rsi)	#, *EnumParOut_3(D)
.L17:
	.loc 1 326 0
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L14:
.LVL15:
.LBB44:
.LBB45:
	.loc 1 319 0
	cmpl	$100, IntGlob(%rip)	#, IntGlob
	jle	.L17	#,
.LVL16:
.L18:
	movl	$0, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L12:
.LBE45:
.LBE44:
	.loc 1 322 0
	movl	$1, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	rep ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.loc 1 241 0
	.cfi_startproc
.LVL17:
	.loc 1 244 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.13
	.loc 1 241 0
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 241 0
	movq	%rdi, %rbx	# PtrParIn, PtrParIn
	.loc 1 244 0
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.2114
	movq	(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, (%rdx)	# *PtrGlb.13_5, *_4
	movq	8(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 8(%rdx)	# *PtrGlb.13_5, *_4
	movq	16(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 16(%rdx)	# *PtrGlb.13_5, *_4
	movq	24(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 24(%rdx)	# *PtrGlb.13_5, *_4
	movq	32(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 32(%rdx)	# *PtrGlb.13_5, *_4
	movq	40(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 40(%rdx)	# *PtrGlb.13_5, *_4
	movq	48(%rax), %rcx	# *PtrGlb.13_5, *PtrGlb.13_5
	movq	%rcx, 48(%rdx)	# *PtrGlb.13_5, *_4
	.loc 1 246 0
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.2114
	.loc 1 245 0
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
	.loc 1 247 0
	movq	%rdx, (%rdx)	# D.2114, _8->PtrComp
	.loc 1 246 0
	movl	$5, 16(%rdx)	#, _8->IntComp
	.loc 1 248 0
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
.LBB46:
.LBB47:
	.loc 1 286 0
	movq	(%rax), %rax	# PtrGlb.13_5->PtrComp, D.2114
.LBE47:
.LBE46:
	.loc 1 248 0
	movq	(%rdx), %rdx	# _11->PtrComp, D.2114
.LVL18:
.LBB54:
.LBB52:
	.loc 1 286 0
	movq	%rax, (%rdx)	# D.2114, MEM[(struct RecordType * *)_12]
.LVL19:
.LBB48:
.LBB49:
	.loc 1 336 0
	movl	IntGlob(%rip), %eax	# IntGlob, tmp103
.LBE49:
.LBE48:
.LBE52:
.LBE54:
	.loc 1 249 0
	movq	(%rdi), %rsi	# PtrParIn_3(D)->PtrComp, D.2114
.LBB55:
.LBB53:
.LBB51:
.LBB50:
	.loc 1 336 0
	leal	12(%rax), %edx	#, D.2117
.LVL20:
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb
	movl	%edx, 16(%rax)	# D.2117, MEM[(OneToFifty *)PtrGlb.16_29 + 16B]
.LBE50:
.LBE51:
.LBE53:
.LBE55:
	.loc 1 249 0
	movl	8(%rsi), %eax	# _14->Discr,
	testl	%eax, %eax	#
	je	.L25	#,
	.loc 1 257 0
	movq	(%rsi), %rax	# *_14, *_14
	movq	%rax, (%rdi)	# *_14, *PtrParIn_3(D)
	movq	8(%rsi), %rax	# *_14, *_14
	movq	%rax, 8(%rdi)	# *_14, *PtrParIn_3(D)
	movq	16(%rsi), %rax	# *_14, *_14
	movq	%rax, 16(%rdi)	# *_14, *PtrParIn_3(D)
	movq	24(%rsi), %rax	# *_14, *_14
	movq	%rax, 24(%rdi)	# *_14, *PtrParIn_3(D)
	movq	32(%rsi), %rax	# *_14, *_14
	movq	%rax, 32(%rdi)	# *_14, *PtrParIn_3(D)
	movq	40(%rsi), %rax	# *_14, *_14
	movq	%rax, 40(%rdi)	# *_14, *PtrParIn_3(D)
	movq	48(%rsi), %rax	# *_14, *_14
	movq	%rax, 48(%rdi)	# *_14, *PtrParIn_3(D)
	.loc 1 260 0
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL21:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
.LBB56:
	.loc 1 252 0
	movl	12(%rdi), %edi	# PtrParIn_3(D)->EnumComp, PtrParIn_3(D)->EnumComp
	.loc 1 251 0
	movl	$6, 16(%rsi)	#, _14->IntComp
	.loc 1 252 0
	xorl	%eax, %eax	#
	addq	$12, %rsi	#, D.2116
	call	Proc6	#
.LVL22:
	.loc 1 253 0
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.2114
	movq	(%rdx), %rdx	# PtrGlb.13_21->PtrComp, D.2114
	movq	%rdx, (%rax)	# D.2114, _20->PtrComp
	.loc 1 254 0
	movq	(%rbx), %rax	# PtrParIn_3(D)->PtrComp, D.2114
.LVL23:
.LBB57:
.LBB58:
	.loc 1 336 0
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_24 + 16B]
.LVL24:
.LVL25:
.LBE58:
.LBE57:
.LBE56:
	.loc 1 260 0
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LVL26:
	ret
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
	.p2align 4,,15
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB8:
	.loc 1 332 0
	.cfi_startproc
.LVL27:
	.loc 1 336 0
	leal	2(%rdi,%rsi), %eax	#, tmp66
	movl	%eax, (%rdx)	# tmp66, *IntParOut_6(D)
	.loc 1 337 0
	ret
	.cfi_endproc
.LFE8:
	.size	Proc7, .-Proc7
	.p2align 4,,15
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB9:
	.loc 1 344 0
	.cfi_startproc
.LVL28:
	.loc 1 348 0
	leal	5(%rdx), %r8d	#, IntIndex
.LVL29:
	.loc 1 349 0
	movslq	%r8d, %r9	# IntIndex, D.2124
	leaq	0(,%r9,4), %rax	#, D.2124
	leaq	(%rdi,%rax), %r10	#, D.2125
	movl	%ecx, (%r10)	# IntParI2, *_8
	.loc 1 350 0
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	.loc 1 351 0
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
.LVL30:
	.loc 1 355 0
	addq	%rsi, %rax	# Array2Par, tmp92
	imulq	$204, %r9, %rdi	#, D.2124, D.2124
.LVL31:
	leaq	(%rsi,%rdi), %rcx	#, D.2123
.LVL32:
	.loc 1 353 0
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
.LVL33:
	.loc 1 352 0
	leal	6(%rdx), %r9d	#, IntIndex
.LVL34:
	.loc 1 354 0
	addl	$4, %edx	#, D.2127
.LVL35:
	movslq	%edx, %rdx	# D.2127, D.2126
	.loc 1 353 0
	movslq	%r9d, %r9	# IntIndex, IntIndex
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
.LVL36:
	.loc 1 354 0
	addl	$1, (%rcx,%rdx,4)	#, MEM[(int[51] *)_40]
	.loc 1 355 0
	movl	(%r10), %edx	# *_8, D.2127
.LVL37:
	movl	%edx, 4080(%rdi,%rax)	# D.2127, *_33
	.loc 1 356 0
	movl	$5, IntGlob(%rip)	#, IntGlob
	.loc 1 357 0
	ret
	.cfi_endproc
.LFE9:
	.size	Proc8, .-Proc8
	.p2align 4,,15
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB10:
	.loc 1 362 0
	.cfi_startproc
.LVL38:
	.loc 1 368 0
	xorl	%eax, %eax	# D.2130
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.2130
	.loc 1 372 0
	ret
	.cfi_endproc
.LFE10:
	.size	Func1, .-Func1
	.p2align 4,,15
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB11:
	.loc 1 377 0
	.cfi_startproc
.LVL39:
.LBB59:
.LBB60:
	.loc 1 368 0
	movzbl	1(%rdi), %eax	# MEM[(char *)StrParI1_9(D) + 1B], tmp71
	cmpb	%al, 2(%rsi)	# tmp71, MEM[(char *)StrParI2_5(D) + 2B]
	je	.L32	#,
.LVL40:
.LBE60:
.LBE59:
	.loc 1 377 0
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
.LBB61:
	.loc 1 394 0
	call	strcmp	#
.LVL41:
	testl	%eax, %eax	# D.2137
	setg	%al	#, D.2139
.LBE61:
	.loc 1 402 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
.LBB62:
	.loc 1 394 0
	movzbl	%al, %eax	# D.2139, D.2139
.LBE62:
	.loc 1 402 0
	ret
.LVL42:
.L32:
	jmp	.L32	#
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
	.p2align 4,,15
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB1:
	.loc 1 145 0
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 161 0
	xorl	%edi, %edi	#
	xorl	%eax, %eax	#
	.loc 1 145 0
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 96
	.loc 1 161 0
	call	time	#
.LVL43:
	.loc 1 163 0
	xorl	%edi, %edi	#
	.loc 1 161 0
	movq	%rax, %rbx	#, starttime
.LVL44:
	.loc 1 163 0
	xorl	%eax, %eax	#
.LVL45:
	call	time	#
.LVL46:
	.loc 1 176 0
	movl	$56, %edi	#,
	.loc 1 163 0
	movq	%rax, %rbp	#, nulltime
	subq	%rbx, %rbp	# starttime, nulltime
.LVL47:
	.loc 1 176 0
	call	malloc	#
.LVL48:
	.loc 1 177 0
	movl	$56, %edi	#,
	.loc 1 176 0
	movq	%rax, %rbx	#, tmp86
.LVL49:
	movq	%rax, PtrGlbNext(%rip)	# tmp86, PtrGlbNext
	.loc 1 177 0
	call	malloc	#
.LVL50:
	.loc 1 178 0
	movq	%rbx, (%rax)	# tmp86, MEM[(struct RecordType *)PtrGlb.1_17].PtrComp
	.loc 1 182 0
	movabsq	$5642821575076104260, %rbx	#, tmp107
	movl	$18254, %ecx	#,
	movq	%rbx, 20(%rax)	# tmp107, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$4706902966564560965, %rbx	#, tmp108
	.loc 1 177 0
	movq	%rax, PtrGlb(%rip)	# tmp87, PtrGlb
	.loc 1 182 0
	movq	%rbx, 28(%rax)	# tmp108, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$2325349785699101773, %rbx	#, tmp109
	.loc 1 179 0
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].Discr
	.loc 1 182 0
	movq	%rbx, 36(%rax)	# tmp109, MEM[(void *)PtrGlb.1_17 + 20B]
	.loc 1 180 0
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].EnumComp
	.loc 1 188 0
	xorl	%edi, %edi	#
	.loc 1 181 0
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].IntComp
	.loc 1 182 0
	movl	$1230132307, 44(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	.loc 1 188 0
	movl	$100000000, %ebx	#, D.2182
	.loc 1 182 0
	movw	%cx, 48(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movb	$0, 50(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	.loc 1 188 0
	xorl	%eax, %eax	#
	call	time	#
.LVL51:
	movq	%rax, %r12	#, starttime
.LVL52:
	.p2align 4,,10
	.p2align 3
.L38:
.LBB81:
	.loc 1 200 0
	movabsq	$5642821575076104260, %rax	#, tmp110
	.loc 1 202 0
	leaq	32(%rsp), %rsi	#, tmp113
	movq	%rsp, %rdi	#,
	.loc 1 200 0
	movq	%rax, 32(%rsp)	# tmp110, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp111
.LBB82:
.LBB83:
	.loc 1 303 0
	movb	$65, Char1Glob(%rip)	#, Char1Glob
.LBE83:
.LBE82:
	.loc 1 200 0
	movq	%rax, 40(%rsp)	# tmp111, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp112
.LBB85:
.LBB84:
	.loc 1 304 0
	movl	$0, BoolGlob(%rip)	#, BoolGlob
.LVL53:
.LBE84:
.LBE85:
	.loc 1 200 0
	movq	%rax, 48(%rsp)	# tmp112, MEM[(char * {ref-all})&String2Loc]
	movl	$18254, %eax	#,
.LBB86:
.LBB87:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
.LVL54:
.LBE87:
.LBE86:
	.loc 1 200 0
	movw	%ax, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	.loc 1 202 0
	xorl	%eax, %eax	#
	.loc 1 200 0
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
.LVL55:
	.loc 1 202 0
	call	Func2	#
.LVL56:
	xorl	%edx, %edx	# D.2180
.LVL57:
	testl	%eax, %eax	# D.2179
	.loc 1 209 0
	movl	$7, %ecx	#,
	.loc 1 202 0
	sete	%dl	#, D.2180
.LVL58:
	.loc 1 209 0
	movl	$Array2Glob, %esi	#,
	movl	$Array1Glob, %edi	#,
	.loc 1 202 0
	movl	%edx, BoolGlob(%rip)	# D.2180, BoolGlob
.LVL59:
	.loc 1 209 0
	xorl	%eax, %eax	#
	movl	$3, %edx	#,
	call	Proc8	#
.LVL60:
	.loc 1 210 0
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	xorl	%eax, %eax	#
	call	Proc1	#
.LVL61:
	.loc 1 211 0
	movzbl	Char2Glob(%rip), %ecx	# Char2Glob, Char2Glob.11
	cmpb	$64, %cl	#, Char2Glob.11
	jle	.L35	#,
	movl	$65, %edx	#, CharIndex
.LVL62:
	.p2align 4,,10
	.p2align 3
.L36:
	addl	$1, %edx	#, CharIndex
.LVL63:
	cmpb	%dl, %cl	# CharIndex, Char2Glob.11
	jge	.L36	#,
.LVL64:
.L35:
.LBE81:
	.loc 1 193 0
	subl	$1, %ebx	#, D.2182
.LVL65:
	jne	.L38	#,
	.loc 1 224 0
	xorl	%edi, %edi	#
	xorl	%eax, %eax	#
	call	time	#
.LVL66:
	movq	%rax, %rbx	#, benchtime
.LVL67:
	.loc 1 225 0
	movl	$100000000, %esi	#,
	movl	$.LC0, %edi	#,
	.loc 1 224 0
	subq	%r12, %rbx	# starttime, benchtime
	.loc 1 225 0
	xorl	%eax, %eax	#
	.loc 1 224 0
	subq	%rbp, %rbx	# nulltime, benchtime
.LVL68:
	.loc 1 225 0
	movq	%rbx, %rdx	# benchtime,
	call	printf	#
.LVL69:
	.loc 1 226 0
	movl	$100000000, %eax	#, tmp103
	.loc 1 237 0
	addq	$64, %rsp	#,
	.cfi_def_cfa_offset 32
	.loc 1 226 0
	movl	$.LC1, %edi	#,
	cqto
	idivq	%rbx	# benchtime
	.loc 1 237 0
	popq	%rbx	#
	.cfi_def_cfa_offset 24
.LVL70:
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL71:
	popq	%r12	#
	.cfi_def_cfa_offset 8
.LVL72:
	.loc 1 226 0
	movq	%rax, %rsi	# D.2177, D.2177
	xorl	%eax, %eax	#
	jmp	printf	#
.LVL73:
	.cfi_endproc
.LFE1:
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.loc 1 128 0
	.cfi_startproc
	.loc 1 129 0
	xorl	%eax, %eax	#
	jmp	Proc0	#
.LVL74:
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.loc 1 406 0
	.cfi_startproc
.LVL75:
	.loc 1 410 0
	xorl	%eax, %eax	# D.2190
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.2190
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
	.long	0xc12
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.long	.LASF83
	.long	.Ldebug_ranges0+0x100
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x1
	.byte	0x58
	.long	0x50
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
	.long	0x29
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x5b
	.long	0x66
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x5c
	.long	0x66
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0x5d
	.long	0x83
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x5e
	.long	0x95
	.uleb128 0x7
	.long	0x83
	.long	0xa5
	.uleb128 0x8
	.long	0xa5
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
	.long	0xb7
	.uleb128 0x7
	.long	0x66
	.long	0xc7
	.uleb128 0x8
	.long	0xa5
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x60
	.long	0xd2
	.uleb128 0x7
	.long	0x66
	.long	0xe8
	.uleb128 0x8
	.long	0xa5
	.byte	0x32
	.uleb128 0x8
	.long	0xa5
	.byte	0x32
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x38
	.byte	0x1
	.byte	0x62
	.long	0x131
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x64
	.long	0x131
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0x65
	.long	0x50
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x66
	.long	0x50
	.byte	0xc
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x67
	.long	0x6d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x68
	.long	0x8a
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xe8
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x6b
	.long	0xe8
	.uleb128 0x4
	.long	.LASF20
	.byte	0x1
	.byte	0x6c
	.long	0x14d
	.uleb128 0xb
	.byte	0x8
	.long	0x137
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x6d
	.long	0x66
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x148
	.long	0x66
	.byte	0x1
	.long	0x1a0
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.value	0x149
	.long	0x6d
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0x14a
	.long	0x6d
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.value	0x14b
	.long	0x1a0
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x14d
	.long	0x6d
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x6d
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x167
	.long	0x50
	.byte	0x1
	.long	0x1e8
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.value	0x168
	.long	0x78
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x169
	.long	0x78
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x16b
	.long	0x78
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x16c
	.long	0x78
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.value	0x194
	.long	0x153
	.byte	0x1
	.long	0x212
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.value	0x195
	.long	0x50
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x197
	.long	0x50
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.value	0x135
	.long	0x66
	.byte	0x1
	.long	0x23c
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.value	0x136
	.long	0x50
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.value	0x137
	.long	0x23c
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x50
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.value	0x11a
	.long	0x66
	.byte	0x1
	.long	0x26d
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0x11b
	.long	0x26d
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.long	0x66
	.uleb128 0x10
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x142
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.value	0x12d
	.long	0x66
	.byte	0x1
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.value	0x124
	.long	0x66
	.byte	0x1
	.long	0x29e
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0x126
	.long	0x153
	.byte	0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.value	0x106
	.long	0x66
	.byte	0x1
	.long	0x2d4
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.value	0x107
	.long	0x1a0
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x109
	.long	0x6d
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x10a
	.long	0x50
	.byte	0
	.uleb128 0x12
	.long	0x29e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x306
	.uleb128 0x13
	.long	0x2af
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	0x2bb
	.long	.LLST0
	.uleb128 0x15
	.long	0x2c7
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x242
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x371
	.uleb128 0x13
	.long	0x253
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.long	0x25f
	.byte	0
	.long	0x335
	.uleb128 0x10
	.uleb128 0x10
	.byte	0
	.uleb128 0x17
	.long	0x15e
	.quad	.LBB30
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x121
	.uleb128 0x18
	.long	0x187
	.long	.LLST1
	.uleb128 0x19
	.long	0x17b
	.uleb128 0x18
	.long	0x16f
	.long	.LLST2
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.uleb128 0x14
	.long	0x193
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x280
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b1
	.uleb128 0x1b
	.long	0x291
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
	.uleb128 0x1c
	.long	0x273
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	0x212
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x453
	.uleb128 0x13
	.long	0x223
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.long	0x22f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x1e8
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.value	0x13a
	.long	0x42e
	.uleb128 0x13
	.long	0x1f9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x1b
	.long	0x205
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x18
	.long	0x223
	.long	.LLST4
	.uleb128 0x18
	.long	0x22f
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x1
	.byte	0xef
	.long	0x66
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x585
	.uleb128 0x20
	.long	.LASF45
	.byte	0x1
	.byte	0xf0
	.long	0x142
	.long	.LLST6
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.byte	0xf8
	.long	0x66
	.long	0x494
	.uleb128 0x10
	.byte	0
	.uleb128 0x22
	.long	0x242
	.quad	.LBB46
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xf8
	.long	0x4f4
	.uleb128 0x18
	.long	0x253
	.long	.LLST7
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x17
	.long	0x15e
	.quad	.LBB48
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x121
	.uleb128 0x18
	.long	0x187
	.long	.LLST8
	.uleb128 0x18
	.long	0x17b
	.long	.LLST9
	.uleb128 0x23
	.long	0x16f
	.byte	0xa
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x15
	.long	0x193
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.byte	0xd5
	.long	0x66
	.long	0x516
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.long	0x66
	.long	0x527
	.uleb128 0x10
	.byte	0
	.uleb128 0x24
	.long	0x15e
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0x1
	.byte	0xfe
	.long	0x576
	.uleb128 0x18
	.long	0x187
	.long	.LLST10
	.uleb128 0x23
	.long	0x17b
	.byte	0xa
	.uleb128 0x18
	.long	0x16f
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x14
	.long	0x193
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL22
	.long	0x212
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x15e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bf
	.uleb128 0x13
	.long	0x16f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.long	0x17b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.long	0x187
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1b
	.long	0x193
	.uleb128 0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.byte	0
	.uleb128 0x26
	.long	.LASF44
	.byte	0x1
	.value	0x153
	.long	0x66
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x63e
	.uleb128 0x27
	.long	.LASF46
	.byte	0x1
	.value	0x154
	.long	0x63e
	.long	.LLST13
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0x155
	.long	0x644
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.long	.LASF22
	.byte	0x1
	.value	0x156
	.long	0x6d
	.long	.LLST14
	.uleb128 0x27
	.long	.LASF23
	.byte	0x1
	.value	0x157
	.long	0x6d
	.long	.LLST15
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.value	0x159
	.long	0x6d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x15a
	.long	0x6d
	.long	.LLST16
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x66
	.uleb128 0xb
	.byte	0x8
	.long	0xb7
	.uleb128 0x12
	.long	0x1a6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x682
	.uleb128 0x13
	.long	0x1b7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.long	0x1c3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.long	0x1cf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	0x1db
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x26
	.long	.LASF49
	.byte	0x1
	.value	0x176
	.long	0x153
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x768
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.value	0x177
	.long	0x768
	.long	.LLST17
	.uleb128 0x27
	.long	.LASF51
	.byte	0x1
	.value	0x178
	.long	0x768
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x17a
	.long	0x5b
	.long	.LLST19
	.uleb128 0x2b
	.long	.LASF52
	.byte	0x1
	.value	0x17b
	.long	0x78
	.byte	0x41
	.uleb128 0x1d
	.long	0x1a6
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x1
	.value	0x17f
	.long	0x734
	.uleb128 0x18
	.long	0x1c3
	.long	.LLST20
	.uleb128 0x18
	.long	0x1b7
	.long	.LLST21
	.uleb128 0x1e
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x14
	.long	0x1cf
	.long	.LLST21
	.uleb128 0x14
	.long	0x1db
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x21
	.long	.LASF53
	.byte	0x2
	.byte	0
	.long	0x66
	.long	0x74a
	.uleb128 0x10
	.byte	0
	.uleb128 0x2c
	.quad	.LVL41
	.long	0xbc3
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x83
	.uleb128 0x1f
	.long	.LASF54
	.byte	0x1
	.byte	0x90
	.long	0x66
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8f
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.byte	0x92
	.long	0x6d
	.long	.LLST24
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.byte	0x93
	.long	0x6d
	.long	.LLST25
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.byte	0x94
	.long	0x6d
	.long	.LLST26
	.uleb128 0x2f
	.long	.LASF52
	.byte	0x1
	.byte	0x95
	.long	0x83
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.byte	0x96
	.long	0x83
	.long	.LLST27
	.uleb128 0x2e
	.long	.LASF34
	.byte	0x1
	.byte	0x97
	.long	0x50
	.long	.LLST28
	.uleb128 0x30
	.long	.LASF59
	.byte	0x1
	.byte	0x98
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.byte	0x99
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0xa8f
	.long	.LLST29
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.byte	0x9d
	.long	0xa96
	.long	0x820
	.uleb128 0x10
	.byte	0
	.uleb128 0x2e
	.long	.LASF62
	.byte	0x1
	.byte	0x9e
	.long	0xa96
	.long	.LLST30
	.uleb128 0x2e
	.long	.LASF63
	.byte	0x1
	.byte	0x9f
	.long	0xa96
	.long	.LLST31
	.uleb128 0x2e
	.long	.LASF64
	.byte	0x1
	.byte	0xa0
	.long	0xa96
	.long	.LLST32
	.uleb128 0x32
	.long	.LASF65
	.byte	0x2
	.byte	0
	.long	0xa9d
	.long	0x862
	.uleb128 0x33
	.long	0xa9f
	.byte	0
	.uleb128 0x32
	.long	.LASF66
	.byte	0x2
	.byte	0
	.long	0x768
	.long	0x87c
	.uleb128 0x33
	.long	0x768
	.uleb128 0x33
	.long	0xaa6
	.byte	0
	.uleb128 0x32
	.long	.LASF67
	.byte	0x2
	.byte	0
	.long	0x66
	.long	0x892
	.uleb128 0x33
	.long	0xaa6
	.uleb128 0x10
	.byte	0
	.uleb128 0x34
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x9b9
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.byte	0xc4
	.long	0x66
	.long	0x8b8
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.byte	0xc5
	.long	0x66
	.long	0x8c9
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF44
	.byte	0x1
	.byte	0xd1
	.long	0x66
	.long	0x8da
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF43
	.byte	0x1
	.byte	0xd2
	.long	0x66
	.long	0x8eb
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.byte	0xd5
	.long	0x66
	.long	0x8fc
	.uleb128 0x10
	.byte	0
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.byte	0xd9
	.long	0x66
	.long	0x90d
	.uleb128 0x10
	.byte	0
	.uleb128 0x35
	.long	0x273
	.quad	.LBB82
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xc4
	.uleb128 0x24
	.long	0x280
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.byte	0x1
	.byte	0xc5
	.long	0x957
	.uleb128 0x1e
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x14
	.long	0x291
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LVL56
	.long	0x682
	.long	0x975
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x36
	.quad	.LVL60
	.long	0x5bf
	.long	0x9ab
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x25
	.quad	.LVL61
	.long	0x453
	.byte	0
	.uleb128 0x36
	.quad	.LVL43
	.long	0xbdd
	.long	0x9d0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.quad	.LVL46
	.long	0xbdd
	.long	0x9e7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.quad	.LVL48
	.long	0xbee
	.long	0x9ff
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x36
	.quad	.LVL50
	.long	0xbee
	.long	0xa17
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x36
	.quad	.LVL51
	.long	0xbdd
	.long	0xa2e
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.quad	.LVL66
	.long	0xbdd
	.long	0xa45
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.quad	.LVL69
	.long	0xc03
	.long	0xa73
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.quad	.LVL73
	.long	0xc03
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
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
	.uleb128 0x38
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xb
	.byte	0x8
	.long	0xaac
	.uleb128 0x39
	.long	0x83
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.byte	0x7f
	.long	0x66
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf1
	.uleb128 0x21
	.long	.LASF54
	.byte	0x1
	.byte	0x81
	.long	0x66
	.long	0xae3
	.uleb128 0x10
	.byte	0
	.uleb128 0x3a
	.quad	.LVL74
	.long	0x76e
	.byte	0
	.uleb128 0x12
	.long	0x1e8
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1b
	.uleb128 0x13
	.long	0x1f9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	0x205
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x3b
	.long	.LASF73
	.byte	0x1
	.byte	0x87
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	IntGlob
	.uleb128 0x3b
	.long	.LASF74
	.byte	0x1
	.byte	0x88
	.long	0x153
	.uleb128 0x9
	.byte	0x3
	.quad	BoolGlob
	.uleb128 0x3b
	.long	.LASF75
	.byte	0x1
	.byte	0x89
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	Char1Glob
	.uleb128 0x3b
	.long	.LASF76
	.byte	0x1
	.byte	0x8a
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	Char2Glob
	.uleb128 0x3b
	.long	.LASF77
	.byte	0x1
	.byte	0x8b
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x3b
	.long	.LASF78
	.byte	0x1
	.byte	0x8c
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x3b
	.long	.LASF79
	.byte	0x1
	.byte	0x8d
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlb
	.uleb128 0x3b
	.long	.LASF80
	.byte	0x1
	.byte	0x8e
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlbNext
	.uleb128 0x32
	.long	.LASF53
	.byte	0x2
	.byte	0
	.long	0x66
	.long	0xbdd
	.uleb128 0x33
	.long	0xaa6
	.uleb128 0x33
	.long	0xaa6
	.byte	0
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.byte	0x9d
	.long	0xa96
	.long	0xbee
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.long	.LASF65
	.byte	0x2
	.byte	0
	.long	0xa9d
	.long	0xc03
	.uleb128 0x33
	.long	0xa9f
	.byte	0
	.uleb128 0x3c
	.long	.LASF67
	.byte	0x2
	.byte	0
	.long	0x66
	.uleb128 0x33
	.long	0xaa6
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.quad	.LVL1
	.quad	.LVL2
	.value	0x3
	.byte	0x70
	.sleb128 10
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL3
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.quad	.LVL3
	.quad	.LVL4
	.value	0x3
	.byte	0x70
	.sleb128 9
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x50
	.quad	.LVL5
	.quad	.LVL6
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
	.quad	.LVL8
	.quad	.LVL9
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL10
	.value	0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	.LVL12
	.quad	.LFE4
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL8
	.quad	.LVL10
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL11
	.quad	.LFE4
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8
	.quad	.LVL10
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	.LVL11
	.quad	.LFE4
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL17
	.quad	.LVL21
	.value	0x1
	.byte	0x55
	.quad	.LVL21
	.quad	.LVL26
	.value	0x1
	.byte	0x53
	.quad	.LVL26
	.quad	.LFE2
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL18
	.quad	.LVL20
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL19
	.quad	.LVL22-1
	.value	0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL19
	.quad	.LVL22-1
	.value	0x9
	.byte	0x3
	.quad	IntGlob
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23
	.quad	.LVL25
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL26
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	.LVL26
	.quad	.LFE2
	.value	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x2
	.byte	0x70
	.sleb128 16
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL23
	.quad	.LVL24
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
.LLST13:
	.quad	.LVL28
	.quad	.LVL31
	.value	0x1
	.byte	0x55
	.quad	.LVL31
	.quad	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL28
	.quad	.LVL35
	.value	0x1
	.byte	0x51
	.quad	.LVL35
	.quad	.LVL37
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL37
	.quad	.LFE9
	.value	0x3
	.byte	0x79
	.sleb128 -6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL28
	.quad	.LVL32
	.value	0x1
	.byte	0x52
	.quad	.LVL32
	.quad	.LVL33
	.value	0x2
	.byte	0x7a
	.sleb128 0
	.quad	.LVL33
	.quad	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL30
	.quad	.LVL33
	.value	0x1
	.byte	0x58
	.quad	.LVL33
	.quad	.LVL34
	.value	0x3
	.byte	0x71
	.sleb128 6
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL36
	.value	0x1
	.byte	0x59
	.quad	.LVL36
	.quad	.LFE9
	.value	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x1
	.byte	0x55
	.quad	.LVL41-1
	.quad	.LVL42
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL42
	.quad	.LFE11
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x1
	.byte	0x54
	.quad	.LVL41-1
	.quad	.LVL42
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL42
	.quad	.LFE11
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL42
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL42
	.quad	.LFE11
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x2
	.byte	0x74
	.sleb128 2
	.quad	.LVL42
	.quad	.LFE11
	.value	0x2
	.byte	0x74
	.sleb128 2
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x2
	.byte	0x75
	.sleb128 1
	.quad	.LVL42
	.quad	.LFE11
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL54
	.quad	.LVL59
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL59
	.quad	.LFE1
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL54
	.quad	.LVL64
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL64
	.quad	.LFE1
	.value	0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL52
	.quad	.LVL59
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL59
	.quad	.LVL64
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL64
	.quad	.LFE1
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL64
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL55
	.quad	.LVL62
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL44
	.quad	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL64
	.value	0x9
	.byte	0xc
	.long	0x5f5e100
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL65
	.value	0x9
	.byte	0xc
	.long	0x5f5e101
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL67
	.value	0x9
	.byte	0xc
	.long	0x5f5e100
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL49
	.value	0x1
	.byte	0x53
	.quad	.LVL52
	.quad	.LVL72
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL68
	.quad	.LVL70
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL47
	.quad	.LVL71
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL53
	.quad	.LVL56-1
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
	.quad	.LVL56-1
	.quad	.LVL57
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.quad	.LVL58
	.quad	.LFE1
	.value	0x2
	.byte	0x31
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
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB30
	.quad	.LBE30
	.quad	.LBB33
	.quad	.LBE33
	.quad	0
	.quad	0
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB55
	.quad	.LBE55
	.quad	0
	.quad	0
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB51
	.quad	.LBE51
	.quad	0
	.quad	0
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB62
	.quad	.LBE62
	.quad	0
	.quad	0
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB85
	.quad	.LBE85
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB0
	.quad	.LFE0
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
.LASF47:
	.string	"Array2Par"
.LASF10:
	.string	"String30"
.LASF38:
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
.LASF48:
	.string	"IntIndex"
.LASF33:
	.string	"EnumParIn"
.LASF69:
	.string	"unsigned int"
.LASF36:
	.string	"EnumParOut"
.LASF44:
	.string	"Proc8"
.LASF20:
	.string	"RecordPtr"
.LASF66:
	.string	"strcpy"
.LASF79:
	.string	"PtrGlb"
.LASF19:
	.string	"RecordType"
.LASF71:
	.string	"long unsigned int"
.LASF54:
	.string	"Proc0"
.LASF29:
	.string	"IntLoc"
.LASF63:
	.string	"benchtime"
.LASF34:
	.string	"EnumLoc"
.LASF39:
	.string	"Proc4"
.LASF64:
	.string	"nulltime"
.LASF7:
	.string	"OneToFifty"
.LASF5:
	.string	"Enumeration"
.LASF35:
	.string	"Proc6"
.LASF25:
	.string	"Proc7"
.LASF72:
	.string	"main"
.LASF18:
	.string	"StringComp"
.LASF45:
	.string	"PtrParIn"
.LASF30:
	.string	"CharLoc1"
.LASF52:
	.string	"CharLoc"
.LASF26:
	.string	"Func1"
.LASF49:
	.string	"Func2"
.LASF32:
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
.LASF27:
	.string	"CharPar1"
.LASF28:
	.string	"CharPar2"
.LASF53:
	.string	"strcmp"
.LASF11:
	.string	"sizetype"
.LASF43:
	.string	"Proc1"
.LASF41:
	.string	"Proc2"
.LASF37:
	.string	"Proc3"
.LASF24:
	.string	"IntParOut"
.LASF81:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-4) -mtune=generic -march=x86-64 -g -O2"
.LASF9:
	.string	"char"
.LASF13:
	.string	"Array2Dim"
.LASF15:
	.string	"Discr"
.LASF31:
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
.LASF46:
	.string	"Array1Par"
.LASF14:
	.string	"PtrComp"
.LASF42:
	.string	"IntParIO"
.LASF12:
	.string	"Array1Dim"
.LASF40:
	.string	"BoolLoc"
.LASF68:
	.string	"Proc5"
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
