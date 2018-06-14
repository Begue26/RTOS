all:exit

exit:exit.o
	ld -m elf_i386 exit.o -o exit

exit.o:exit.s
	as --32 exit.s -o exit.o
