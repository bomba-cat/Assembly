# Assembly x86_64
All my assembly code i made to learn assembly

# Important things to assembly
- .text where your code goes
- .bss where you reserve memory
- .data where you store data

- the compiler will start to execute the _start label first before anything else

# How to compile assembly?
- nasm -o elf64 -o {dateiname}.asm {dateiname}.o
- ld {dateiname}.o -o {dateiname}
