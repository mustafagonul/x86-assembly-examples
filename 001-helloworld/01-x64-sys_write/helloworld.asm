section .data
	msg	db 'Hello World!',`\n` ; Hello world message
	len equ $ - msg            ; Length of message

section .text
	global	_start ; declared for the linker

_start:
	;----------------------------------------------
	mov	rax, 1   ; System call number (sys_write)
	mov	rdi, 1   ; File descriptor (stdout)
	mov	rsi, msg ; Message address
	mov	rdx, len ; Message length

	syscall      ; Call kernel

	;----------------------------------------------
	mov	rax, 60  ; System call number (sys_exit)
	mov	rdi, 0   ; Error number

	syscall      ; Call kernel

