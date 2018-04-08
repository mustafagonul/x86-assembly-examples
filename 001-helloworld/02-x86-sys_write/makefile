all:
	nasm -f elf32 -o helloworld.o helloworld.asm
	ld -m elf_i386 -o helloworld helloworld.o

clean:
	rm helloworld helloworld.o

