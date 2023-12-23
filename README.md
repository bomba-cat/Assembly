# Assembly x86_64
All my assembly code i made to learn assembly

# Important things to assembly
- .text where your code goes
- .bss where you reserve memory
- .data where you store data

- the compiler will start to execute the _start label first before anything else

# How to compile assembly?
we take the .asm file and make an object file out of it using nasm
- nasm -o elf64 -o {filenae}.asm {filenae}.o

then we take the object file and using the built in linux linker we make an executable
- ld {filenae}.o -o {filenae}

now we can execute our executable
- ./{filenae}
