%macro exit 1
	mov rax, 60
	mov rdi, %1
	syscall
%endmacro

%macro print 2
	mov rax, 1
	mov rdi, 1
	mov rsi, %1
	mov rdx, %2
	syscall
%endmacro
