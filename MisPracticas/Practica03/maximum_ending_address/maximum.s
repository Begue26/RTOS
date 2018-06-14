#Propósito: Este programa encuentra el valor máximo
#           de un conjunto de elementos de datos.
#
#"%ebx" - El elemento de datos más grande encontrado.
#"%eax" - Elemento de datos actual.
#
#Se utilizan las siguientes ubicaciones de memoria:
#
#data_items - Contiene el elemento de los datos. Se utiliza un 0
#             para finalizar los datos.
#

.section .data
data_items:         #Estos son los elementos de datos.
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,230

.section .text

.globl _start
_start:
movl $0,%edi        #Mover 0 al registro de índice.
movl data_items(,%edi,4),%eax   #Carga el primer byte de datos.
movl %eax,%ebx      #Ya que este es el primer elemento,
                    #%eax es el más grande.
start_loop:
cmpl $13,%edi       #Comprueba si hemos llegado al
je loop_exit        #último elemento de la lista (230).
incl %edi           #Carga el siguiente valor.
movl data_items(,%edi,4),%eax
cmpl %ebx,%eax       #Compara los valores.
jle start_loop      #Salto al comienzo del bucle si el nuevo
                    #valor no es el más grande.
movl %eax,%ebx      #Mueve el valor como el más grande.
jmp start_loop      #Salto al comienzo del bucle

loop_exit:
#%ebx es el código de estado para la llamada al sistema de salida
#y ya tiene el número máximo
movl $1,%eax        #1 es la llamada al sistema de salida.
int $0x80



