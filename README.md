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

# Nasm Macros
Its important to note that for every compiler, the macros are made differently.
In nasm we do it like this:
%macro {macroname} {argsc}
  -- the macro itself
  -- arguments are called using %1, %2 etc.
%endmacro

when doing a label inside a macro its recommended to do a local label like this
%macro {macroname} {argsc}
  -- %%_label
  --  whatever code
%endmacro
when not doing a local label and calling a macro twice the compiler will try to create two label with the same name and give out a redifined name error.
