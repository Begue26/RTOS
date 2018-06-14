#Propósito: Este programa encuentra el valor mínimo
#           de un conjunto de elementos de datos.
#
#"%ebx" - El elemento de datos más pequeño  encontrado.
#"%eax" - Elemento de datos actual.
#
#Se utilizan las siguientes ubicaciones de memoria:
#
#data_items - Contiene el elemento de los datos. Se utiliza un 0
#             para finalizar los datos.
#

.section .data
data_items:         #Estos son los elementos de datos.
.long 3,67,34,2,45,75,54,34,1,33,22,11,66,12

.section .text

.globl _start
_start:
movl $0,%edi        #Mover 0 al registro de índice.
movl data_items(,%edi,4),%eax   #Carga el primer byte de datos.
movl %eax,%ebx      #Ya que este es el primer elemento,
                    #%eax es el más grande.
start_loop:
cmpl $12,%eax        #Comprueba si hemos llegado al final
je loop_exit
incl %edi           #Carga el siguiente valor.
movl data_items(,%edi,4),%eax
cmpl %ebx,%eax      #Compara los valores.
jge start_loop      #Salto al comienzo del bucle si el nuevo
                    #valor es el más grande.
movl %eax,%ebx      #Mueve el valor como el más pequeño.
jmp start_loop      #Salto al comienzo del bucle

loop_exit:
#%ebx es el código de estado para la llamada al sistema de salida
#y ya tiene el número máximo
movl $1,%eax        #1 es la llamada al sistema de salida.
int $0x80



