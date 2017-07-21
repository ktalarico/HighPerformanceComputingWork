	.file	"drystone.c"
# GNU C (GCC) version 4.8.5 20150623 (Red Hat 4.8.5-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.8.5 20150623 (Red Hat 4.8.5-4), GMP version 6.0.0, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  drystone.c -mtune=generic -march=x86-64
# -auxbase-strip dhry3.S -g -O3 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
# -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
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
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4
# -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
.Ltext0:
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.file 1 "drystone.c"
	.loc 1 241 0
	.cfi_startproc
.LVL0:
	.loc 1 244 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.13
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.2120
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
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, D.2120
	.loc 1 245 0
	movl	$5, 16(%rdi)	#, PtrParIn_3(D)->IntComp
.LBB47:
.LBB48:
	.loc 1 289 0
	movl	IntGlob(%rip), %ecx	# IntGlob, IntGlob.17
.LBE48:
.LBE47:
	.loc 1 247 0
	movq	%rdx, (%rdx)	# D.2120, _8->PtrComp
	.loc 1 246 0
	movl	$5, 16(%rdx)	#, _8->IntComp
	.loc 1 248 0
	movq	(%rdi), %rdx	# PtrParIn_3(D)->PtrComp, PtrParIn_3(D)->PtrComp
.LBB53:
.LBB51:
	.loc 1 286 0
	movq	(%rax), %rax	# PtrGlb.13_5->PtrComp, D.2120
.LBE51:
.LBE53:
	.loc 1 248 0
	movq	(%rdx), %rdx	# _11->PtrComp, D.2120
.LVL1:
.LBB54:
.LBB52:
	.loc 1 286 0
	movq	%rax, (%rdx)	# D.2120, MEM[(struct RecordType * *)_12]
	.loc 1 289 0
	movq	PtrGlb(%rip), %rdx	# PtrGlb, PtrGlb.16
.LVL2:
.LBB49:
.LBB50:
	.loc 1 336 0
	leal	12(%rcx), %eax	#, tmp85
	movl	%eax, 16(%rdx)	# tmp85, MEM[(OneToFifty *)PtrGlb.16_29 + 16B]
.LBE50:
.LBE49:
.LBE52:
.LBE54:
	.loc 1 249 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.2120
	movl	8(%rax), %esi	# _14->Discr,
	testl	%esi, %esi	#
	je	.L12	#,
	.loc 1 257 0
	movq	(%rax), %rdx	# *_14, *_14
.LVL3:
	movq	%rdx, (%rdi)	# *_14, *PtrParIn_3(D)
	movq	8(%rax), %rdx	# *_14, *_14
	movq	%rdx, 8(%rdi)	# *_14, *PtrParIn_3(D)
	movq	16(%rax), %rdx	# *_14, *_14
	movq	%rdx, 16(%rdi)	# *_14, *PtrParIn_3(D)
	movq	24(%rax), %rdx	# *_14, *_14
	movq	%rdx, 24(%rdi)	# *_14, *PtrParIn_3(D)
	movq	32(%rax), %rdx	# *_14, *_14
	movq	%rdx, 32(%rdi)	# *_14, *PtrParIn_3(D)
	movq	40(%rax), %rdx	# *_14, *_14
	movq	%rdx, 40(%rdi)	# *_14, *PtrParIn_3(D)
	movq	48(%rax), %rax	# *_14, *_14
	movq	%rax, 48(%rdi)	# *_14, *PtrParIn_3(D)
	.loc 1 260 0
	ret
.LVL4:
	.p2align 4,,10
	.p2align 3
.L12:
.LBB55:
	.loc 1 252 0
	movl	12(%rdi), %esi	# PtrParIn_3(D)->EnumComp, D.2121
	.loc 1 251 0
	movl	$6, 16(%rax)	#, _14->IntComp
.LVL5:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 410 0
	cmpl	$2, %esi	#, D.2121
	je	.L3	#,
.LBE59:
.LBE58:
	.loc 1 316 0
	cmpl	$1, %esi	#, D.2121
	movl	$3, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	je	.L5	#,
	jb	.L10	#,
	cmpl	$4, %esi	#, D.2121
	jne	.L4	#,
	.loc 1 324 0
	movl	$2, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 322 0
	movl	$1, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
.L4:
.LBE57:
.LBE56:
	.loc 1 253 0
	movq	(%rdx), %rdx	# PtrGlb.16_29->PtrComp, D.2120
.LVL6:
	movq	%rdx, (%rax)	# D.2120, _14->PtrComp
	.loc 1 254 0
	movq	(%rdi), %rax	# PtrParIn_3(D)->PtrComp, D.2120
.LVL7:
.LBB63:
.LBB64:
	.loc 1 336 0
	addl	$12, 16(%rax)	#, MEM[(OneToFifty *)_24 + 16B]
.LVL8:
	ret
.LVL9:
	.p2align 4,,10
	.p2align 3
.L5:
.LBE64:
.LBE63:
.LBB65:
.LBB62:
.LBB60:
.LBB61:
	.loc 1 319 0
	cmpl	$100, %ecx	#, IntGlob.17
	jle	.L4	#,
