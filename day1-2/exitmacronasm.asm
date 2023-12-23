section .data
	text db "Executing exit macro!"

section .text
	global _start

%macro exit 1
	mov rax, 60
	mov rdi, %1
	syscall
%endmacro

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 21
	syscall

	exit 0
