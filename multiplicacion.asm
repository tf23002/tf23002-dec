section .data
    num1 db 4
    num2 db 5
    result dw 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    mul bl           ; resultado en ax
    mov [result], ax

    mov eax, 1
    int 0x80
