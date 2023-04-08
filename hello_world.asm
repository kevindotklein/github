global _start

section .text:

_start:
    mov eax, 0x4 ;write syscall
    mov ebx, 1 ;stdout
    mov ecx, message
    mov edx, message_len

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

section .data:
    message: db "hello world", 0xA
    message_len equ $-message
