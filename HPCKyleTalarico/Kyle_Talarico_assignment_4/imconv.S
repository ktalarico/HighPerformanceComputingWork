	.file	"improveConv.cpp"
# GNU C++11 (Ubuntu 5.4.0-6ubuntu1~16.04.4) version 5.4.0 20160609 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE -D_REENTRANT
# improveConv.cpp -march=btver1 -mmmx -mno-3dnow -msse -msse2 -msse3
# -mssse3 -msse4a -mcx16 -msahf -mno-movbe -maes -mno-sha -mpclmul -mpopcnt
# -mabm -mno-lwp -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm
# -mavx -mno-avx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mno-rdrnd
# -mno-f16c -mno-fsgsbase -mno-rdseed -mprfchw -mno-adx -mfxsr -mxsave
# -mno-xsaveopt -mno-avx512f -mno-avx512er -mno-avx512cd -mno-avx512pf
# -mno-prefetchwt1 -mno-clflushopt -mno-xsavec -mno-xsaves -mno-avx512dq
# -mno-avx512bw -mno-avx512vl -mno-avx512ifma -mno-avx512vbmi -mno-clwb
# -mno-pcommit -mno-mwaitx --param l1-cache-size=16
# --param l1-cache-line-size=64 --param l2-cache-size=2048 -mtune=btver1
# -auxbase-strip imconv.S -O3 -std=c++11 -fopenmp -fverbose-asm
# -fstack-protector-strong -Wformat -Wformat-security
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexceptions -fexpensive-optimizations -fforward-propagate -ffunction-cse
# -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-alignment -fipa-cp-clone
# -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -freorder-blocks -freorder-blocks-and-partition -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fschedule-insns2 -fsemantic-interposition -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt
# -fstack-protector-strong -fstdarg-opt -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -mabm -maes
# -malign-stringops -mavx -mcx16 -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mpclmul -mpopcnt
# -mprfchw -mpush-args -mred-zone -msahf -msse -msse2 -msse3 -msse4
# -msse4.1 -msse4.2 -msse4a -mssse3 -mtls-direct-seg-refs -mvzeroupper
# -mxsave

	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,10
	.p2align 3
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB6492:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	104(%rdi), %rax	# *.omp_data_i_17(D).n, *.omp_data_i_17(D).n
	movq	120(%rdi), %r15	# *.omp_data_i_17(D).blockn, D.64459
	cqto
	idivq	%r15	# D.64459
	movq	%rax, %r13	# tmp169, tmp169
	movq	96(%rdi), %rax	# *.omp_data_i_17(D).m, *.omp_data_i_17(D).m
	cqto
	idivq	128(%rdi)	# *.omp_data_i_17(D).blockm
	testq	%r13, %r13	# tmp169
	movq	%rax, -88(%rbp)	# tmp172, %sfp
	jle	.L22	#,
	testq	%rax, %rax	# tmp172
	jle	.L22	#,
	imulq	%rax, %r13	# tmp172, D.64458
	movq	%rdi, %rbx	# .omp_data_i, .omp_data_i
	call	omp_get_num_threads	#
	movslq	%eax, %r12	# D.64460, D.64458
	call	omp_get_thread_num	#
	xorl	%edx, %edx	# D.64458
	movslq	%eax, %rcx	# D.64460, D.64458
	movq	%r13, %rax	# D.64458, D.64458
	divq	%r12	# D.64458
	cmpq	%rdx, %rcx	# D.64458, D.64458
	jnb	.L18	#,
	incq	%rax	# D.64458
	xorl	%edx, %edx	# D.64458
.L18:
	imulq	%rax, %rcx	# D.64458, D.64458
	leaq	(%rcx,%rdx), %rsi	#, D.64458
	leaq	(%rax,%rsi), %rcx	#, D.64458
	movq	%rsi, -80(%rbp)	# D.64458, %sfp
	cmpq	%rcx, %rsi	# D.64458, D.64458
	jnb	.L22	#,
	movq	%rsi, %rax	# D.64458, r
	xorl	%edx, %edx	# s
	movq	160(%rbx), %rsi	# .omp_data_i_17(D)->is, D.64459
	divq	-88(%rbp)	# %sfp
	decq	%rcx	# D.64458
	movq	%rcx, -96(%rbp)	# D.64458, %sfp
	movq	%rax, -72(%rbp)	# r, %sfp
	incq	%rax	# r
	movq	%rdx, -56(%rbp)	# s, %sfp
	movq	%rax, -64(%rbp)	# r, %sfp
