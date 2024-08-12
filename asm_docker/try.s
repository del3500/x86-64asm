.globl _start 
.section .text 
_start:
	jmp nextplace
	movq $10, %rdi
nextplace:
	movq $23, %rdi
	movq $60,  %rax
	syscall
