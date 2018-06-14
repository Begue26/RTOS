#Propósito: Programa sencillo que sale y devuelve un código de estado al núcleo Linux.
#
#Entradas: Ninguna.
#
#Salidas: Devuelve el código de estado. Éste se puede ver escribiendo "echo S?"
#         después de ejecutar del programa.
#
#Variables: "%eax" guarda el número de llamada de sistema.
#           "%ebx" guarda el estado de retorno.
.section .data

.section .text
.globl _start

_start:
movl $1, %eax       #Éste es el número de comando del núcleo Linux
                    #para salir de un programa
movl $254, %ebx       #Eśte es el número de estado que devolveremos al
                    #al sistema operativo.
                    #¿Cambiar este valor y devolverá diferentes cosas
                    #a "echo $"?
int $0x80           #Esto despierta a el núcleo para ejecutar el 
                    #comando de salida