.L5:
	movq	-72(%rbp), %rax	# %sfp, D.64459
	imulq	%r15, %rax	# D.64459, D.64459
	leaq	(%rax,%rsi), %r13	#, i
	addq	%r15, %rax	# D.64459, D.64459
	addq	%rsi, %rax	# D.64459, D.64459
	cmpq	%rax, %r13	# D.64459, i
	jge	.L11	#,
	movq	-56(%rbp), %rax	# %sfp, s
	movq	128(%rbx), %rdi	# .omp_data_i_17(D)->blockm, D.64459
	leaq	1(%rax), %r14	#, D.64459
	movq	168(%rbx), %rax	# .omp_data_i_17(D)->js, D.64459
.L12:
	movq	-56(%rbp), %rdx	# %sfp, D.64459
	imulq	%rdi, %rdx	# D.64459, D.64459
	leaq	(%rdx,%rax), %r12	#, j
	addq	%rdi, %rdx	# D.64459, D.64459
	addq	%rax, %rdx	# D.64459, D.64459
	cmpq	%rdx, %r12	# D.64459, j
	jge	.L8	#,
	movq	112(%rbx), %rdx	# .omp_data_i_17(D)->k, D.64459
.L14:
	testq	%rdx, %rdx	# D.64459
	jle	.L9	#,
	movq	112(%rbx), %rcx	# *.omp_data_i_17(D).k, D.64459
	xorl	%r11d, %r11d	# q
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%r13, %rdi	# i, D.64459
	movq	136(%rbx), %r10	# *.omp_data_i_17(D).a, *.omp_data_i_17(D).a
	movq	152(%rbx), %r9	# *.omp_data_i_17(D).kernel, *.omp_data_i_17(D).kernel
	subq	%rsi, %rdi	# D.64459, D.64459
	movq	%r12, %r8	# j, D.64459
	xorl	%edx, %edx	# p
	movq	%rdi, %rsi	# D.64459, D.64459
	movq	%rcx, %rdi	# D.64459, D.64459
	subq	%rax, %r8	# D.64459, D.64459
	imulq	%r11, %rdi	# q, D.64459
	addq	%r11, %rsi	# q, D.64459
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rsi, %r15	# D.64459, D.64459
	leaq	(%r8,%rdx), %rax	#, D.64459
	imulq	104(%rbx), %r15	# *.omp_data_i_17(D).n, D.64459
	addq	%r15, %rax	# D.64459, D.64459
	movq	(%r10), %r15	# *_65, *_65
	vmovups	(%r15,%rax,4), %ymm1	#* *_65, tmp192
	movq	(%r9), %rax	# *_81, *_81
	leaq	(%rdi,%rdx), %r15	#, tmp205
	incq	%rdx	# p
	vmovaps	%ymm1, (%rbx)	# tmp192, *.omp_data_i_17(D).av
	cmpq	%rdx, %rcx	# p, D.64459
	vbroadcastss	(%rax,%r15,4), %ymm0	# *_88, tmp207
	vmovaps	%ymm0, 32(%rbx)	# tmp207, *.omp_data_i_17(D).bv
	vmulps	%ymm0, %ymm1, %ymm0	# tmp207, tmp192, D.64466
	vmovaps	%ymm0, (%rbx)	# D.64466, *.omp_data_i_17(D).av
	vaddps	64(%rbx), %ymm0, %ymm0	# *.omp_data_i_17(D).cv, D.64466, D.64466
	vmovaps	%ymm0, 64(%rbx)	# D.64466, *.omp_data_i_17(D).cv
	jg	.L13	#,
	movq	%r13, %rax	# i, D.64459
	subq	160(%rbx), %rax	# .omp_data_i_17(D)->is, D.64459
	movq	%r12, %rdx	# j, D.64459
	imulq	104(%rbx), %rax	# *.omp_data_i_17(D).n, D.64459
	subq	168(%rbx), %rdx	# .omp_data_i_17(D)->js, D.64459
	movq	144(%rbx), %rcx	# *.omp_data_i_17(D).b, *.omp_data_i_17(D).b
	incq	%r11	# q
	addq	%rdx, %rax	# D.64459, D.64459
	movq	(%rcx), %rdx	# *_99, *_99
	vmovups	%ymm0, (%rdx,%rax,4)	# D.64466,* *_99
	movq	112(%rbx), %rcx	# *.omp_data_i_17(D).k, D.64459
	cmpq	%r11, %rcx	# q, D.64459
	movq	%rcx, %rdx	# D.64459, D.64459
	jle	.L26	#,
	movq	160(%rbx), %rsi	# .omp_data_i_17(D)->is, D.64459
	movq	168(%rbx), %rax	# .omp_data_i_17(D)->js, D.64459
	jmp	.L10	#
