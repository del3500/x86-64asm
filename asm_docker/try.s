.globl _start 
.section .text 
_start:
	movb $0b00000001, %cl
	movb $0b10000000, %ch
	addb %cl, %ch
	movq %rcx, %rdi
	movq $60, %rax
	syscall
