BITS 64

global _start

section .rodadata

	file_to_unlink db "file_linked", 0

section .text

_start:
	mov rax, 0x57
	mov rdi, file_to_unlink
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall	
