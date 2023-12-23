section .data
	text db "Enter the number: "
	value db 0,10

; section .bss
;	value resb 8

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 18
	syscall

	call _getInput
	call _getAsciiFromValue
	call _exit

_getInput:
	mov rax, 0
	mov rdi, 0
	mov rsi, value
	mov rdx, 8
	syscall
	ret

_getAsciiFromValue:
	add rax, 48
	mov [value], al
	mov rax, 1
	mov rdi, 1
	mov rsi, value
	mov rdx, 8
	syscall
	ret

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
	ret
