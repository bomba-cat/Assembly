STDIN equ 0
STDOUT equ 1
STDERR equ 2

SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

section .data
	text db "Hello, World!"

section .text
	global _start

%macro exit 1
	mov rax, SYS_EXIT
	mov rdi, %1
	syscall
%endmacro

_start:
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	mov rsi, text
	mov rdx, 13
	syscall

	exit 0
