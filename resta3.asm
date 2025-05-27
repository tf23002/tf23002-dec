section .data
    num1 dw 20
    num2 dw 5
    num3 dw 3
    result dw 0

section .text
    global _start

_start:
    mov ax, [num1]   ; ax = num1 (20)
    sub ax, [num2]   ; ax = ax - num2 (20 - 5 = 15)
    sub ax, [num3]   ; ax = ax - num3 (15 - 3 = 12)
    mov [result], ax ; guardar el resultado

    mov eax, 1
    int 0x80
