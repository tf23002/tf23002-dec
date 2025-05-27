section .text
global _start

_start:
    mov eax, 7      ; numero 1
    sub eax, 4      ; numero 2 (resta: 7 - 4)
    mov ebx, eax    ; mover el resultado a ebx para el codigo de salida
    mov eax, 1      ; syscall: sys_exit
    int 0x80        ; ejecutar la salida con el resultado
