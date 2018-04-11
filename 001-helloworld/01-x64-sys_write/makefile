all:
	nasm -f elf64 -o helloworld.o helloworld.asm
	ld -m elf_x86_64 -o helloworld helloworld.o

clean:
	rm helloworld helloworld.o

