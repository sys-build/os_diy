
AS = nasm

CC = gcc
CFLAGS = -m32 -nostdinc -fno-stack-protector -I./golibc/ -c

LD = ld
LDFLAGS = -m elf_i386 -nostdlib

OBJS = bootpack.o asmfunc.o font.o graphic.o dsctbl.o int.o fifo.o

tinyos.img : ipl.bin tinyos.sys
	-mkdir -p out/floppy
	-dd if=/dev/zero of=out/floppy.img bs=512 count=2880
	-sudo mkfs.vfat out/floppy.img
	-sudo mount out/floppy.img out/floppy
	-sudo cp tinyos.sys out/floppy
	@sleep 1
	-sudo umount out/floppy.img
	dd if=out/floppy.img of=out/floppy-no-ipl.img bs=512 skip=1
	cat ipl.bin out/floppy-no-ipl.img > tinyos.img

run :
	make tinyos.img
	qemu-system-i386 -no-kvm -vga std -fda tinyos.img

font.c : font.txt
	./tool/makefont $< $@

*.o : *.c
	$(CC) $(CFLAGS) $*.c -o $*.o

asmfunc.o : asmfunc.s
	$(AS) $< -f elf32 -o $@

ipl.bin : ipl.s
	$(AS) $< -o $@

tinyos.app : $(OBJS) golibc/golibc.lib
	$(LD) $(LDFLAGS) $(OBJS) golibc/golibc.lib -o tinyos.elf -T tinyos.lds -Map=tinyos.map
	./tool/elf2tinyapp tinyos.elf tinyos.app

tinyos.sys : asmhead.s tinyos.app
	$(AS) asmhead.s -o asmhead.bin
	cat asmhead.bin tinyos.app > tinyos.sys

clean :
	-rm tinyos.img
	-rm -rf out
	-rm *.bin *.o
	-rm tinyos.elf
	-rm tinyos.map
	-rm tinyos.app
	-rm font.c

