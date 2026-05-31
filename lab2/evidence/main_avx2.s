	.file	"main.cc"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB3439:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB10177:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z7mod_powxxi
	.def	_Z7mod_powxxi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7mod_powxxi
_Z7mod_powxxi:
.LFB9461:
	.seh_endprologue
	movq	%rdx, %r9
	testq	%rdx, %rdx
	jle	.L8
	movslq	%r8d, %r8
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L7:
	testb	$1, %r9b
	je	.L6
	movq	%r10, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r8
	movq	%rdx, %r10
.L6:
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%r8
	sarq	%r9
	movq	%rdx, %rcx
	jne	.L7
	movq	%r10, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$1, %r10d
	movq	%r10, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
	.def	_Z10ntt_scalarRSt6vectorIiSaIiEEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
_Z10ntt_scalarRSt6vectorIiSaIiEEbi:
.LFB9463:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rcx), %rdi
	movq	(%rcx), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	sarq	$2, %rax
	movl	%edx, 60(%rsp)
	movslq	%r8d, %rbx
	movb	%dl, 23(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	%eax, 4(%rsp)
	cmpl	$1, %eax
	jle	.L35
	movq	40(%rsp), %rax
	movq	32(%rsp), %r10
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%eax, %r8d
	leal	-2(%rax), %r9d
	sarl	%r8d
	addq	$1, %r9
	movl	%r8d, %eax
	.p2align 4,,10
	.p2align 3
.L41:
	xorl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L19
	movslq	%edx, %rax
	movl	(%r10,%rcx,4), %r11d
	leaq	(%r10,%rax,4), %rax
	movl	(%rax), %esi
	movl	%esi, (%r10,%rcx,4)
	movl	%r11d, (%rax)
.L19:
	cmpq	%r9, %rcx
	je	.L65
	movl	%r8d, %eax
	testl	%r8d, %edx
	je	.L17
	.p2align 4,,10
	.p2align 3
.L18:
	xorl	%eax, %edx
	sarl	%eax
	testl	%eax, %edx
	jne	.L18
.L17:
	addq	$1, %rcx
	jmp	.L41
.L65:
	leal	-1(%rbx), %eax
	movl	$2, %r14d
	movslq	%ebx, %r11
	movl	%eax, 16(%rsp)
	movq	32(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 24(%rsp)
	leal	-2(%rbx), %eax
	movl	%eax, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L36:
	movl	16(%rsp), %eax
	cltd
	idivl	%r14d
	movslq	%eax, %r8
	testq	%r8, %r8
	jle	.L43
	movl	$1, %edi
	movl	$3, %ecx
	.p2align 4,,10
	.p2align 3
.L23:
	testb	$1, %r8b
	je	.L22
	movq	%rdi, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r11
	movq	%rdx, %rdi
.L22:
	movq	%rcx, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r11
	sarq	%r8
	movq	%rdx, %rcx
	jne	.L23
.L21:
	cmpb	$0, 23(%rsp)
	jne	.L66
.L24:
	movslq	%r14d, %rax
	movl	%r14d, %r15d
	xorl	%r12d, %r12d
	movslq	%edi, %rdi
	salq	$2, %rax
	sarl	%r15d
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	leal	-1(%r15), %r13d
	movslq	%r15d, %rsi
	leaq	(%rax,%r13,4), %rbp
	notq	%r13
	salq	$2, %r13
	.p2align 4,,10
	.p2align 3
.L30:
	leaq	0(%r13,%rbp), %r8
	movl	$1, %edx
	testl	%r15d, %r15d
	jle	.L33
	.p2align 4,,10
	.p2align 3
.L34:
	movslq	(%r8,%rsi,4), %rax
	movslq	%edx, %r9
	movl	(%r8), %ecx
	imulq	%r9, %rax
	cqto
	idivq	%r11
	leal	(%rcx,%rdx), %eax
	movl	%eax, %r10d
	subl	%ebx, %r10d
	cmpl	%eax, %ebx
	cmovle	%r10d, %eax
	subl	%edx, %ecx
	leal	(%rcx,%rbx), %edx
	movl	%eax, (%r8)
	movq	%r9, %rax
	cmovs	%edx, %ecx
	imulq	%rdi, %rax
	movl	%ecx, (%r8,%rsi,4)
	addq	$4, %r8
	cqto
	idivq	%r11
	cmpq	%r8, %rbp
	jne	.L34
.L33:
	addl	%r14d, %r12d
	addq	8(%rsp), %rbp
	cmpl	%r12d, 4(%rsp)
	jg	.L30
	addl	%r14d, %r14d
	cmpl	%r14d, 4(%rsp)
	jge	.L36
.L35:
	cmpb	$0, 60(%rsp)
	je	.L64
	leal	-2(%rbx), %eax
	movslq	40(%rsp), %rcx
	movslq	%eax, %r9
	testl	%eax, %eax
	jle	.L45
	movslq	%ebx, %r10
	movl	$1, %r8d
.L39:
	testb	$1, %r9b
	je	.L38
	movq	%r8, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r10
	movq	%rdx, %r8
.L38:
	movq	%rcx, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r10
	sarq	%r9
	movq	%rdx, %rcx
	jne	.L39
.L37:
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r9
	cmpq	%r9, %rcx
	je	.L64
	movslq	%r8d, %r8
.L40:
	movslq	(%rcx), %rax
	addq	$4, %rcx
	imulq	%r8, %rax
	cqto
	idivq	%rbx
	movl	%edx, -4(%rcx)
	cmpq	%r9, %rcx
	jne	.L40
.L64:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L66:
	movslq	56(%rsp), %r8
	movslq	%edi, %rcx
	testl	%r8d, %r8d
	jle	.L44
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L27:
	testb	$1, %r8b
	je	.L26
	movq	%rdi, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r11
	movq	%rdx, %rdi
.L26:
	movq	%rcx, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r11
	sarq	%r8
	movq	%rdx, %rcx
	jne	.L27
	jmp	.L24
.L43:
	movl	$1, %edi
	jmp	.L21
.L44:
	movl	$1, %edi
	jmp	.L24
.L45:
	movl	$1, %r8d
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
	.def	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb:
.LFB9465:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	vmovaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	vmovaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	vmovaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	vmovaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	vmovaps	%xmm10, 240(%rsp)
	.seh_savexmm	%xmm10, 240
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	movq	(%rcx), %rsi
	movq	8(%rcx), %rax
	subq	%rsi, %rax
	sarq	$2, %rax
	movl	%edx, 92(%rsp)
	movb	%dl, 91(%rsp)
	leaq	127(%rsp), %rdx
	andq	$-32, %rdx
	movq	%rsi, 48(%rsp)
	movq	%rax, 80(%rsp)
	movq	%rdx, %r15
	movl	%eax, 28(%rsp)
	cmpl	$1, %eax
	jle	.L92
	movq	80(%rsp), %rax
	movq	48(%rsp), %r10
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%eax, %r8d
	leal	-2(%rax), %r9d
	sarl	%r8d
	addq	$1, %r9
	movl	%r8d, %eax
.L102:
	xorl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L73
	movslq	%edx, %rax
	movl	(%r10,%rcx,4), %r11d
	leaq	(%r10,%rax,4), %rax
	movl	(%rax), %ebx
	movl	%ebx, (%r10,%rcx,4)
	movl	%r11d, (%rax)
.L73:
	cmpq	%rcx, %r9
	je	.L127
	movl	%r8d, %eax
	testl	%r8d, %edx
	je	.L71
	.p2align 4,,10
	.p2align 3
.L72:
	xorl	%eax, %edx
	sarl	%eax
	testl	%eax, %edx
	jne	.L72
.L71:
	addq	$1, %rcx
	jmp	.L102
.L127:
	movl	$2, 24(%rsp)
	vmovapd	.LC0(%rip), %ymm6
	movabsq	$5270497588725845455, %r14
	vmovapd	.LC1(%rip), %ymm4
	vmovsd	.LC2(%rip), %xmm3
.L93:
	movl	$7340032, %eax
	cltd
	idivl	24(%rsp)
	movslq	%eax, %r9
	testl	%eax, %eax
	jle	.L104
	movl	$3, %ecx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L77:
	testb	$1, %r9b
	je	.L76
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	movq	%rsi, %r8
	imulq	%r14
	movq	%rsi, %rax
	sarq	$63, %rax
	sarq	$21, %rdx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	imulq	$7340033, %rsi, %rax
	movq	%r8, %rsi
	subq	%rax, %rsi
.L76:
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	movq	%rcx, %r8
	mulq	%r14
	movq	%rdx, %rcx
	shrq	$21, %rcx
	imulq	$7340033, %rcx, %rax
	movq	%r8, %rcx
	subq	%rax, %rcx
	sarq	%r9
	jne	.L77
.L75:
	cmpb	$0, 91(%rsp)
	jne	.L128
.L78:
	movslq	24(%rsp), %rdi
	movl	$0, (%rsp)
	movslq	%esi, %rsi
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	$0, 16(%rsp)
	movl	%edi, %eax
	movq	%rdi, 40(%rsp)
	salq	$2, %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	sarl	%eax
	movl	%eax, 4(%rsp)
	movq	%rdi, 8(%rsp)
	movslq	%eax, %rdi
	subl	$4, %eax
	movl	%eax, %edx
	movq	%rdi, 72(%rsp)
	andl	$-4, %eax
	salq	$2, %rdi
	shrl	$2, %edx
	movq	%rdi, 56(%rsp)
	addl	$4, %eax
	leal	4(,%rdx,4), %edi
	movl	%eax, 68(%rsp)
	movl	%edi, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L84:
	xorl	%r11d, %r11d
	cmpl	$3, 4(%rsp)
	movl	$1, %ecx
	jle	.L86
	movl	(%rsp), %eax
	movq	56(%rsp), %r9
	movl	$1, %ecx
	leaq	32(%r15), %rdi
	movq	8(%rsp), %r8
	movl	68(%rsp), %r13d
	movl	%eax, %ebp
	addq	%r8, %r9
	addl	%eax, %r13d
	.p2align 4,,10
	.p2align 3
.L87:
	movslq	%ecx, %r10
	vcvtsi2sdl	4(%r8), %xmm2, %xmm7
	imulq	%rsi, %r10
	vcvtsi2sdl	12(%r8), %xmm2, %xmm0
	vcvtsi2sdl	(%r8), %xmm2, %xmm1
	movq	%r10, %rax
	vcvtsi2sdl	8(%r8), %xmm2, %xmm8
	imulq	%r14
	movq	%r10, %rax
	sarq	$63, %rax
	vcvtsi2sdl	12(%r9), %xmm2, %xmm9
	vunpcklpd	%xmm7, %xmm1, %xmm1
	sarq	$21, %rdx
	vunpcklpd	%xmm0, %xmm8, %xmm8
	movq	%rdx, %rbx
	vcvtsi2sdl	(%r9), %xmm2, %xmm0
	vinsertf128	$0x1, %xmm8, %ymm1, %ymm7
	subq	%rax, %rbx
	vcvtsi2sdl	4(%r9), %xmm2, %xmm1
	imulq	$7340033, %rbx, %rax
	movq	%r10, %rbx
	vcvtsi2sdl	8(%r9), %xmm2, %xmm8
	subq	%rax, %rbx
	vunpcklpd	%xmm1, %xmm0, %xmm0
	movq	%rbx, %r10
	imulq	%rsi, %r10
	vunpcklpd	%xmm9, %xmm8, %xmm8
	vinsertf128	$0x1, %xmm8, %ymm0, %ymm1
	vcvtsi2sdl	%ebx, %xmm2, %xmm8
	movq	%r10, %rax
	movq	%r10, %r11
	imulq	%r14
	movq	%r10, %rax
	sarq	$63, %rax
	vmovsd	%xmm8, %xmm8, %xmm9
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rax
	subq	%rax, %r11
	movq	%r11, %r12
	vcvtsi2sdl	%r11d, %xmm2, %xmm8
	imulq	%rsi, %r12
	movq	%r12, %rax
	movq	%r12, %r10
	imulq	%r14
	movq	%r12, %rax
	movl	%ecx, %r12d
	sarq	$63, %rax
	vcvtsi2sdl	%r12d, %xmm2, %xmm0
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rax
	vunpcklpd	%xmm9, %xmm0, %xmm0
	subq	%rax, %r10
	vcvtsi2sdl	%r10d, %xmm2, %xmm10
	movq	%r10, %rcx
	imulq	%rsi, %rcx
	vunpcklpd	%xmm10, %xmm8, %xmm8
	movq	%rcx, %rax
	vinsertf128	$0x1, %xmm8, %ymm0, %ymm0
	imulq	%r14
	movq	%rcx, %rax
	vmulpd	%ymm0, %ymm1, %ymm0
	sarq	$63, %rax
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rdx
	vmulpd	%ymm6, %ymm0, %ymm1
	subl	%edx, %ecx
	xorl	%edx, %edx
	vroundpd	$1, %ymm1, %ymm1
	vmulpd	%ymm4, %ymm1, %ymm1
	vsubpd	%ymm1, %ymm0, %ymm0
	vcmppd	$29, %ymm4, %ymm0, %ymm1
	vandpd	%ymm4, %ymm1, %ymm1
	vsubpd	%ymm1, %ymm0, %ymm0
	vcmppd	$17, %ymm5, %ymm0, %ymm1
	vandpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm7, %ymm8
	vsubpd	%ymm0, %ymm7, %ymm1
	vcmppd	$29, %ymm4, %ymm8, %ymm9
	vcmppd	$17, %ymm5, %ymm1, %ymm0
	vandpd	%ymm4, %ymm9, %ymm9
	vandpd	%ymm4, %ymm0, %ymm0
	vsubpd	%ymm9, %ymm8, %ymm8
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovapd	%ymm8, 32(%r15)
	vmovapd	%ymm0, (%r15)
.L85:
	vaddsd	(%rdi,%rdx,2), %xmm3, %xmm0
	vcvttsd2sil	%xmm0, %eax
	vaddsd	(%r15,%rdx,2), %xmm3, %xmm0
	movl	%eax, (%r8,%rdx)
	vcvttsd2sil	%xmm0, %eax
	movl	%eax, (%r9,%rdx)
	addq	$4, %rdx
	cmpq	$16, %rdx
	jne	.L85
	addl	$4, %ebp
	addq	$16, %r8
	addq	$16, %r9
	cmpl	%ebp, %r13d
	jne	.L87
	movslq	64(%rsp), %r11
.L86:
	cmpl	%r11d, 4(%rsp)
	jle	.L90
	movq	16(%rsp), %rax
	movq	48(%rsp), %rdi
	movq	72(%rsp), %rbx
	addq	%r11, %rax
	leaq	(%rdi,%rax,4), %r10
	movl	4(%rsp), %edi
.L91:
	movslq	(%r10,%rbx,4), %r9
	movslq	%ecx, %rcx
	movl	(%r10), %r8d
	imulq	%rcx, %r9
	movq	%r9, %rax
	imulq	%r14
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rdx
	subq	%rdx, %r9
	leal	(%r8,%r9), %eax
	leal	-7340033(%rax), %edx
	cmpl	$7340032, %eax
	cmovg	%edx, %eax
	movl	%r8d, %edx
	subl	%r9d, %edx
	leal	7340033(%rdx), %r8d
	movl	%eax, (%r10)
	cmovs	%r8d, %edx
	imulq	%rsi, %rcx
	addq	$1, %r11
	movl	%edx, (%r10,%rbx,4)
	addq	$4, %r10
	movq	%rcx, %rax
	imulq	%r14
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rdx
	subl	%edx, %ecx
	cmpl	%r11d, %edi
	jg	.L91
.L90:
	movq	40(%rsp), %rbx
	movl	24(%rsp), %edi
	addq	%rbx, 16(%rsp)
	movq	32(%rsp), %rbx
	addl	%edi, (%rsp)
	movl	(%rsp), %eax
	addq	%rbx, 8(%rsp)
	cmpl	%eax, 28(%rsp)
	jg	.L84
	sall	24(%rsp)
	movl	24(%rsp), %eax
	cmpl	%eax, 28(%rsp)
	jge	.L93
.L92:
	cmpb	$0, 92(%rsp)
	je	.L126
	movslq	80(%rsp), %rcx
	movl	$23, %r10d
	movl	$1, %r8d
	movl	$7340031, %r9d
	movabsq	$5270497588725845455, %rbx
.L95:
	testb	$1, %r9b
	je	.L94
	movq	%r8, %r11
	imulq	%rcx, %r11
	movq	%r11, %rax
	imulq	%rbx
	movq	%r11, %rax
	sarq	$63, %rax
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rax
	subq	%rax, %r11
	movq	%r11, %r8
.L94:
	imulq	%rcx, %rcx
	sarq	%r9
	movq	%rcx, %rax
	movq	%rcx, %r11
	mulq	%rbx
	movq	%rdx, %rcx
	shrq	$21, %rcx
	imulq	$7340033, %rcx, %rax
	movq	%r11, %rcx
	subq	%rax, %rcx
	subl	$1, %r10d
	jne	.L95
	vcvtsi2sdl	%r8d, %xmm2, %xmm3
	cmpl	$3, 80(%rsp)
	vbroadcastsd	%xmm3, %ymm3
	jle	.L129
	movl	80(%rsp), %eax
	movq	48(%rsp), %rdx
	xorl	%r10d, %r10d
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovapd	.LC0(%rip), %ymm7
	vmovapd	.LC1(%rip), %ymm5
	leal	-4(%rax), %r9d
	vmovsd	.LC2(%rip), %xmm1
	movl	%r9d, %r11d
	andl	$-4, %r11d
	addl	$4, %r11d
.L99:
	vcvtsi2sdl	4(%rdx), %xmm2, %xmm4
	xorl	%eax, %eax
	vcvtsi2sdl	(%rdx), %xmm2, %xmm0
	vcvtsi2sdl	12(%rdx), %xmm2, %xmm9
	vmovsd	%xmm4, %xmm4, %xmm8
	vcvtsi2sdl	8(%rdx), %xmm2, %xmm4
	vunpcklpd	%xmm8, %xmm0, %xmm0
	vunpcklpd	%xmm9, %xmm4, %xmm4
	vinsertf128	$0x1, %xmm4, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vmulpd	%ymm7, %ymm0, %ymm4
	vroundpd	$1, %ymm4, %ymm4
	vmulpd	%ymm5, %ymm4, %ymm4
	vsubpd	%ymm4, %ymm0, %ymm0
	vcmppd	$29, %ymm5, %ymm0, %ymm4
	vandpd	%ymm5, %ymm4, %ymm4
	vsubpd	%ymm4, %ymm0, %ymm0
	vcmppd	$17, %ymm6, %ymm0, %ymm4
	vandpd	%ymm5, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm0, %ymm0
	vmovapd	%ymm0, (%r15)
.L98:
	vaddsd	(%r15,%rax,8), %xmm1, %xmm0
	vcvttsd2sil	%xmm0, %ecx
	movl	%ecx, (%rdx,%rax,4)
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.L98
	addl	$4, %r10d
	addq	$16, %rdx
	cmpl	%r11d, %r10d
	jne	.L99
	shrl	$2, %r9d
	leal	4(,%r9,4), %ecx
.L100:
	cmpl	%ecx, 80(%rsp)
	jle	.L126
	movq	48(%rsp), %r11
	movslq	%ecx, %rcx
	movabsq	$5270497588725845455, %r10
.L101:
	movslq	(%r11,%rcx,4), %r9
	imulq	%r8, %r9
	movq	%r9, %rax
	imulq	%r10
	movq	%rdx, %rax
	movq	%r9, %rdx
	sarq	$21, %rax
	sarq	$63, %rdx
	subq	%rdx, %rax
	imulq	$7340033, %rax, %rax
	subq	%rax, %r9
	movl	%r9d, (%r11,%rcx,4)
	addq	$1, %rcx
	cmpl	%ecx, 28(%rsp)
	jg	.L101
.L126:
	vzeroupper
	vmovaps	176(%rsp), %xmm6
	vmovaps	192(%rsp), %xmm7
	vmovaps	208(%rsp), %xmm8
	vmovaps	224(%rsp), %xmm9
	vmovaps	240(%rsp), %xmm10
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L128:
	movslq	%esi, %rcx
	movl	$23, %r11d
	movl	$7340031, %r10d
	movl	$1, %r9d
.L80:
	testb	$1, %r10b
	je	.L79
	movq	%r9, %r8
	imulq	%rcx, %r8
	movq	%r8, %rax
	imulq	%r14
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$21, %rdx
	subq	%rax, %rdx
	imulq	$7340033, %rdx, %rax
	subq	%rax, %r8
	movq	%r8, %r9
.L79:
	imulq	%rcx, %rcx
	sarq	%r10
	movq	%rcx, %rax
	movq	%rcx, %r8
	mulq	%r14
	movq	%rdx, %rcx
	shrq	$21, %rcx
	imulq	$7340033, %rcx, %rax
	movq	%r8, %rcx
	subq	%rax, %rcx
	subl	$1, %r11d
	jne	.L80
	movl	%r9d, %esi
	jmp	.L78
.L104:
	movl	$1, %esi
	jmp	.L75
.L129:
	xorl	%ecx, %ecx
	jmp	.L100
	.seh_endproc
	.p2align 4
	.globl	_Z7run_nttRSt6vectorIiSaIiEEbi
	.def	_Z7run_nttRSt6vectorIiSaIiEEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7run_nttRSt6vectorIiSaIiEEbi
_Z7run_nttRSt6vectorIiSaIiEEbi:
.LFB9466:
	.seh_endprologue
	movzbl	%dl, %edx
	cmpl	$7340033, %r8d
	je	.L132
	jmp	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
	.p2align 4,,10
	.p2align 3
.L132:
	jmp	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "basic_string::_M_construct null not valid\0"
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_:
.LFB9786:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rdx), %rbx
	movq	%rcx, %r12
	leaq	16(%rcx), %rcx
	movq	%r8, %rsi
	movq	%rcx, (%r12)
	movq	(%rdx), %r13
	movq	%r13, %rax
	addq	%rbx, %rax
	je	.L134
	testq	%r13, %r13
	je	.L151
.L134:
	movq	%rbx, 40(%rsp)
	cmpq	$15, %rbx
	ja	.L152
	cmpq	$1, %rbx
	jne	.L137
	movzbl	0(%r13), %eax
	movb	%al, 16(%r12)
.L138:
	movq	%rbx, 8(%r12)
	movb	$0, (%rcx,%rbx)
	movq	8(%rsi), %r8
	movq	%r12, %rcx
	movq	(%rsi), %rdx
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE0:
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	testq	%rbx, %rbx
	je	.L138
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L152:
	movq	%r12, %rcx
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, (%r12)
	movq	%rax, %rcx
	movq	40(%rsp), %rax
	movq	%rax, 16(%r12)
.L136:
	movq	%rbx, %r8
	movq	%r13, %rdx
	call	memcpy
	movq	40(%rsp), %rbx
	movq	(%r12), %rcx
	jmp	.L138
.L151:
	leaq	.LC3(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
.L140:
	movq	%rax, %r13
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%r13, %rcx
	call	_Unwind_Resume
	nop
.LEHE1:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9786:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9786-.LLSDACSB9786
.LLSDACSB9786:
	.uleb128 .LEHB0-.LFB9786
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L140-.LFB9786
	.uleb128 0
	.uleb128 .LEHB1-.LFB9786
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE9786:
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "basic_string::append\0"
.LC5:
	.ascii ".out\0"
.LC6:
	.ascii "\345\244\232\351\241\271\345\274\217\344\271\230\346\263\225\347\273\223\346\236\234\346\255\243\347\241\256\0"
.LC7:
	.ascii "\345\244\232\351\241\271\345\274\217\344\271\230\346\263\225\347\273\223\346\236\234\351\224\231\350\257\257\0"
	.text
	.p2align 4
	.globl	_Z6fCheckPiii
	.def	_Z6fCheckPiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6fCheckPiii
_Z6fCheckPiii:
.LFB9459:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$696, %rsp
	.seh_stackalloc	696
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movabsq	$7022344803055857199, %rax
	movq	%rax, 0(%rbp)
	movl	%r8d, %eax
	movl	%r8d, %r12d
	movl	%r8d, %r13d
	sarl	$31, %eax
	movq	%rsp, -56(%rbp)
	movq	%rcx, %rdi
	movl	%edx, %esi
	xorl	%eax, %r12d
	movq	%rbp, -64(%rbp)
	shrl	$31, %r13d
	subl	%eax, %r12d
	movq	%rbp, -16(%rbp)
	movb	$47, 8(%rbp)
	movq	$9, -8(%rbp)
	movb	$0, 9(%rbp)
	cmpl	$9, %r12d
	jbe	.L207
	cmpl	$99, %r12d
	jbe	.L208
	cmpl	$999, %r12d
	jbe	.L209
	cmpl	$9999, %r12d
	jbe	.L210
	movl	%r12d, %eax
	movl	$1, %ebx
	movl	$3518437209, %ecx
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L162:
	cmpl	$999999, %edx
	jbe	.L234
	cmpl	$9999999, %edx
	jbe	.L235
	cmpl	$99999999, %edx
	jbe	.L236
.L159:
	movl	%eax, %eax
	movl	%ebx, %r8d
	addl	$4, %ebx
	movq	%rax, %rdx
	imulq	%rcx, %rax
	shrq	$45, %rax
	cmpl	$99999, %edx
	ja	.L162
.L155:
	leaq	32(%rbp), %rax
	leaq	16(%rbp), %rcx
	movl	$45, %r8d
	leal	0(%r13,%rbx), %edx
	movq	%rcx, -48(%rbp)
	movq	%rax, -72(%rbp)
	movq	%rax, 16(%rbp)
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE2:
	movzbl	%r13b, %r13d
	subl	$1, %ebx
	addq	16(%rbp), %r13
	cmpl	$99, %r12d
	jbe	.L163
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rcx
	.p2align 4,,10
	.p2align 3
.L164:
	movl	%r12d, %edx
	movl	%r12d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r8d
	subl	%r8d, %eax
	movl	%r12d, %r8d
	movl	%edx, %r12d
	movl	%ebx, %edx
	addl	%eax, %eax
	leal	1(%rax), %r9d
	movzbl	(%rcx,%rax), %eax
	movzbl	(%rcx,%r9), %r9d
	movb	%r9b, 0(%r13,%rdx)
	leal	-1(%rbx), %edx
	subl	$2, %ebx
	movb	%al, 0(%r13,%rdx)
	cmpl	$9999, %r8d
	ja	.L164
.L163:
	cmpl	$9, %r12d
	jbe	.L165
	addl	%r12d, %r12d
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rax
	leal	1(%r12), %edx
	movzbl	(%rax,%rdx), %edx
	movzbl	(%rax,%r12), %eax
	movb	%dl, 1(%r13)
	movb	%al, 0(%r13)
.L166:
	leaq	-16(%rbp), %rax
	leaq	80(%rbp), %r12
	movq	-48(%rbp), %r8
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%rax, -88(%rbp)
.LEHB3:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
.LEHE3:
	movabsq	$4611686018427387903, %rax
	subq	88(%rbp), %rax
	cmpq	$3, %rax
	jbe	.L237
	movl	$4, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%r12, %rcx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE4:
	leaq	64(%rbp), %rbx
	leaq	16(%rax), %rdx
	movq	%rbx, 48(%rbp)
	movq	(%rax), %rcx
	movq	%rbx, -80(%rbp)
	cmpq	%rdx, %rcx
	je	.L238
	movq	%rcx, 48(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 64(%rbp)
.L169:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	96(%rbp), %r14
	movq	%rcx, 56(%rbp)
	movq	%rdx, (%rax)
	movq	80(%rbp), %rcx
	movq	$0, 8(%rax)
	cmpq	%r14, %rcx
	je	.L170
	movq	96(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L170:
	movq	56(%rbp), %r13
	leaq	16(%r13), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	testq	%r13, %r13
	jne	.L239
.L171:
	movb	$0, (%rbx,%r13)
	leaq	288(%rbp), %r15
	movq	%r15, %rcx
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%edx, %edx
	movq	$0, 504(%rbp)
	movq	$0, 520(%rbp)
	movq	$0, 528(%rbp)
	addq	$16, %rax
	movq	%rax, 288(%rbp)
	xorl	%eax, %eax
	movw	%ax, 512(%rbp)
	movq	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 536(%rbp)
	movq	$0, 544(%rbp)
	movq	8(%rax), %r13
	movq	16(%rax), %rax
	movq	%r13, 80(%rbp)
	movq	%rax, %rcx
	movq	%rax, -40(%rbp)
	movq	-24(%r13), %rax
	movq	%rcx, 80(%rbp,%rax)
	movq	$0, 88(%rbp)
	movq	-24(%r13), %rcx
	addq	%r12, %rcx
.LEHB5:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE5:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rcx
	addq	$24, %rax
	movq	%rax, 80(%rbp)
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 288(%rbp)
.LEHB6:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE6:
	movq	%r14, %rdx
	movq	%r15, %rcx
.LEHB7:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE7:
	movl	$8, %r8d
	movq	%rbx, %rdx
	movq	%r14, %rcx
.LEHB8:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	80(%rbp), %rdx
	movq	-24(%rdx), %rcx
	addq	%r12, %rcx
	testq	%rax, %rax
	je	.L240
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L178:
	addl	%esi, %esi
	cmpl	$1, %esi
	jle	.L192
	subl	$2, %esi
	movq	%rdi, %rbx
	leaq	4(%rdi,%rsi,4), %rdi
	leaq	-20(%rbp), %rsi
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L181:
	addq	$4, %rbx
	cmpq	%rdi, %rbx
	je	.L192
.L193:
	movq	%rsi, %rdx
	movq	%r12, %rcx
	call	_ZNSirsERi
	movl	-20(%rbp), %eax
	cmpl	%eax, (%rbx)
	je	.L181
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$27, %r8d
	leaq	.LC7(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L241
	cmpb	$0, 56(%rbx)
	je	.L183
	movsbl	67(%rbx), %edx
.L184:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
.LEHE8:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rcx
	addq	$24, %rax
	movq	%rax, 80(%rbp)
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 288(%rbp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 96(%rbp)
.LEHB9:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE9:
.L200:
	leaq	168(%rbp), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	152(%rbp), %rcx
	addq	$16, %rax
	movq	%rax, 96(%rbp)
	call	_ZNSt6localeD1Ev
	movq	-24(%r13), %rax
	movq	-40(%rbp), %rdi
	movq	%r15, %rcx
	movq	%r13, 80(%rbp)
	movq	%rdi, 80(%rbp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 88(%rbp)
	addq	$16, %rax
	movq	%rax, 288(%rbp)
	call	_ZNSt8ios_baseD2Ev
	movq	48(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	je	.L198
	movq	64(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L198:
	movq	16(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	je	.L201
	movq	32(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L201:
	movq	-16(%rbp), %rcx
	cmpq	-64(%rbp), %rcx
	je	.L202
	movq	0(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L202:
	movq	-56(%rbp), %rsp
	leaq	568(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$27, %r8d
	leaq	.LC6(%rip), %rdx
.LEHB10:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L242
	cmpb	$0, 56(%rbx)
	je	.L195
	movsbl	67(%rbx), %edx
.L196:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
.LEHE10:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rcx
	addq	$24, %rax
	movq	%rax, 80(%rbp)
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 288(%rbp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 96(%rbp)
.LEHB11:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE11:
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L165:
	addl	$48, %r12d
	movb	%r12b, 0(%r13)
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L195:
	movq	%rbx, %rcx
.LEHB12:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L196
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L239:
	movq	48(%rbp), %rdx
	movq	%r13, %r8
	movq	%rbx, %rcx
	call	memmove
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L238:
	vmovdqu	16(%rax), %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L240:
	movl	32(%rcx), %edx
	orl	$4, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L183:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L184
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L234:
	leal	5(%r8), %ebx
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L235:
	leal	6(%r8), %ebx
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L236:
	leal	7(%r8), %ebx
	jmp	.L155
.L207:
	movl	$1, %ebx
	jmp	.L155
.L208:
	movl	$2, %ebx
	jmp	.L155
.L210:
	movl	$4, %ebx
	jmp	.L155
.L209:
	movl	$3, %ebx
	jmp	.L155
.L241:
	call	_ZSt16__throw_bad_castv
.LEHE12:
.L237:
	leaq	.LC4(%rip), %rcx
.LEHB13:
	call	_ZSt20__throw_length_errorPKc
.LEHE13:
.L242:
.LEHB14:
	call	_ZSt16__throw_bad_castv
.LEHE14:
.L220:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L200
.L214:
	movq	%rax, %rbx
	vzeroupper
.L204:
	movq	-48(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L206:
	movq	-88(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L213:
	movq	%rax, %rbx
	leaq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	vzeroupper
	jmp	.L206
.L216:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L176:
	leaq	48(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L204
.L219:
	movq	%rax, %rbx
	movq	%r14, %rcx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L174:
	movq	-24(%r13), %rax
	movq	-40(%rbp), %rdi
	movq	%r13, 80(%rbp)
	movq	%rdi, 80(%rbp,%rax)
	movq	$0, 88(%rbp)
.L175:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rcx
	addq	$16, %rax
	movq	%rax, 288(%rbp)
	call	_ZNSt8ios_baseD2Ev
	jmp	.L176
.L218:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L174
.L215:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L204
.L221:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L200
.L217:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L175
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9459:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9459-.LLSDATTD9459
.LLSDATTD9459:
	.byte	0x1
	.uleb128 .LLSDACSE9459-.LLSDACSB9459
.LLSDACSB9459:
	.uleb128 .LEHB2-.LFB9459
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L213-.LFB9459
	.uleb128 0
	.uleb128 .LEHB3-.LFB9459
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L214-.LFB9459
	.uleb128 0
	.uleb128 .LEHB4-.LFB9459
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L215-.LFB9459
	.uleb128 0
	.uleb128 .LEHB5-.LFB9459
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L217-.LFB9459
	.uleb128 0
	.uleb128 .LEHB6-.LFB9459
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L218-.LFB9459
	.uleb128 0
	.uleb128 .LEHB7-.LFB9459
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L219-.LFB9459
	.uleb128 0
	.uleb128 .LEHB8-.LFB9459
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L216-.LFB9459
	.uleb128 0
	.uleb128 .LEHB9-.LFB9459
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L220-.LFB9459
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB9459
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L216-.LFB9459
	.uleb128 0
	.uleb128 .LEHB11-.LFB9459
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L221-.LFB9459
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB9459
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L216-.LFB9459
	.uleb128 0
	.uleb128 .LEHB13-.LFB9459
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L215-.LFB9459
	.uleb128 0
	.uleb128 .LEHB14-.LFB9459
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L216-.LFB9459
	.uleb128 0
	.uleb128 .LEHB15-.LFB9459
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE9459:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9459:
	.text
	.seh_endproc
	.p2align 4
	.globl	_Z6fWritePiii
	.def	_Z6fWritePiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6fWritePiii
_Z6fWritePiii:
.LFB9460:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$664, %rsp
	.seh_stackalloc	664
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	leaq	-16(%rbp), %rax
	movl	%r8d, %r12d
	movl	%edx, %ebx
	movl	%r8d, %r13d
	movq	%rax, -80(%rbp)
	movl	$12147, %edx
	movq	%rcx, %rdi
	shrl	$31, %r13d
	movq	%rax, -32(%rbp)
	movl	%r8d, %eax
	sarl	$31, %eax
	movl	$1701603686, -16(%rbp)
	xorl	%eax, %r12d
	movw	%dx, -12(%rbp)
	subl	%eax, %r12d
	movq	$6, -24(%rbp)
	movb	$0, -10(%rbp)
	cmpl	$9, %r12d
	jbe	.L282
	cmpl	$99, %r12d
	jbe	.L283
	cmpl	$999, %r12d
	jbe	.L284
	cmpl	$9999, %r12d
	jbe	.L285
	movl	%r12d, %eax
	movl	$1, %esi
	movl	$3518437209, %ecx
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L252:
	cmpl	$999999, %edx
	jbe	.L301
	cmpl	$9999999, %edx
	jbe	.L302
	cmpl	$99999999, %edx
	jbe	.L303
.L249:
	movl	%eax, %eax
	movl	%esi, %r8d
	addl	$4, %esi
	movq	%rax, %rdx
	imulq	%rcx, %rax
	shrq	$45, %rax
	cmpl	$99999, %edx
	ja	.L252
.L245:
	leaq	16(%rbp), %rax
	movq	%rbp, %rcx
	leal	0(%r13,%rsi), %edx
	movq	%rbp, -64(%rbp)
	movl	$45, %r8d
	movq	%rax, -88(%rbp)
	movq	%rax, 0(%rbp)
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE16:
	movzbl	%r13b, %r13d
	subl	$1, %esi
	addq	0(%rbp), %r13
	cmpl	$99, %r12d
	jbe	.L253
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rcx
	.p2align 4,,10
	.p2align 3
.L254:
	movl	%r12d, %edx
	movl	%r12d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r8d
	subl	%r8d, %eax
	movl	%r12d, %r8d
	movl	%edx, %r12d
	movl	%esi, %edx
	addl	%eax, %eax
	leal	1(%rax), %r9d
	movzbl	(%rcx,%rax), %eax
	movzbl	(%rcx,%r9), %r9d
	movb	%r9b, 0(%r13,%rdx)
	leal	-1(%rsi), %edx
	subl	$2, %esi
	movb	%al, 0(%r13,%rdx)
	cmpl	$9999, %r8d
	ja	.L254
.L253:
	cmpl	$9, %r12d
	jbe	.L255
	addl	%r12d, %r12d
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rax
	leal	1(%r12), %edx
	movzbl	(%rax,%rdx), %edx
	movzbl	(%rax,%r12), %eax
	movb	%dl, 1(%r13)
	movb	%al, 0(%r13)
.L256:
	leaq	-32(%rbp), %rax
	leaq	64(%rbp), %r12
	movq	-64(%rbp), %r8
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%rax, -96(%rbp)
.LEHB17:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
.LEHE17:
	movabsq	$4611686018427387903, %rax
	subq	72(%rbp), %rax
	cmpq	$3, %rax
	jbe	.L304
	movl	$4, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%r12, %rcx
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE18:
	leaq	48(%rbp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 32(%rbp)
	movq	(%rax), %rcx
	movq	%rsi, -72(%rbp)
	cmpq	%rdx, %rcx
	je	.L305
	movq	%rcx, 32(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rbp)
.L259:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 40(%rbp)
	movq	%rdx, (%rax)
	movq	64(%rbp), %rcx
	movq	$0, 8(%rax)
	leaq	80(%rbp), %rax
	cmpq	%rax, %rcx
	je	.L260
	movq	80(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L260:
	movq	40(%rbp), %r13
	leaq	16(%r13), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	testq	%r13, %r13
	jne	.L306
.L261:
	movb	$0, (%rsi,%r13)
	leaq	264(%rbp), %r15
	movq	%r15, %rcx
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%edx, %edx
	movq	$0, 480(%rbp)
	movq	$0, 496(%rbp)
	movq	$0, 504(%rbp)
	addq	$16, %rax
	movq	%rax, 264(%rbp)
	xorl	%eax, %eax
	movw	%ax, 488(%rbp)
	movq	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 512(%rbp)
	movq	$0, 520(%rbp)
	movq	8(%rax), %r13
	movq	16(%rax), %rax
	movq	-24(%r13), %rcx
	movq	%r13, 64(%rbp)
	movq	%rax, -56(%rbp)
	addq	%r12, %rcx
	movq	%rax, (%rcx)
.LEHB19:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE19:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	72(%rbp), %r14
	movq	%r14, %rcx
	addq	$24, %rax
	movq	%rax, 64(%rbp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 264(%rbp)
.LEHB20:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE20:
	movq	%r14, %rdx
	movq	%r15, %rcx
.LEHB21:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE21:
	movl	$16, %r8d
	movq	%rsi, %rdx
	movq	%r14, %rcx
.LEHB22:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	64(%rbp), %rdx
	movq	-24(%rdx), %rcx
	addq	%r12, %rcx
	testq	%rax, %rax
	je	.L307
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L268:
	leal	(%rbx,%rbx), %edx
	cmpl	$1, %edx
	jle	.L271
	subl	$2, %edx
	movq	%rdi, %rbx
	leaq	4(%rdi,%rdx,4), %rsi
	leaq	-33(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L272:
	movl	(%rbx), %edx
	movq	%r12, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movl	$1, %r8d
	movq	%rdi, %rdx
	movb	$10, -33(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE22:
	addq	$4, %rbx
	cmpq	%rsi, %rbx
	jne	.L272
.L271:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rcx
	addq	$24, %rax
	movq	%rax, 64(%rbp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 264(%rbp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 72(%rbp)
.LEHB23:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE23:
.L270:
	leaq	144(%rbp), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	128(%rbp), %rcx
	addq	$16, %rax
	movq	%rax, 72(%rbp)
	call	_ZNSt6localeD1Ev
	movq	-24(%r13), %rax
	movq	-56(%rbp), %rdi
	movq	%r15, %rcx
	movq	%r13, 64(%rbp)
	movq	%rdi, 64(%rbp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 264(%rbp)
	call	_ZNSt8ios_baseD2Ev
	movq	32(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	je	.L274
	movq	48(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L274:
	movq	0(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	je	.L276
	movq	16(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L276:
	movq	-32(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	je	.L300
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	nop
.L300:
	leaq	536(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L255:
	addl	$48, %r12d
	movb	%r12b, 0(%r13)
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L306:
	movq	32(%rbp), %rdx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memmove
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L305:
	vmovdqu	16(%rax), %xmm0
	vmovdqa	%xmm0, 48(%rbp)
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L307:
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB24:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE24:
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L301:
	leal	5(%r8), %esi
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L302:
	leal	6(%r8), %esi
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L303:
	leal	7(%r8), %esi
	jmp	.L245
.L282:
	movl	$1, %esi
	jmp	.L245
.L283:
	movl	$2, %esi
	jmp	.L245
.L285:
	movl	$4, %esi
	jmp	.L245
.L284:
	movl	$3, %esi
	jmp	.L245
.L304:
	leaq	.LC4(%rip), %rcx
.LEHB25:
	call	_ZSt20__throw_length_errorPKc
.LEHE25:
.L286:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	vzeroupper
.L281:
	movq	-96(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L287:
	movq	%rax, %rbx
	vzeroupper
.L279:
	movq	-64(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L281
.L288:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L279
.L293:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L270
.L289:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L266:
	leaq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L279
.L292:
	movq	%rax, %rbx
	movq	%r14, %rcx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L264:
	movq	-24(%r13), %rax
	movq	-56(%rbp), %rdi
	movq	%r13, 64(%rbp)
	movq	%rdi, 64(%rbp,%rax)
.L265:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rcx
	addq	$16, %rax
	movq	%rax, 264(%rbp)
	call	_ZNSt8ios_baseD2Ev
	jmp	.L266
.L291:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L264
.L290:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L265
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9460:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9460-.LLSDATTD9460
.LLSDATTD9460:
	.byte	0x1
	.uleb128 .LLSDACSE9460-.LLSDACSB9460
.LLSDACSB9460:
	.uleb128 .LEHB16-.LFB9460
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L286-.LFB9460
	.uleb128 0
	.uleb128 .LEHB17-.LFB9460
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L287-.LFB9460
	.uleb128 0
	.uleb128 .LEHB18-.LFB9460
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L288-.LFB9460
	.uleb128 0
	.uleb128 .LEHB19-.LFB9460
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L290-.LFB9460
	.uleb128 0
	.uleb128 .LEHB20-.LFB9460
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L291-.LFB9460
	.uleb128 0
	.uleb128 .LEHB21-.LFB9460
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L292-.LFB9460
	.uleb128 0
	.uleb128 .LEHB22-.LFB9460
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L289-.LFB9460
	.uleb128 0
	.uleb128 .LEHB23-.LFB9460
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L293-.LFB9460
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB9460
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L289-.LFB9460
	.uleb128 0
	.uleb128 .LEHB25-.LFB9460
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L288-.LFB9460
	.uleb128 0
	.uleb128 .LEHB26-.LFB9460
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE9460:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9460:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii ".in\0"
	.text
	.p2align 4
	.globl	_Z5fReadPiS_S_S_i
	.def	_Z5fReadPiS_S_S_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5fReadPiS_S_S_i
_Z5fReadPiS_S_S_i:
.LFB9458:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$664, %rsp
	.seh_stackalloc	664
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	640(%rbp), %r12d
	movl	%r12d, %r13d
	shrl	$31, %r13d
	leaq	-32(%rbp), %rax
	movb	$47, -24(%rbp)
	movq	%r8, %rsi
	movq	%r9, %rbx
	movq	%rax, -80(%rbp)
	movq	%rax, -48(%rbp)
	movabsq	$7022344803055857199, %rax
	movq	%rax, -32(%rbp)
	movl	%r12d, %eax
	sarl	$31, %eax
	movq	%rcx, 608(%rbp)
	xorl	%eax, %r12d
	movq	%rdx, 616(%rbp)
	subl	%eax, %r12d
	movq	$9, -40(%rbp)
	movb	$0, -23(%rbp)
	cmpl	$9, %r12d
	jbe	.L350
	cmpl	$99, %r12d
	jbe	.L351
	cmpl	$999, %r12d
	jbe	.L352
	cmpl	$9999, %r12d
	jbe	.L353
	movl	%r12d, %eax
	movl	$1, %edi
	movl	$3518437209, %ecx
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L317:
	cmpl	$999999, %edx
	jbe	.L371
	cmpl	$9999999, %edx
	jbe	.L372
	cmpl	$99999999, %edx
	jbe	.L373
.L314:
	movl	%eax, %eax
	movl	%edi, %r8d
	addl	$4, %edi
	movq	%rax, %rdx
	imulq	%rcx, %rax
	shrq	$45, %rax
	cmpl	$99999, %edx
	ja	.L317
.L310:
	leaq	-16(%rbp), %rcx
	leal	0(%r13,%rdi), %edx
	movl	$45, %r8d
	movq	%rbp, -88(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rbp, -16(%rbp)
.LEHB27:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc
.LEHE27:
	movzbl	%r13b, %r13d
	subl	$1, %edi
	addq	-16(%rbp), %r13
	cmpl	$99, %r12d
	jbe	.L318
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rcx
	.p2align 4,,10
	.p2align 3
.L319:
	movl	%r12d, %edx
	movl	%r12d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r8d
	subl	%r8d, %eax
	movl	%r12d, %r8d
	movl	%edx, %r12d
	movl	%edi, %edx
	addl	%eax, %eax
	leal	1(%rax), %r9d
	movzbl	(%rcx,%rax), %eax
	movzbl	(%rcx,%r9), %r9d
	movb	%r9b, 0(%r13,%rdx)
	leal	-1(%rdi), %edx
	subl	$2, %edi
	movb	%al, 0(%r13,%rdx)
	cmpl	$9999, %r8d
	ja	.L319
.L318:
	cmpl	$9, %r12d
	jbe	.L320
	addl	%r12d, %r12d
	leaq	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits(%rip), %rax
	leal	1(%r12), %edx
	movzbl	(%rax,%rdx), %edx
	movzbl	(%rax,%r12), %eax
	movb	%dl, 1(%r13)
	movb	%al, 0(%r13)
.L321:
	leaq	-48(%rbp), %rax
	leaq	48(%rbp), %r12
	movq	-64(%rbp), %r8
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%rax, -96(%rbp)
.LEHB28:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_
.LEHE28:
	movabsq	$4611686018427387903, %rax
	subq	56(%rbp), %rax
	cmpq	$2, %rax
	jbe	.L374
	movl	$3, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%r12, %rcx
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE29:
	leaq	32(%rbp), %rdi
	leaq	16(%rax), %rdx
	movq	%rdi, 16(%rbp)
	movq	(%rax), %rcx
	movq	%rdi, -72(%rbp)
	cmpq	%rdx, %rcx
	je	.L375
	movq	%rcx, 16(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rbp)
.L324:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	leaq	64(%rbp), %r13
	movq	%rcx, 24(%rbp)
	movq	%rdx, (%rax)
	movq	48(%rbp), %rcx
	movq	$0, 8(%rax)
	cmpq	%r13, %rcx
	je	.L325
	movq	64(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L325:
	movq	24(%rbp), %rdi
	leaq	16(%rdi), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %r15
	testq	%rdi, %rdi
	jne	.L376
.L326:
	movb	$0, (%r15,%rdi)
	leaq	256(%rbp), %r14
	movq	%r14, %rcx
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%edx, %edx
	movq	$0, 472(%rbp)
	movw	%dx, 480(%rbp)
	xorl	%edx, %edx
	movq	$0, 488(%rbp)
	addq	$16, %rax
	movq	%rax, 256(%rbp)
	movq	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 496(%rbp)
	movq	$0, 504(%rbp)
	movq	8(%rax), %rdi
	movq	$0, 512(%rbp)
	movq	16(%rax), %rax
	movq	%rdi, 48(%rbp)
	movq	%rax, %rcx
	movq	%rax, -56(%rbp)
	movq	-24(%rdi), %rax
	movq	%rcx, 48(%rbp,%rax)
	movq	$0, 56(%rbp)
	movq	-24(%rdi), %rcx
	addq	%r12, %rcx
.LEHB30:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE30:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rcx
	addq	$24, %rax
	movq	%rax, 48(%rbp)
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 256(%rbp)
.LEHB31:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE31:
	movq	%r13, %rdx
	movq	%r14, %rcx
.LEHB32:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE32:
	movl	$8, %r8d
	movq	%r15, %rdx
	movq	%r13, %rcx
.LEHB33:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	movq	48(%rbp), %rdx
	movq	-24(%rdx), %rcx
	addq	%r12, %rcx
	testq	%rax, %rax
	je	.L377
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L333:
	movq	%rsi, %rdx
	movq	%r12, %rcx
	call	_ZNSirsERi
	movq	%rax, %rcx
	movq	%rbx, %rdx
	call	_ZNSirsERi
	movl	(%rsi), %eax
	movq	608(%rbp), %rbx
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.L336
	.p2align 4,,10
	.p2align 3
.L339:
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNSirsERi
	movl	(%rsi), %eax
	addl	$1, %r15d
	addq	$4, %rbx
	cmpl	%r15d, %eax
	jg	.L339
	testl	%eax, %eax
	jle	.L336
	movq	616(%rbp), %rbx
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L340:
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNSirsERi
.LEHE33:
	addl	$1, %r15d
	addq	$4, %rbx
	cmpl	%r15d, (%rsi)
	jg	.L340
.L336:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rcx
	addq	$24, %rax
	movq	%rax, 48(%rbp)
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 256(%rbp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 64(%rbp)
.LEHB34:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE34:
.L335:
	leaq	136(%rbp), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	120(%rbp), %rcx
	addq	$16, %rax
	movq	%rax, 64(%rbp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rdi), %rax
	movq	-56(%rbp), %rsi
	movq	%r14, %rcx
	movq	%rdi, 48(%rbp)
	movq	%rsi, 48(%rbp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 56(%rbp)
	addq	$16, %rax
	movq	%rax, 256(%rbp)
	call	_ZNSt8ios_baseD2Ev
	movq	16(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	je	.L342
	movq	32(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L342:
	movq	-16(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	je	.L344
	movq	0(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
.L344:
	movq	-48(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	je	.L370
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	call	_ZdlPvy
	nop
.L370:
	leaq	536(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	addl	$48, %r12d
	movb	%r12b, 0(%r13)
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L376:
	movq	16(%rbp), %rdx
	movq	%rdi, %r8
	movq	%r15, %rcx
	call	memmove
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L375:
	vmovdqu	16(%rax), %xmm0
	vmovdqa	%xmm0, 32(%rbp)
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L377:
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB35:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE35:
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L371:
	leal	5(%r8), %edi
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L372:
	leal	6(%r8), %edi
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L373:
	leal	7(%r8), %edi
	jmp	.L310
.L350:
	movl	$1, %edi
	jmp	.L310
.L351:
	movl	$2, %edi
	jmp	.L310
.L353:
	movl	$4, %edi
	jmp	.L310
.L352:
	movl	$3, %edi
	jmp	.L310
.L374:
	leaq	.LC4(%rip), %rcx
.LEHB36:
	call	_ZSt20__throw_length_errorPKc
.LEHE36:
.L354:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	vzeroupper
.L349:
	movq	-96(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	%rbx, %rcx
.LEHB37:
	call	_Unwind_Resume
.LEHE37:
.L355:
	movq	%rax, %rbx
	vzeroupper
.L347:
	movq	-64(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L349
.L356:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L347
.L361:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L335
.L357:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L331:
	leaq	16(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	jmp	.L347
.L360:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L329:
	movq	-24(%rdi), %rax
	movq	-56(%rbp), %rsi
	movq	%rdi, 48(%rbp)
	movq	%rsi, 48(%rbp,%rax)
	movq	$0, 56(%rbp)
.L330:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rcx
	addq	$16, %rax
	movq	%rax, 256(%rbp)
	call	_ZNSt8ios_baseD2Ev
	jmp	.L331
.L359:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L329
.L358:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L330
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9458:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9458-.LLSDATTD9458
.LLSDATTD9458:
	.byte	0x1
	.uleb128 .LLSDACSE9458-.LLSDACSB9458
.LLSDACSB9458:
	.uleb128 .LEHB27-.LFB9458
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L354-.LFB9458
	.uleb128 0
	.uleb128 .LEHB28-.LFB9458
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L355-.LFB9458
	.uleb128 0
	.uleb128 .LEHB29-.LFB9458
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L356-.LFB9458
	.uleb128 0
	.uleb128 .LEHB30-.LFB9458
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L358-.LFB9458
	.uleb128 0
	.uleb128 .LEHB31-.LFB9458
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L359-.LFB9458
	.uleb128 0
	.uleb128 .LEHB32-.LFB9458
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L360-.LFB9458
	.uleb128 0
	.uleb128 .LEHB33-.LFB9458
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L357-.LFB9458
	.uleb128 0
	.uleb128 .LEHB34-.LFB9458
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L361-.LFB9458
	.uleb128 0x1
	.uleb128 .LEHB35-.LFB9458
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L357-.LFB9458
	.uleb128 0
	.uleb128 .LEHB36-.LFB9458
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L356-.LFB9458
	.uleb128 0
	.uleb128 .LEHB37-.LFB9458
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE9458:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9458:
	.text
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEED2Ev
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB9964:
	.seh_endprologue
	movq	(%rcx), %r8
	testq	%r8, %r8
	je	.L380
	movq	16(%rcx), %rdx
	movq	%r8, %rcx
	subq	%r8, %rdx
	jmp	_ZdlPvy
	.p2align 4,,10
	.p2align 3
.L380:
	ret
	.seh_endproc
	.text
	.p2align 4
	.globl	_Z13poly_multiplyPiS_S_ii
	.def	_Z13poly_multiplyPiS_S_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13poly_multiplyPiS_S_ii
_Z13poly_multiplyPiS_S_ii:
.LFB9467:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movl	$1, %esi
	movl	224(%rsp), %ebx
	movslq	%r9d, %rdi
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%r8, %r12
	leal	(%rdi,%rdi), %eax
	leal	-1(%rax), %ebp
	movl	%eax, 36(%rsp)
	cmpl	$1, %ebp
	jle	.L414
	.p2align 4,,10
	.p2align 3
.L382:
	addl	%esi, %esi
	cmpl	%esi, %ebp
	jg	.L382
	movq	$0, 48(%rsp)
	movslq	%esi, %r15
	movq	$0, 56(%rsp)
	salq	$2, %r15
	movq	$0, 64(%rsp)
.L383:
	movq	%r15, %rcx
.LEHB38:
	call	_Znwy
.LEHE38:
	movq	%r15, %r8
	xorl	%edx, %edx
	leaq	(%rax,%r15), %r9
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r9, 40(%rsp)
	call	memset
	movq	40(%rsp), %r9
	movq	%r15, %rcx
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	%r9, 56(%rsp)
	movq	$0, 96(%rsp)
.LEHB39:
	call	_Znwy
.LEHE39:
	leaq	(%rax,%r15), %r9
	movq	%r15, %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%r9, 96(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rax, 80(%rsp)
	call	memset
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rax, %r10
	movq	%r9, 88(%rsp)
	testl	%edi, %edi
	jle	.L387
	.p2align 4,,10
	.p2align 3
.L388:
	movl	0(%r13,%rcx,4), %eax
	cltd
	idivl	%ebx
	movl	%edx, (%r8,%rcx,4)
	movl	(%r14,%rcx,4), %eax
	cltd
	idivl	%ebx
	movl	%edx, (%r10,%rcx,4)
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jne	.L388
.L387:
	cmpl	$7340033, %ebx
	je	.L415
	leaq	48(%rsp), %r13
	xorl	%edx, %edx
	movl	%ebx, %r8d
	movq	%r13, %rcx
	call	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
	xorl	%edx, %edx
	leaq	80(%rsp), %rcx
	movl	%ebx, %r8d
	call	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
	testl	%esi, %esi
	jle	.L392
.L393:
	movq	80(%rsp), %r10
	movq	48(%rsp), %r9
	movslq	%ebx, %r8
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L390:
	movslq	(%r9,%rcx,4), %rdx
	movslq	(%r10,%rcx,4), %rax
	imulq	%rdx, %rax
	cqto
	idivq	%r8
	movl	%edx, (%r9,%rcx,4)
	addq	$1, %rcx
	cmpl	%ecx, %esi
	jg	.L390
	cmpl	$7340033, %ebx
	je	.L389
.L392:
	movl	%ebx, %r8d
	movl	$1, %edx
	movq	%r13, %rcx
	call	_Z10ntt_scalarRSt6vectorIiSaIiEEbi
.L391:
	testl	%ebp, %ebp
	jle	.L397
	movl	36(%rsp), %ecx
	movq	48(%rsp), %r8
	xorl	%eax, %eax
	subl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L398:
	movl	(%r8,%rax,4), %edx
	movl	%edx, (%r12,%rax,4)
	movq	%rax, %rdx
	addq	$1, %rax
	cmpq	%rdx, %rcx
	jne	.L398
.L397:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L396
	movq	96(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
.L396:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L413
	movq	64(%rsp), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	nop
.L413:
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L415:
	leaq	48(%rsp), %r13
	xorl	%edx, %edx
	movq	%r13, %rcx
	call	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
	xorl	%edx, %edx
	leaq	80(%rsp), %rcx
	call	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
	testl	%esi, %esi
	jg	.L393
	.p2align 4,,10
	.p2align 3
.L389:
	movl	$1, %edx
	movq	%r13, %rcx
	call	_Z18ntt_avx2_small_modRSt6vectorIiSaIiEEb
	jmp	.L391
	.p2align 4,,10
	.p2align 3
.L414:
	movq	$0, 48(%rsp)
	movl	$4, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	jmp	.L383
.L402:
	movq	%rax, %r12
	leaq	48(%rsp), %rcx
	vzeroupper
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%r12, %rcx
.LEHB40:
	call	_Unwind_Resume
	nop
.LEHE40:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9467:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9467-.LLSDACSB9467
.LLSDACSB9467:
	.uleb128 .LEHB38-.LFB9467
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB9467
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L402-.LFB9467
	.uleb128 0
	.uleb128 .LEHB40-.LFB9467
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE9467:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC11:
	.ascii "average latency for n = \0"
.LC12:
	.ascii " p = \0"
.LC13:
	.ascii " : \0"
.LC14:
	.ascii " (us) \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB9468:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	vmovaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	vmovaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	.seh_endprologue
	vxorps	%xmm7, %xmm7, %xmm7
	xorl	%ebx, %ebx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r14
	call	__main
	leaq	92(%rsp), %r13
	leaq	88(%rsp), %rbp
	vmovsd	.LC9(%rip), %xmm6
	movq	.refptr._ZSt4cout(%rip), %rsi
	leaq	64(%rsp), %rdi
.L420:
	movl	%ebx, 32(%rsp)
	movq	%r13, %r9
	movq	%rbp, %r8
	leaq	b(%rip), %rdx
	leaq	a(%rip), %rcx
	call	_Z5fReadPiS_S_S_i
	movl	$1200000, %r8d
	xorl	%edx, %edx
	leaq	ab(%rip), %rcx
	call	memset
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	88(%rsp), %r9d
	leaq	ab(%rip), %r8
	leaq	b(%rip), %rdx
	movq	%rax, %r12
	movl	92(%rsp), %eax
	leaq	a(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z13poly_multiplyPiS_S_ii
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	88(%rsp), %edx
	movl	%ebx, %r8d
	leaq	ab(%rip), %rcx
	subq	%r12, %rax
	fldz
	vcvtsi2sdq	%rax, %xmm7, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm1
	vmovsd	%xmm1, 48(%rsp)
	faddl	48(%rsp)
	fstpt	48(%rsp)
	call	_Z6fCheckPiii
	movl	$24, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	88(%rsp), %edx
	movq	%rsi, %rcx
	call	_ZNSolsEi
	movl	$5, %r8d
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	92(%rsp), %edx
	movq	%r12, %rcx
	call	_ZNSolsEi
	movl	$3, %r8d
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	48(%rsp)
	movq	%r12, %rcx
	movq	%rdi, %rdx
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movl	$6, %r8d
	leaq	.LC14(%rip), %rdx
	movq	%rax, %r12
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r15
	testq	%r15, %r15
	je	.L423
	cmpb	$0, 56(%r15)
	je	.L418
	movsbl	67(%r15), %edx
.L419:
	movq	%r12, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movl	88(%rsp), %edx
	movl	%ebx, %r8d
	leaq	ab(%rip), %rcx
	addl	$1, %ebx
	call	_Z6fWritePiii
	cmpl	$4, %ebx
	jne	.L420
	vmovaps	96(%rsp), %xmm6
	vmovaps	112(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	movq	%r15, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%r14, %rax
	je	.L419
	movq	%r15, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L419
.L423:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I__Z5fReadPiS_S_S_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z5fReadPiS_S_S_i
_GLOBAL__sub_I__Z5fReadPiS_S_S_i:
.LFB10178:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z5fReadPiS_S_S_i
	.globl	_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits
	.section	.rdata$_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits,"dr"
	.linkonce same_size
	.align 32
_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits:
	.ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\0"
	.globl	ab
	.bss
	.align 32
ab:
	.space 1200000
	.globl	b
	.align 32
b:
	.space 1200000
	.globl	a
	.align 32
a:
	.space 1200000
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 32
.LC0:
	.long	1753047971
	.long	1048725796
	.long	1753047971
	.long	1048725796
	.long	1753047971
	.long	1048725796
	.long	1753047971
	.long	1048725796
	.align 32
.LC1:
	.long	1073741824
	.long	1096548352
	.long	1073741824
	.long	1096548352
	.long	1073741824
	.long	1096548352
	.long	1073741824
	.long	1096548352
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC9:
	.long	0
	.long	1093567616
	.ident	"GCC: (tdm64-1) 10.3.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEyc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt12__basic_fileIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIeEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE:
	.quad	_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE:
	.quad	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE:
	.quad	_ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE:
	.quad	_ZTVSt9basic_iosIcSt11char_traitsIcEE
