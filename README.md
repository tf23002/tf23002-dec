# Repositorio tf23002-dec

Este repositorio contiene la solución a tres ejercicios desarrollados en lenguaje ensamblador (NASM), como parte de la práctica individual de programación en bajo nivel. Los ejercicios fueron resueltos utilizando la sintaxis de NASM y están pensados para ejecutarse en un entorno Linux.

## Estructura del repositorio

- resta3.asm: Código fuente del ejercicio 1 - Resta de tres enteros utilizando registros de 16 bits.
- multiplicacion.asm: Código fuente del ejercicio 2 - Multiplicación de dos enteros utilizando registros de 8 bits.
- division.asm: Código fuente del ejercicio 3 - División de dos enteros utilizando registros de 32 bits.
- README.md: Documento explicativo del contenido del repositorio.

## Requisitos

- Sistema operativo: Linux
- NASM (Netwide Assembler)
- ld para enlazado de los archivos objeto
- Permisos para ejecutar programas en terminal

## Ejercicios

### 1. Resta de tres enteros (resta3.asm)
Este programa realiza la resta de tres números enteros definidos como datos de 16 bits. Se emplean instrucciones básicas como mov y sub, y se almacena el resultado en una variable. El propósito es familiarizarse con el manejo de registros de 16 bits (por ejemplo, AX).

### 2. Multiplicación de dos enteros (multiplicacion.asm)
Este ejercicio multiplica dos números enteros de 8 bits utilizando la instrucción mul. El resultado se almacena en un registro de 16 bits, ya que el producto de dos registros de 8 bits puede necesitar hasta 16 bits para representarse.

### 3. División de dos enteros (division.asm)
En este caso, se realiza una división entre dos números enteros definidos como datos de 32 bits. Se emplea la instrucción div, utilizando los registros EAX y EBX, y se almacena el cociente en EAX.

## Compilación y ejecución

A continuación se presentan los comandos para compilar y ejecutar cualquiera de los programas, suponiendo que se utiliza NASM y ld en un entorno Linux:

sudo apt install nasm gcc-multilib

nasm -f elf32 resta3.asm -o resta3.o
ld -m elf_i386 -o resta3 resta3.o
./resta3
echo $?

nasm -f elf32 multiplicacion.asm -o multiplicacion.o
ld -m elf_i386 -o multiplicacion multiplicacion.o
./multiplicacion
echo $?

nasm -f elf32 division.asm -o division.o
ld -m elf_i386 -o division division.o
./division
echo $?
