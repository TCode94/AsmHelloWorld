STD_OUTPUT_HANDLE equ -11
NULL equ 0
status equ 0
stdout_query equ -11
global GobleyGook
extern ExitProcess, GetStdHandle, WriteFile

section .data
msg				db "Hello World!", 13, 10
msg.len			equ $ - msg
stdout dw		0
bytesWritten dw	0


section .bss
dummy			resd 1

section .text
GobleyGook:
		mov 	rcx, -11
		call	GetStdHandle
		mov		rcx, rax

		mov		rdx, msg
		mov		r8, msg.len
		mov		r9, 0
		push	qword 0
		call	WriteFile

		mov		rcx, status
		call	ExitProcess
		;push	STD_OUTPUT_HANDLE
		;call	GetStdHandle

		;push	NULL
		;push	dummy
		;push	msg.len
		;push	msg
		;push	rax
		;call	WriteConsole

		;push	NULL
		;call	ExitProcess
