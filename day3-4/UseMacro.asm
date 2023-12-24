section .data
	text db "Hello, World!",10

section .text
	global _start

%include "macro.asm"

_start:
	print text, 14
	exit 0
