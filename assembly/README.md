# The ML Calculator
## Assembly Edition

Alright, I completely underestimated how hard assembly was to learn, so I went screw it

Introducing... ChatGPT!!!

This assembly calculator only works with whole numbers, only on linux x86(x64)

###### I am too lazy to port...

Anyways

Install NASM:

    sudo apt update
    sudo apt install nasm

Compile:

    nasm -f elf64 calc.asm -o calc.o
    gcc -no-pie -o calc calc.o

Run: 

    ./calc