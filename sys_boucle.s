BITS 64

global _start

section .rodata

    boucle db "boucle", 10, 0
    boucle_len equ $-boucle

section .text

_start:
    cmp r12, 15
    je _exit
    inc r12
    mov rax, 1
    mov rdi, 1
    mov rsi, boucle
    mov rdx, boucle_len
    syscall
    jmp _start

_exit:
    mov rax, 60
    mov rdi, 0
    syscall
