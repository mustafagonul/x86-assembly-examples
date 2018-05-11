section .data
	msg	db 'Hello World! %d',`\n`, `\0` ; Hello world message

section .text
	global main ; declared for the linker
	extern printf 

main:
	push ebp
	mov  ebp, esp

	mov  eax, 1
	push dword eax
	push dword msg
	call printf

	add esp, 12
	mov esp, ebp
	pop ebp

	ret

