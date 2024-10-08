#!/bin/bash

nasm -f elf32 kernel.asm -o kasm.o

gcc -m32 -std=c99 -c kernel.c -o kc.o

ld -m elf_i386 -T link.ld -o kernel kasm.o kc.o