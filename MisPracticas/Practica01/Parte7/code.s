	.file	"code.c"
	.text
	.comm	j,4,4
	.comm	k,4,4
	.globl	m
	.data
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.long	23
	.section	.rodata
.LC0:
	.string	"abcd"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$12, -12(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
