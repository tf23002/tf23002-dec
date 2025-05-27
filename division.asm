section .data
    num1 dd 100
    num2 dd 5
    result dd 0

section .text
    global _start

_start:
    mov eax, [num1]
    xor edx, edx
    mov ebx, [num2]
    div ebx
    mov [result], eax

    mov eax, 1
    int 0x80
