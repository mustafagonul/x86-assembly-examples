section .data
	msg	db 'Hello World!',`\n` ; Hello world message
	len equ $ - msg            ; Length of message

section .text
	global	_start ; declared for the linker

_start:
	;----------------------------------------------
	mov	eax, 4   ; System call number (sys_write)
	mov	ebx, 1   ; File descriptor (stdout)
	mov	ecx, msg ; Message address
	mov	edx, len ; Message length

	int 0x80     ; Call kernel

	;----------------------------------------------
	mov	eax, 1   ; System call number (sys_exit)

	int 0x80     ; Call kernel