.LVL10:
.L10:
	movl	$0, 12(%rax)	#, MEM[(Enumeration *)_14 + 12B]
	jmp	.L4	#
.LBE61:
.LBE60:
.LBE62:
.LBE65:
.LBE55:
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
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
.LVL11:
	.loc 1 163 0
	xorl	%edi, %edi	#
	.loc 1 161 0
	movq	%rax, %rbx	#, starttime
.LVL12:
	.loc 1 163 0
	xorl	%eax, %eax	#
.LVL13:
	call	time	#
.LVL14:
	.loc 1 176 0
	movl	$56, %edi	#,
	.loc 1 163 0
	movq	%rax, %rbp	#, nulltime
	.loc 1 176 0
	call	malloc	#
.LVL15:
	.loc 1 177 0
	movl	$56, %edi	#,
	.loc 1 163 0
	subq	%rbx, %rbp	# starttime, nulltime
.LVL16:
	.loc 1 176 0
	movq	%rax, PtrGlbNext(%rip)	# tmp87, PtrGlbNext
	movq	%rax, %rbx	#, tmp87
.LVL17:
	.loc 1 177 0
	call	malloc	#
.LVL18:
	.loc 1 182 0
	movabsq	$5642821575076104260, %rdi	#, tmp125
	movl	$18254, %ecx	#,
	.loc 1 177 0
	movq	%rax, PtrGlb(%rip)	# tmp88, PtrGlb
	.loc 1 182 0
	movq	%rdi, 20(%rax)	# tmp125, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$4706902966564560965, %rdi	#, tmp126
	.loc 1 178 0
	movq	%rbx, (%rax)	# tmp87, MEM[(struct RecordType *)PtrGlb.1_17].PtrComp
	.loc 1 182 0
	movq	%rdi, 28(%rax)	# tmp126, MEM[(void *)PtrGlb.1_17 + 20B]
	movabsq	$2325349785699101773, %rdi	#, tmp127
	.loc 1 179 0
	movl	$0, 8(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].Discr
	.loc 1 182 0
	movq	%rdi, 36(%rax)	# tmp127, MEM[(void *)PtrGlb.1_17 + 20B]
	.loc 1 180 0
	movl	$2, 12(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].EnumComp
	.loc 1 188 0
	xorl	%edi, %edi	#
	.loc 1 181 0
	movl	$40, 16(%rax)	#, MEM[(struct RecordType *)PtrGlb.1_17].IntComp
	.loc 1 182 0
	movl	$1230132307, 44(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movw	%cx, 48(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	movb	$0, 50(%rax)	#, MEM[(void *)PtrGlb.1_17 + 20B]
	.loc 1 188 0
	xorl	%eax, %eax	#
	call	time	#
.LVL19:
	cmpb	$82, 1(%rsp)	#, MEM[(char *)&String1Loc + 1B]
	movq	%rax, %r12	#, starttime
.LVL20:
.LBB91:
	.loc 1 200 0
	movabsq	$5642821575076104260, %rax	#, tmp128
.LVL21:
	movq	%rax, 32(%rsp)	# tmp128, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp129
	movl	$18254, %esi	#,
	movq	%rax, 40(%rsp)	# tmp129, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp130
.LBB92:
.LBB93:
	.loc 1 303 0
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 304 0
	movl	$0, BoolGlob(%rip)	#, BoolGlob
.LVL22:
.LBE93:
.LBE92:
.LBB95:
.LBB96:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
.LVL23:
.LBE96:
.LBE95:
	.loc 1 200 0
	movq	%rax, 48(%rsp)	# tmp130, MEM[(char * {ref-all})&String2Loc]
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movw	%si, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
.LVL24:
	jne	.L23	#,
.L21:
.LVL25:
	jmp	.L21	#
.LVL26:
.L23:
	movl	$100000000, %ebx	#, D.2178
.LVL27:
	.p2align 4,,10
	.p2align 3
.L15:
.LBB98:
.LBB99:
.LBB100:
	.loc 1 394 0
	leaq	32(%rsp), %rsi	#, tmp132
.LVL28:
	movq	%rsp, %rdi	#,
	call	strcmp	#
.LVL29:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 210 0
	movq	PtrGlb(%rip), %rdi	# PtrGlb,
	xorl	%edx, %edx	# D.2181
	testl	%eax, %eax	# D.2179
	setle	%dl	#, D.2181
	xorl	%eax, %eax	#
.LBB101:
.LBB102:
	.loc 1 354 0
	addl	$1, Array2Glob+1660(%rip)	#, Array2Glob
.LBE102:
.LBE101:
	.loc 1 202 0
	movl	%edx, BoolGlob(%rip)	# D.2181, BoolGlob
.LVL30:
.LBB104:
.LBB103:
	.loc 1 349 0
	movl	$7, Array1Glob+32(%rip)	#, MEM[(int *)&Array1Glob + 32B]
	.loc 1 350 0
	movl	$7, Array1Glob+36(%rip)	#, MEM[(int *)&Array1Glob + 36B]
	.loc 1 351 0
	movl	$8, Array1Glob+152(%rip)	#, MEM[(int *)&Array1Glob + 152B]
.LVL31:
	.loc 1 353 0
	movl	$8, Array2Glob+1664(%rip)	#, Array2Glob
.LVL32:
	movl	$8, Array2Glob+1668(%rip)	#, Array2Glob
.LVL33:
	.loc 1 355 0
	movl	$7, Array2Glob+5744(%rip)	#, Array2Glob
	.loc 1 356 0
	movl	$5, IntGlob(%rip)	#, IntGlob
.LBE103:
.LBE104:
	.loc 1 210 0
	call	Proc1	#
.LVL34:
	.loc 1 211 0
	movzbl	Char2Glob(%rip), %ecx	# Char2Glob, Char2Glob.11
	cmpb	$64, %cl	#, Char2Glob.11
	jle	.L19	#,
	movl	$65, %edx	#, CharIndex
.LVL35:
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx	#, CharIndex
.LVL36:
	cmpb	%dl, %cl	# CharIndex, Char2Glob.11
	jge	.L20	#,
.LVL37:
.L19:
.LBE91:
	.loc 1 193 0
	subl	$1, %ebx	#, D.2178
	je	.L24	#,
.LBB107:
	.loc 1 200 0
	movabsq	$5642821575076104260, %rax	#, tmp133
.LBB105:
.LBB94:
	.loc 1 303 0
	movb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 304 0
	movl	$0, BoolGlob(%rip)	#, BoolGlob
.LVL38:
.LBE94:
.LBE105:
	.loc 1 200 0
	movq	%rax, 32(%rsp)	# tmp133, MEM[(char * {ref-all})&String2Loc]
	movabsq	$4706902966564560965, %rax	#, tmp134
.LBB106:
.LBB97:
	.loc 1 298 0
	movb	$66, Char2Glob(%rip)	#, Char2Glob
.LVL39:
.LBE97:
.LBE106:
	.loc 1 200 0
	movq	%rax, 40(%rsp)	# tmp134, MEM[(char * {ref-all})&String2Loc]
	movabsq	$2325069237881678925, %rax	#, tmp135
	movl	$1230132307, 56(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	movq	%rax, 48(%rsp)	# tmp135, MEM[(char * {ref-all})&String2Loc]
	movl	$18254, %eax	#,
	movb	$0, 62(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
.LVL40:
	movw	%ax, 60(%rsp)	#, MEM[(char * {ref-all})&String2Loc]
	jmp	.L15	#
.LVL41:
.L24:
.LBE107:
	.loc 1 224 0
	xorl	%edi, %edi	#
	xorl	%eax, %eax	#
	call	time	#
.LVL42:
	movq	%rax, %rbx	#, benchtime
	.loc 1 225 0
	movl	$100000000, %esi	#,
	movl	$.LC0, %edi	#,
	.loc 1 224 0
	subq	%r12, %rbx	# starttime, benchtime
	.loc 1 225 0
	xorl	%eax, %eax	#
	.loc 1 224 0
	subq	%rbp, %rbx	# nulltime, benchtime
.LVL43:
	.loc 1 225 0
	movq	%rbx, %rdx	# benchtime,
	call	printf	#
.LVL44:
	.loc 1 226 0
	movl	$100000000, %eax	#, tmp100
	.loc 1 237 0
	addq	$64, %rsp	#,
	.cfi_def_cfa_offset 32
.LVL45:
	.loc 1 226 0
	movl	$.LC1, %edi	#,
	cqto
	idivq	%rbx	# benchtime
	.loc 1 237 0
	popq	%rbx	#
	.cfi_def_cfa_offset 24
.LVL46:
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL47:
	popq	%r12	#
	.cfi_def_cfa_offset 8
.LVL48:
	.loc 1 226 0
	movq	%rax, %rsi	# D.2175, D.2175
	xorl	%eax, %eax	#
	jmp	printf	#
.LVL49:
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
.LVL50:
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.loc 1 264 0
	.cfi_startproc
.LVL51:
	.loc 1 271 0
	cmpb	$65, Char1Glob(%rip)	#, Char1Glob
	.loc 1 268 0
	movl	(%rdi), %eax	# *IntParIO_3(D), D.2189
.LVL52:
	.loc 1 271 0
	je	.L29	#,
.LVL53:
	.loc 1 280 0
	rep ret
.LVL54:
	.p2align 4,,10
	.p2align 3
.L29:
	.loc 1 273 0
	addl	$9, %eax	#, D.2189
.LVL55:
	.loc 1 274 0
	subl	IntGlob(%rip), %eax	# IntGlob, D.2189
.LVL56:
	movl	%eax, (%rdi)	# D.2189, *IntParIO_3(D)
.LVL57:
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
.LVL58:
	.loc 1 285 0
	movq	PtrGlb(%rip), %rax	# PtrGlb, PtrGlb.16
	testq	%rax, %rax	# PtrGlb.16
	je	.L31	#,
	.loc 1 286 0
	movq	(%rax), %rax	# PtrGlb.16_3->PtrComp, D.2192
	movl	IntGlob(%rip), %ecx	# IntGlob, tmp67
	movq	%rax, (%rdi)	# D.2192, *PtrParOut_5(D)
	movq	PtrGlb(%rip), %rax	# PtrGlb, D.2193
	leal	12(%rcx), %edx	#, D.2194
.LVL59:
.LBB108:
.LBB109:
	.loc 1 336 0
	movl	%edx, 16(%rax)	# D.2194, MEM[(OneToFifty *)_15 + 16B]
.LVL60:
.LBE109:
.LBE108:
	.loc 1 290 0
	ret
.LVL61:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 288 0
	xorl	%eax, %eax	# D.2193
.LVL62:
	movl	$112, %edx	#, D.2194
	movl	$100, IntGlob(%rip)	#, IntGlob
.LBB111:
.LBB110:
	.loc 1 336 0
	movl	%edx, 16(%rax)	# D.2194, MEM[(OneToFifty *)_15 + 16B]
.LVL63:
.LBE110:
.LBE111:
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
.LVL64:
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
.LVL65:
.LBB118:
.LBB119:
	.loc 1 410 0
	cmpl	$2, %edi	#, EnumParIn
	je	.L36	#,
.LBE119:
.LBE118:
	.loc 1 316 0
	cmpl	$1, %edi	#, EnumParIn
	movl	$3, (%rsi)	#, *EnumParOut_3(D)
	je	.L38	#,
	jb	.L42	#,
	cmpl	$4, %edi	#, EnumParIn
	jne	.L43	#,
	.loc 1 324 0
	movl	$2, (%rsi)	#, *EnumParOut_3(D)
.L41:
	.loc 1 326 0
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L38:
.LVL66:
.LBB120:
.LBB121:
	.loc 1 319 0
	cmpl	$100, IntGlob(%rip)	#, IntGlob
	jle	.L41	#,
.LVL67:
.L42:
	movl	$0, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L36:
.LBE121:
.LBE120:
	.loc 1 322 0
	movl	$1, (%rsi)	#, *EnumParOut_3(D)
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	rep ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB8:
	.loc 1 332 0
	.cfi_startproc
.LVL68:
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
.LVL69:
	.loc 1 348 0
	leal	5(%rdx), %r8d	#, IntIndex
.LVL70:
	.loc 1 349 0
	movslq	%r8d, %r9	# IntIndex, D.2219
	leaq	0(,%r9,4), %rax	#, D.2219
	leaq	(%rdi,%rax), %r10	#, D.2220
	movl	%ecx, (%r10)	# IntParI2, *_8
	.loc 1 350 0
	movl	%ecx, 4(%rdi,%rax)	# IntParI2, *_14
	.loc 1 351 0
	movl	%r8d, 120(%rdi,%rax)	# IntIndex, *_18
.LVL71:
	.loc 1 355 0
	addq	%rsi, %rax	# Array2Par, tmp92
	imulq	$204, %r9, %rdi	#, D.2219, D.2219
.LVL72:
	leaq	(%rsi,%rdi), %rcx	#, D.2218
.LVL73:
	.loc 1 353 0
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
.LVL74:
	.loc 1 352 0
	leal	6(%rdx), %r9d	#, IntIndex
.LVL75:
	.loc 1 354 0
	addl	$4, %edx	#, D.2222
.LVL76:
	movslq	%edx, %rdx	# D.2222, D.2221
	.loc 1 353 0
	movslq	%r9d, %r9	# IntIndex, IntIndex
	movl	%r8d, (%rcx,%r9,4)	# IntIndex, *_2
.LVL77:
	.loc 1 354 0
	addl	$1, (%rcx,%rdx,4)	#, MEM[(int[51] *)_40]
	.loc 1 355 0
	movl	(%r10), %edx	# *_8, D.2222
.LVL78:
	movl	%edx, 4080(%rdi,%rax)	# D.2222, *_33
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
.LVL79:
	.loc 1 368 0
	xorl	%eax, %eax	# D.2225
	cmpb	%sil, %dil	# CharPar2, CharPar1
	sete	%al	#, D.2225
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
.LVL80:
	movzbl	1(%rdi), %eax	# MEM[(char *)StrParI1_9(D) + 1B], tmp71
	cmpb	%al, 2(%rsi)	# tmp71, MEM[(char *)StrParI2_5(D) + 2B]
	jne	.L48	#,
.L49:
.LVL81:
	jmp	.L49	#
.LVL82:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 377 0
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
.LBB122:
	.loc 1 394 0
	call	strcmp	#
.LVL83:
	testl	%eax, %eax	# D.2232
	setg	%al	#, D.2234
.LBE122:
	.loc 1 402 0
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
.LBB123:
	.loc 1 394 0
	movzbl	%al, %eax	# D.2234, D.2234
.LBE123:
	.loc 1 402 0
	ret
	.cfi_endproc
.LFE11:
	.size	Func2, .-Func2
	.p2align 4,,15
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.loc 1 406 0
	.cfi_startproc
.LVL84:
	.loc 1 410 0
	xorl	%eax, %eax	# D.2237
	cmpl	$2, %edi	#, EnumParIn
	sete	%al	#, D.2237
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
	.long	0xcf1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0x190
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
	.long	.LASF83
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
	.long	0x26f
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0x11b
	.long	0x26f
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.long	0x66
	.byte	0
	.uleb128 0x10
	.uleb128 0x10
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x142
	.uleb128 0x11
	.long	.LASF67
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
	.long	0x2a0
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
	.long	0x2d6
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
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.value	0x153
	.long	0x66
	.byte	0x1
	.long	0x330
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0x154
	.long	0x330
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.value	0x155
	.long	0x336
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.value	0x156
	.long	0x6d
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0x157
	.long	0x6d
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x159
	.long	0x6d
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.value	0x15a
	.long	0x6d
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x66
	.uleb128 0xb
	.byte	0x8
	.long	0xb7
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0xef
	.long	0x66
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f5
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0xf0
	.long	0x142
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xf8
	.long	0x66
	.long	0x37b
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	0x242
	.quad	.LBB47
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf8
	.long	0x3e9
	.uleb128 0x16
	.long	0x253
	.long	.LLST0
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.long	0x15e
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.byte	0x1
	.value	0x121
	.uleb128 0x16
	.long	0x187
	.long	.LLST1
	.uleb128 0x19
	.long	0x17b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.long	0x16f
	.byte	0xa
	.uleb128 0x1b
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x1c
	.long	0x193
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0xd5
	.long	0x66
	.long	0x40b
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.long	0x66
	.long	0x41c
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	0x212
	.quad	.LBB56
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xfc
	.long	0x4a5
	.uleb128 0x16
	.long	0x22f
	.long	.LLST2
	.uleb128 0x19
	.long	0x223
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x1e8
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.byte	0x1
	.value	0x13a
	.long	0x480
	.uleb128 0x19
	.long	0x1f9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x1e
	.long	0x205
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x16
	.long	0x223
	.long	.LLST3
	.uleb128 0x16
	.long	0x22f
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x15e
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x1
	.byte	0xfe
	.uleb128 0x16
	.long	0x187
	.long	.LLST5
	.uleb128 0x16
	.long	0x17b
	.long	.LLST6
	.uleb128 0x16
	.long	0x16f
	.long	.LLST7
	.uleb128 0x1b
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x20
	.long	0x193
	.long	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.value	0x176
	.long	0x153
	.byte	0x1
	.long	0x548
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.value	0x177
	.long	0x548
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.value	0x178
	.long	0x548
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x17a
	.long	0x5b
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.value	0x17b
	.long	0x78
	.uleb128 0x21
	.uleb128 0xf
	.long	.LASF51
	.byte	0x2
	.byte	0
	.long	0x66
	.byte	0
	.uleb128 0x10
	.uleb128 0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x83
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x90
	.long	0x66
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d6
	.uleb128 0x22
	.long	.LASF54
	.byte	0x1
	.byte	0x92
	.long	0x6d
	.long	.LLST9
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.byte	0x93
	.long	0x6d
	.long	.LLST10
	.uleb128 0x22
	.long	.LASF56
	.byte	0x1
	.byte	0x94
	.long	0x6d
	.long	.LLST11
	.uleb128 0x23
	.long	.LASF50
	.byte	0x1
	.byte	0x95
	.long	0x83
	.uleb128 0x22
	.long	.LASF57
	.byte	0x1
	.byte	0x96
	.long	0x83
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF34
	.byte	0x1
	.byte	0x97
	.long	0x50
	.long	.LLST13
	.uleb128 0x24
	.long	.LASF58
	.byte	0x1
	.byte	0x98
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF59
	.byte	0x1
	.byte	0x99
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x8d6
	.long	.LLST14
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x9d
	.long	0x8dd
	.long	0x600
	.uleb128 0x10
	.byte	0
	.uleb128 0x22
	.long	.LASF61
	.byte	0x1
	.byte	0x9e
	.long	0x8dd
	.long	.LLST15
	.uleb128 0x22
	.long	.LASF62
	.byte	0x1
	.byte	0x9f
	.long	0x8dd
	.long	.LLST16
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xa0
	.long	0x8dd
	.long	.LLST17
	.uleb128 0x26
	.long	.LASF64
	.byte	0x2
	.byte	0
	.long	0x8e4
	.long	0x642
	.uleb128 0x27
	.long	0x8e6
	.byte	0
	.uleb128 0x26
	.long	.LASF65
	.byte	0x2
	.byte	0
	.long	0x548
	.long	0x65c
	.uleb128 0x27
	.long	0x548
	.uleb128 0x27
	.long	0x8ed
	.byte	0
	.uleb128 0x26
	.long	.LASF66
	.byte	0x2
	.byte	0
	.long	0x66
	.long	0x672
	.uleb128 0x27
	.long	0x8ed
	.uleb128 0x10
	.byte	0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x70
	.long	0x800
	.uleb128 0x14
	.long	.LASF67
	.byte	0x1
	.byte	0xc4
	.long	0x66
	.long	0x68c
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF39
	.byte	0x1
	.byte	0xc5
	.long	0x66
	.long	0x69d
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.byte	0xd1
	.long	0x66
	.long	0x6ae
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0xd2
	.long	0x66
	.long	0x6bf
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0xd5
	.long	0x66
	.long	0x6d0
	.uleb128 0x10
	.byte	0
	.uleb128 0x14
	.long	.LASF41
	.byte	0x1
	.byte	0xd9
	.long	0x66
	.long	0x6e1
	.uleb128 0x10
	.byte	0
	.uleb128 0x29
	.long	0x275
	.quad	.LBB92
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xc4
	.uleb128 0x15
	.long	0x282
	.quad	.LBB95
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xc5
	.long	0x71b
	.uleb128 0x17
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x20
	.long	0x293
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x4f5
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.byte	0x1
	.byte	0xca
	.long	0x799
	.uleb128 0x16
	.long	0x512
	.long	.LLST19
	.uleb128 0x16
	.long	0x506
	.long	.LLST20
	.uleb128 0x1b
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x20
	.long	0x51e
	.long	.LLST21
	.uleb128 0x20
	.long	0x52a
	.long	.LLST22
	.uleb128 0x1b
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x2b
	.quad	.LVL29
	.long	0xca2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d6
	.quad	.LBB101
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xd1
	.long	0x7f2
	.uleb128 0x19
	.long	0x2e7
	.uleb128 0xa
	.byte	0x3
	.quad	Array1Glob
	.byte	0x9f
	.uleb128 0x19
	.long	0x2f3
	.uleb128 0xa
	.byte	0x3
	.quad	Array2Glob
	.byte	0x9f
	.uleb128 0x1a
	.long	0x30b
	.byte	0x7
	.uleb128 0x1a
	.long	0x2ff
	.byte	0x3
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x1c
	.long	0x317
	.byte	0x8
	.uleb128 0x20
	.long	0x323
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL34
	.long	0x33c
	.byte	0
	.uleb128 0x2e
	.quad	.LVL11
	.long	0xcbc
	.long	0x817
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL14
	.long	0xcbc
	.long	0x82e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL15
	.long	0xccd
	.long	0x846
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.quad	.LVL18
	.long	0xccd
	.long	0x85e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.quad	.LVL19
	.long	0xcbc
	.long	0x875
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL42
	.long	0xcbc
	.long	0x88c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL44
	.long	0xce2
	.long	0x8ba
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL49
	.long	0xce2
	.uleb128 0x2c
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
	.long	.LASF68
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF69
	.uleb128 0x30
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0xb
	.byte	0x8
	.long	0x8f3
	.uleb128 0x31
	.long	0x83
	.uleb128 0x12
	.long	.LASF71
	.byte	0x1
	.byte	0x7f
	.long	0x66
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x938
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x81
	.long	0x66
	.long	0x92a
	.uleb128 0x10
	.byte	0
	.uleb128 0x32
	.quad	.LVL50
	.long	0x54e
	.byte	0
	.uleb128 0x33
	.long	0x2a0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x96a
	.uleb128 0x19
	.long	0x2b1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.long	0x2bd
	.long	.LLST24
	.uleb128 0x1c
	.long	0x2c9
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x242
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d3
	.uleb128 0x19
	.long	0x253
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x34
	.long	0x25f
	.long	0x997
	.uleb128 0x10
	.byte	0
	.uleb128 0x35
	.long	0x15e
	.quad	.LBB108
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.value	0x121
	.uleb128 0x16
	.long	0x187
	.long	.LLST25
	.uleb128 0x36
	.long	0x17b
	.uleb128 0x16
	.long	0x16f
	.long	.LLST26
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x20
	.long	0x193
	.long	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x282
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xa13
	.uleb128 0x1e
	.long	0x293
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
	.uleb128 0x37
	.long	0x275
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	0x212
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xab5
	.uleb128 0x19
	.long	0x223
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x22f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x1e8
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.byte	0x1
	.value	0x13a
	.long	0xa90
	.uleb128 0x19
	.long	0x1f9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x1e
	.long	0x205
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x16
	.long	0x223
	.long	.LLST28
	.uleb128 0x16
	.long	0x22f
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x15e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xaef
	.uleb128 0x19
	.long	0x16f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x17b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x187
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.long	0x193
	.uleb128 0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.byte	0
	.uleb128 0x33
	.long	0x2d6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3d
	.uleb128 0x16
	.long	0x2e7
	.long	.LLST30
	.uleb128 0x19
	.long	0x2f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.long	0x2ff
	.long	.LLST31
	.uleb128 0x16
	.long	0x30b
	.long	.LLST32
	.uleb128 0x1e
	.long	0x317
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x20
	.long	0x323
	.long	.LLST33
	.byte	0
	.uleb128 0x33
	.long	0x1a6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xb75
	.uleb128 0x19
	.long	0x1b7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x1c3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.long	0x1cf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.long	0x1db
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x33
	.long	0x4f5
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd0
	.uleb128 0x16
	.long	0x506
	.long	.LLST34
	.uleb128 0x16
	.long	0x512
	.long	.LLST35
	.uleb128 0x20
	.long	0x51e
	.long	.LLST36
	.uleb128 0x1c
	.long	0x52a
	.byte	0x41
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x34
	.long	0x537
	.long	0xbc1
	.uleb128 0x10
	.byte	0
	.uleb128 0x2d
	.quad	.LVL83
	.long	0xca2
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x1e8
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfa
	.uleb128 0x19
	.long	0x1f9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.long	0x205
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x38
	.long	.LASF72
	.byte	0x1
	.byte	0x87
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	IntGlob
	.uleb128 0x38
	.long	.LASF73
	.byte	0x1
	.byte	0x88
	.long	0x153
	.uleb128 0x9
	.byte	0x3
	.quad	BoolGlob
	.uleb128 0x38
	.long	.LASF74
	.byte	0x1
	.byte	0x89
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	Char1Glob
	.uleb128 0x38
	.long	.LASF75
	.byte	0x1
	.byte	0x8a
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	Char2Glob
	.uleb128 0x38
	.long	.LASF76
	.byte	0x1
	.byte	0x8b
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	Array1Glob
	.uleb128 0x38
	.long	.LASF77
	.byte	0x1
	.byte	0x8c
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	Array2Glob
	.uleb128 0x38
	.long	.LASF78
	.byte	0x1
	.byte	0x8d
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlb
	.uleb128 0x38
	.long	.LASF79
	.byte	0x1
	.byte	0x8e
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	PtrGlbNext
	.uleb128 0x26
	.long	.LASF51
	.byte	0x2
	.byte	0
	.long	0x66
	.long	0xcbc
	.uleb128 0x27
	.long	0x8ed
	.uleb128 0x27
	.long	0x8ed
	.byte	0
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x9d
	.long	0x8dd
	.long	0xccd
	.uleb128 0x10
	.byte	0
	.uleb128 0x26
	.long	.LASF64
	.byte	0x2
	.byte	0
	.long	0x8e4
	.long	0xce2
	.uleb128 0x27
	.long	0x8e6
	.byte	0
	.uleb128 0x39
	.long	.LASF66
	.byte	0x2
	.byte	0
	.long	0x66
	.uleb128 0x27
	.long	0x8ed
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2
	.quad	.LVL3
	.value	0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.quad	.LVL3
	.quad	.LVL4
	.value	0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL6
	.value	0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL9
	.value	0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	.LVL9
	.quad	.LFE2
	.value	0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x70
	.sleb128 12
	.byte	0x9f
	.quad	.LVL9
	.quad	.LFE2
	.value	0x3
	.byte	0x70
	.sleb128 12
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x3
	.byte	0x70
	.sleb128 12
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x2
	.byte	0x70
	.sleb128 16
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL7
	.quad	.LVL8
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
.LLST9:
	.quad	.LVL23
	.quad	.LVL30
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL39
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL41
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL41
	.quad	.LFE1
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23
	.quad	.LVL37
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL39
	.value	0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL41
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL41
	.quad	.LFE1
	.value	0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL20
	.quad	.LVL30
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL37
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL37
	.quad	.LFE1
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL34
	.quad	.LVL35
	.value	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL24
	.quad	.LVL35
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL12
	.quad	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x50
	.quad	.LVL13
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x50
	.quad	.LVL21
	.quad	.LVL48
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL43
	.quad	.LVL46
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL16
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL22
	.quad	.LVL29-1
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
	.quad	.LVL38
	.quad	.LVL41
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
.LLST19:
	.quad	.LVL24
	.quad	.LVL28
	.value	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x54
	.quad	.LVL29-1
	.quad	.LFE1
	.value	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL24
	.quad	.LVL45
	.value	0x1
	.byte	0x57
	.quad	.LVL45
	.quad	.LFE1
	.value	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL24
	.quad	.LVL27
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL40
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL41
	.quad	.LFE1
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.quad	.LVL27
	.quad	.LFE1
	.value	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL31
	.quad	.LVL32
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL33
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL33
	.quad	.LFE1
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL52
	.quad	.LVL53
	.value	0x3
	.byte	0x70
	.sleb128 10
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL55
	.value	0x3
	.byte	0x70
	.sleb128 9
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x50
	.quad	.LVL56
	.quad	.LVL57
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
.LLST25:
	.quad	.LVL59
	.quad	.LVL60
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL61
	.value	0xd
	.byte	0x3
	.quad	PtrGlb
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL63
	.value	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.quad	.LVL63
	.quad	.LFE4
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL59
	.quad	.LVL61
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL62
	.quad	.LFE4
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL59
	.quad	.LVL61
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	.LVL62
	.quad	.LFE4
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL69
	.quad	.LVL72
	.value	0x1
	.byte	0x55
	.quad	.LVL72
	.quad	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL69
	.quad	.LVL76
	.value	0x1
	.byte	0x51
	.quad	.LVL76
	.quad	.LVL78
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL78
	.quad	.LFE9
	.value	0x3
	.byte	0x79
	.sleb128 -6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL69
	.quad	.LVL73
	.value	0x1
	.byte	0x52
	.quad	.LVL73
	.quad	.LVL74
	.value	0x2
	.byte	0x7a
	.sleb128 0
	.quad	.LVL74
	.quad	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL71
	.quad	.LVL74
	.value	0x1
	.byte	0x58
	.quad	.LVL74
	.quad	.LVL75
	.value	0x3
	.byte	0x71
	.sleb128 6
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL77
	.value	0x1
	.byte	0x59
	.quad	.LVL77
	.quad	.LFE9
	.value	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL80
	.quad	.LVL83-1
	.value	0x1
	.byte	0x55
	.quad	.LVL83-1
	.quad	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL80
	.quad	.LVL83-1
	.value	0x1
	.byte	0x54
	.quad	.LVL83-1
	.quad	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL80
	.quad	.LVL82
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL82
	.quad	.LFE11
	.value	0x2
	.byte	0x32
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
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB54
	.quad	.LBE54
	.quad	0
	.quad	0
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB65
	.quad	.LBE65
	.quad	0
	.quad	0
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB107
	.quad	.LBE107
	.quad	0
	.quad	0
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB105
	.quad	.LBE105
	.quad	0
	.quad	0
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB104
	.quad	.LBE104
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB111
	.quad	.LBE111
	.quad	0
	.quad	0
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB123
	.quad	.LBE123
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
.LASF72:
	.string	"IntGlob"
.LASF58:
	.string	"String1Loc"
.LASF75:
	.string	"Char2Glob"
.LASF45:
	.string	"Array2Par"
.LASF10:
	.string	"String30"
.LASF38:
	.string	"PtrParOut"
.LASF81:
	.string	"drystone.c"
.LASF48:
	.string	"StrParI1"
.LASF83:
	.string	"Record"
.LASF49:
	.string	"StrParI2"
.LASF55:
	.string	"IntLoc2"
.LASF69:
	.string	"long int"
.LASF46:
	.string	"IntIndex"
.LASF33:
	.string	"EnumParIn"
.LASF68:
	.string	"unsigned int"
.LASF36:
	.string	"EnumParOut"
.LASF43:
	.string	"Proc8"
.LASF20:
	.string	"RecordPtr"
.LASF65:
	.string	"strcpy"
.LASF78:
	.string	"PtrGlb"
.LASF19:
	.string	"RecordType"
.LASF70:
	.string	"long unsigned int"
.LASF53:
	.string	"Proc0"
.LASF29:
	.string	"IntLoc"
.LASF62:
	.string	"benchtime"
.LASF34:
	.string	"EnumLoc"
.LASF39:
	.string	"Proc4"
.LASF63:
	.string	"nulltime"
.LASF7:
	.string	"OneToFifty"
.LASF5:
	.string	"Enumeration"
.LASF35:
	.string	"Proc6"
.LASF25:
	.string	"Proc7"
.LASF71:
	.string	"main"
.LASF18:
	.string	"StringComp"
.LASF84:
	.string	"PtrParIn"
.LASF30:
	.string	"CharLoc1"
.LASF50:
	.string	"CharLoc"
.LASF26:
	.string	"Func1"
.LASF47:
	.string	"Func2"
.LASF32:
	.string	"Func3"
.LASF77:
	.string	"Array2Glob"
.LASF6:
	.string	"OneToThirty"
.LASF61:
	.string	"starttime"
.LASF22:
	.string	"IntParI1"
.LASF23:
	.string	"IntParI2"
.LASF8:
	.string	"CapitalLetter"
.LASF60:
	.string	"time"
.LASF27:
	.string	"CharPar1"
.LASF28:
	.string	"CharPar2"
.LASF51:
	.string	"strcmp"
.LASF11:
	.string	"sizetype"
.LASF52:
	.string	"Proc1"
.LASF41:
	.string	"Proc2"
.LASF37:
	.string	"Proc3"
.LASF24:
	.string	"IntParOut"
.LASF67:
	.string	"Proc5"
.LASF80:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-4) -mtune=generic -march=x86-64 -g -O3"
.LASF13:
	.string	"Array2Dim"
.LASF15:
	.string	"Discr"
.LASF31:
	.string	"CharLoc2"
.LASF66:
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
.LASF74:
	.string	"Char1Glob"
.LASF44:
	.string	"Array1Par"
.LASF14:
	.string	"PtrComp"
.LASF42:
	.string	"IntParIO"
.LASF12:
	.string	"Array1Dim"
.LASF40:
	.string	"BoolLoc"
.LASF9:
	.string	"char"
.LASF79:
	.string	"PtrGlbNext"
.LASF17:
	.string	"IntComp"
.LASF82:
	.string	"/users/ktalaric/HPCKyleTalarico/dhrystone"
.LASF57:
	.string	"CharIndex"
.LASF73:
	.string	"BoolGlob"
.LASF54:
	.string	"IntLoc1"
.LASF21:
	.string	"boolean"
.LASF56:
	.string	"IntLoc3"
.LASF64:
	.string	"malloc"
.LASF76:
	.string	"Array1Glob"
.LASF59:
	.string	"String2Loc"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-4)"
	.section	.note.GNU-stack,"",@progbits
