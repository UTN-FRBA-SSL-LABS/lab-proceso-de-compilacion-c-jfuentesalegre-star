	.file	"matematica.c"
	.text
	.globl	area_circulo
	.def	area_circulo;	.scl	2;	.type	32;	.endef
	.seh_proc	area_circulo
area_circulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	factorial
	.def	factorial;	.scl	2;	.type	32;	.endef
	.seh_proc	factorial
factorial:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$1, 16(%rbp)
	jg	.L4
	movl	$1, %eax
	jmp	.L5
.L4:
	movl	16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	call	factorial
	imull	16(%rbp), %eax
.L5:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	potencia
	.def	potencia;	.scl	2;	.type	32;	.endef
	.seh_proc	potencia
potencia:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movsd	-8(%rbp), %xmm0
	mulsd	16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L7:
	movl	-12(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L8
	movsd	-8(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	1413754129
	.long	1074340347
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Rev14, Built by MSYS2 project) 15.2.0"
