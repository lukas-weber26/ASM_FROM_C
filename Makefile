add: _main.o _add.o 
	cc -g _main.o _add.o -o run
	rm *.o

_main.o: caller.c
	cc -c -g caller.c -o _main.o

_add.o: add.asm
	nasm add.asm -f elf64 -o _add.o

clean: 
	rm *.o output