.L26:
	movq	128(%rbx), %rdi	# .omp_data_i_17(D)->blockm, D.64459
	movq	168(%rbx), %rax	# .omp_data_i_17(D)->js, D.64459
	movq	160(%rbx), %rsi	# .omp_data_i_17(D)->is, D.64459
.L9:
	movq	%r14, %rcx	# D.64459, D.64459
	addq	$8, %r12	#, j
	imulq	%rdi, %rcx	# D.64459, D.64459
	addq	%rax, %rcx	# D.64459, D.64459
	cmpq	%r12, %rcx	# j, D.64459
	jg	.L14	#,
	movq	120(%rbx), %r15	# .omp_data_i_17(D)->blockn, D.64459
.L8:
	movq	-64(%rbp), %rdx	# %sfp, D.64459
	incq	%r13	# i
	imulq	%r15, %rdx	# D.64459, D.64459
	addq	%rsi, %rdx	# D.64459, D.64459
	cmpq	%r13, %rdx	# i, D.64459
	jg	.L12	#,
.L11:
	movq	-80(%rbp), %rcx	# %sfp, D.64458
	cmpq	%rcx, -96(%rbp)	# D.64458, %sfp
	je	.L21	#,
	incq	-56(%rbp)	# %sfp
	movq	-56(%rbp), %rax	# %sfp, s
	cmpq	%rax, -88(%rbp)	# s, %sfp
	jg	.L7	#,
	movq	-64(%rbp), %rax	# %sfp, r
	movq	$0, -56(%rbp)	#, %sfp
	movq	%rax, -72(%rbp)	# r, %sfp
	incq	%rax	# r
	movq	%rax, -64(%rbp)	# r, %sfp
.L7:
	incq	-80(%rbp)	# %sfp
	jmp	.L5	#
.L21:
	vzeroupper
.L22:
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6492:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\n"
.LC2:
	.string	"n: "
.LC3:
	.string	"m: "
.LC4:
	.string	"k: "
.LC6:
	.string	"Pixels/s:\t"
.LC8:
	.string	"Computaion Max:\t"
.LC10:
	.string	"Memory Max:\t"
	.section	.text.unlikely
.LCOLDB11:
	.section	.text.startup,"ax",@progbits
.LHOTB11:
	.p2align 4,,10
	.p2align 3
	.globl	main
	.type	main, @function
main:
.LFB6292:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	xorl	%edi, %edi	#
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12	# argv, argv
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx	#
	subq	$320, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax	#, tmp239
	movq	%rax, -56(%rbp)	# tmp239, D.64496
	xorl	%eax, %eax	# tmp239
	call	time	#
	movl	%eax, %edi	# D.64484,
	call	srand	#
	movq	8(%r12), %rdi	# MEM[(char * *)argv_10(D) + 8B], MEM[(char * *)argv_10(D) + 8B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	call	strtol	#
	movq	16(%r12), %rdi	# MEM[(char * *)argv_10(D) + 16B], MEM[(char * *)argv_10(D) + 16B]
	cltq
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %r15	# m, m
	movq	%rax, -328(%rbp)	# m, %sfp
	call	strtol	#
	movq	24(%r12), %rdi	# MEM[(char * *)argv_10(D) + 24B], MEM[(char * *)argv_10(D) + 24B]
	cltq
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %r14	# n, n
	movq	%rax, -336(%rbp)	# n, %sfp
	call	strtol	#
	movq	32(%r12), %rdi	# MEM[(char * *)argv_10(D) + 32B], MEM[(char * *)argv_10(D) + 32B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movslq	%eax, %rbx	# D.64484, k
	call	strtol	#
	movq	40(%r12), %rdi	# MEM[(char * *)argv_10(D) + 40B], MEM[(char * *)argv_10(D) + 40B]
	xorl	%esi, %esi	#
	cltq
	movl	$10, %edx	#,
	movq	%rax, -344(%rbp)	# blockn, %sfp
	call	strtol	#
	cltq
	leaq	-296(%rbp), %rdi	#, tmp249
	movl	$32, %esi	#,
	movq	%rax, -352(%rbp)	# blockm, %sfp
	leaq	-1(%rbx), %rax	#, D.64487
	movq	%rax, %rdx	# D.64487, tmp182
	shrq	$63, %rdx	#, tmp182
	addq	%rax, %rdx	# D.64487, tmp183
	sarq	%rdx	# tmp184
	movq	%rdx, -360(%rbp)	# tmp184, %sfp
	leaq	(%r15,%rax), %rdx	#, D.64487
	addq	%r14, %rax	# n, D.64487
	imulq	%rdx, %rax	# D.64487, D.64487
	leaq	0(,%rax,4), %rdx	#, D.64488
	call	posix_memalign	#
	movq	%r15, %rdx	# m, D.64487
	leaq	-288(%rbp), %rdi	#, tmp252
	movl	$32, %esi	#,
	imulq	%r14, %rdx	# n, D.64487
	salq	$2, %rdx	#, D.64488
	call	posix_memalign	#
	movq	%rbx, %rdx	# k, D.64487
	leaq	-280(%rbp), %rdi	#, tmp254
	movl	$32, %esi	#,
	imulq	%rbx, %rdx	# k, D.64487
	salq	$2, %rdx	#, D.64488
	call	posix_memalign	#
	testq	%rbx, %rbx	# k
	jle	.L30	#,
	leaq	0(,%rbx,4), %rax	#, D.64494
	xorl	%r13d, %r13d	# ivtmp.104
	movq	$0, -312(%rbp)	#, %sfp
	movq	%rax, -320(%rbp)	# D.64494, %sfp
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%r13, %r14	# ivtmp.104, ivtmp.98
	xorl	%r15d, %r15d	# D.64487
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r14, %r12	# ivtmp.98, D.64489
	addq	-280(%rbp), %r12	# kernel, D.64489
	incq	%r15	# D.64487
	call	rand	#
	movl	%eax, %edx	# D.64490, tmp224
	addq	$4, %r14	#, ivtmp.98
	shrl	$31, %edx	#, tmp224
	addl	%edx, %eax	# tmp224, tmp225
	andl	$1, %eax	#, tmp226
	subl	%edx, %eax	# tmp224, D.64490
	cmpq	%r15, %rbx	# D.64487, k
	vcvtsi2ss	%eax, %xmm0, %xmm0	# D.64490, tmp228
	vmovss	%xmm0, (%r12)	# tmp228, *_45
	jg	.L29	#,
	incq	-312(%rbp)	# %sfp
	addq	-320(%rbp), %r13	# %sfp, ivtmp.104
	movq	-312(%rbp), %rax	# %sfp, ivtmp.101
	cmpq	%rax, %rbx	# ivtmp.101, k
	jg	.L31	#,
