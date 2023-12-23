section .data
	text db "Wie lautet dein name: "
	hello db "Hallo "
	exit db "exit"
	exittext db "Exiting loop!"

section .bss
	%define buffer_len 64
	buffer: resb buffer_len

section .text
	global _start

_start:
	;Print text for user
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 22
	syscall

	;Get user input
	mov rax, 0
	mov rdi, 0
	mov rsi, buffer
	mov rdx, buffer_len
	syscall
	
	mov rax, exit
	mov rbx, buffer
	cmp rax, rbx
	je _exit

	;say
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, 6
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, buffer_len
	syscall
	
	jmp _start

_exit:
	mov rax, 1
	mov rdi, 1
	mov rsi, exittext
	mov rdx, 13
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
