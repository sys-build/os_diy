
export OUT_BASE_DIR = ./out

export MAKEFONT = ./tool/makefont
export ELF2APP = ./tool/elf2tinyapp

INCPATH = ./golibc
GOLIBC = ./out/golibc/golibc.a

export AS = nasm

export CC = gcc
export CFLAGS = -m32 -nostdinc -fno-stack-protector -I$(INCPATH) -g -O0

export LD = ld
export LDFLAGS = -m elf_i386 -nostdlib -T ./build/tinyapp.lds

export CLEAR_VARS = build/clear_vars.mk
export BUILD_TINYAPP = build/build_tinyapp.mk
export BUILD_STATICLIB = build/build_staticlib.mk


