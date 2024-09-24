bits 64
global add

section .text

add:
	add rdi, rsi
	mov rax, rdi
	ret
	
