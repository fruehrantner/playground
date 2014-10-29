section .data

hello db "Hello World!",0xa	; 0xa is the new line character
len equ $-hello


section .text

global _start

_start:
mov eax, 4			; sys_write
mov ebx, 1
mov ecx, hello
mov edx, len
int 80h

mov eax, 1			; sys_exit
mov ebx, 0
int 80h