.L30:
	call	_ZNSt6chrono3_V212steady_clock3nowEv	#
	movq	-328(%rbp), %rcx	# %sfp, m
	movq	-344(%rbp), %rsi	# %sfp, blockn
	xorl	%edx, %edx	#
	vxorps	%xmm0, %xmm0, %xmm0	# av
	movl	$main._omp_fn.0, %edi	#,
	movq	%rax, -312(%rbp)	#, %sfp
	movq	%rbx, -160(%rbp)	# k, .omp_data_o.9.k
	movq	%rcx, -176(%rbp)	# m, .omp_data_o.9.m
	movq	%rsi, -152(%rbp)	# blockn, .omp_data_o.9.blockn
	leaq	-296(%rbp), %rsi	#, tmp259
	movq	-336(%rbp), %rcx	# %sfp, n
	vmovaps	%ymm0, -272(%rbp)	# av, .omp_data_o.9.av
	movq	%rsi, -136(%rbp)	# tmp259, .omp_data_o.9.a
	leaq	-280(%rbp), %rsi	#, tmp261
	vmovaps	%ymm0, -240(%rbp)	# bv, .omp_data_o.9.bv
	vmovaps	%ymm0, -208(%rbp)	# cv, .omp_data_o.9.cv
	movq	%rcx, -168(%rbp)	# n, .omp_data_o.9.n
	movq	-352(%rbp), %rcx	# %sfp, blockm
	movq	%rsi, -120(%rbp)	# tmp261, .omp_data_o.9.kernel
	movq	-360(%rbp), %rsi	# %sfp, tmp184
	movq	%rcx, -144(%rbp)	# blockm, .omp_data_o.9.blockm
	leaq	-288(%rbp), %rcx	#, tmp260
	movq	%rsi, -112(%rbp)	# tmp184, .omp_data_o.9.is
	movq	%rsi, -104(%rbp)	# tmp184, .omp_data_o.9.js
	leaq	-272(%rbp), %rsi	#, tmp264
	movq	%rcx, -128(%rbp)	# tmp260, .omp_data_o.9.b
	xorl	%ecx, %ecx	#
	vzeroupper
	call	GOMP_parallel	#
	movq	-176(%rbp), %r15	# .omp_data_o.9.m, m
	movq	-168(%rbp), %rbx	# .omp_data_o.9.n, n
	movq	-160(%rbp), %r12	# .omp_data_o.9.k, k
	call	_ZNSt6chrono3_V212steady_clock3nowEv	#
	movq	-296(%rbp), %rdi	# a,
	movq	%rax, %r13	#, end
	call	free	#
	movq	-288(%rbp), %rdi	# b,
	call	free	#
	movq	-280(%rbp), %rdi	# kernel,
	call	free	#
	movl	$1, %edx	#,
	movl	$.LC1, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movl	$3, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	%rbx, %rsi	# n,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIxEERSoT_	#
	movl	$1, %edx	#,
	movq	%rax, %r14	#, D.64492
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movl	$3, %edx	#,
	movq	%r14, %rdi	# D.64492,
	movl	$.LC3, %esi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	%r14, %rdi	# D.64492,
	movq	%r15, %rsi	# m,
	call	_ZNSo9_M_insertIxEERSoT_	#
	movl	$1, %edx	#,
	movq	%rax, %r14	#, D.64492
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movl	$3, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%r14, %rdi	# D.64492,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	%r12, %rsi	# k,
	movq	%r14, %rdi	# D.64492,
	call	_ZNSo9_M_insertIxEERSoT_	#
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	subq	-312(%rbp), %r13	# %sfp, D.64484
	movl	$10, %edx	#,
	movl	$.LC6, %esi	#,
	imulq	%r15, %rbx	# m, D.64487
	movl	$_ZSt4cout, %edi	#,
	imulq	%r12, %r12	# k, D.64487
	vcvtsi2sdq	%r13, %xmm0, %xmm0	# D.64484, D.64493
	vcvtsi2ssq	%rbx, %xmm2, %xmm2	# D.64487, D.64491
	vdivsd	.LC5(%rip), %xmm0, %xmm0	#, D.64493, D.64493
	vcvtss2sd	%xmm2, %xmm1, %xmm1	# D.64491, D.64493
	vmovss	%xmm2, -328(%rbp)	# D.64491, %sfp
	vmovsd	%xmm1, -320(%rbp)	# D.64493, %sfp
	vdivsd	%xmm0, %xmm1, %xmm0	# D.64493, D.64493, D.64493
	vmovsd	%xmm0, -312(%rbp)	# D.64493, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	vmovsd	-312(%rbp), %xmm0	# %sfp, D.64493
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	vcvtsi2ssq	%r12, %xmm0, %xmm0	# D.64487, D.64491
	movl	$16, %edx	#,
	vmovss	-328(%rbp), %xmm2	# %sfp, D.64491
	movl	$.LC8, %esi	#,
	vmovsd	-320(%rbp), %xmm1	# %sfp, D.64493
	movl	$_ZSt4cout, %edi	#,
	vmulss	%xmm2, %xmm0, %xmm0	# D.64491, D.64491, D.64491
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# D.64491, D.64493
	vdivsd	.LC7(%rip), %xmm0, %xmm0	#, D.64493, D.64493
	vdivsd	%xmm0, %xmm1, %xmm0	# D.64493, D.64493, D.64493
	vmovsd	%xmm0, -312(%rbp)	# D.64493, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	vmovsd	-312(%rbp), %xmm0	# %sfp, D.64493
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	vcvtsi2sdq	%rbx, %xmm1, %xmm1	# D.64487, D.64493
	addq	%rbx, %rbx	# D.64487
	vcvtsi2ssq	%rbx, %xmm0, %xmm0	# D.64487, D.64491
	movl	$12, %edx	#,
	movl	$.LC10, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# D.64491, D.64493
	vdivsd	.LC9(%rip), %xmm0, %xmm0	#, D.64493, D.64493
	vdivsd	%xmm0, %xmm1, %xmm0	# D.64493, D.64493, D.64493
	vmovsd	%xmm0, -312(%rbp)	# D.64493, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	vmovsd	-312(%rbp), %xmm0	# %sfp, D.64493
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.64492,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	xorl	%eax, %eax	#
	movq	-56(%rbp), %rcx	# D.64496, tmp240
	xorq	%fs:40, %rcx	#, tmp240
	jne	.L38	#,
	addq	$320, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
.L38:
	.cfi_restore_state
	call	__stack_chk_fail	#
	.cfi_endproc
.LFE6292:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE11:
	.section	.text.startup
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.section	.text.startup
.LHOTB12:
	.p2align 4,,10
	.p2align 3
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB6491:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit	#
	.cfi_endproc
.LFE6491:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.text.unlikely
.LCOLDE12:
	.section	.text.startup
.LHOTE12:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1104006501
	.align 8
.LC7:
	.long	1451229184
	.long	1115208958
	.align 8
.LC9:
	.long	3892314112
	.long	1110919286
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
