
export OUT_BASE_DIR = ./out

export MAKEFONT = ./tool/makefont
export ELF2APP = ./tool/elf2tinyapp

INCPATH = ./golibc
LIBPATH = ./golibc

export AS = nasm

export CC = gcc
export CFLAGS = -m32 -nostdinc -fno-stack-protector -I$(INCPATH) -c

export LD = ld
export LDFLAGS = -m elf_i386 -nostdlib -T ./build/tinyapp.lds

