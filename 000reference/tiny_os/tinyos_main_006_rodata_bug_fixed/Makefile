
AS = nasm

CC = gcc
CFLAGS = -m32 -c

LD = ld
LDFLAGS = -m elf_i386 -nostdlib -Ttext=0x280024 -Tdata=0x310000

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

ipl.bin : ipl.s
	$(AS) $< -o $@

tinyos.sys : asmhead.s asmfunc.s bootpack.c font.c
	$(AS) asmhead.s -o asmhead.bin
	$(AS) asmfunc.s -f elf32 -o asmfunc.o
	$(CC) $(CFLAGS) bootpack.c
	$(CC) $(CFLAGS) font.c
	$(LD) $(LDFLAGS) bootpack.o font.o asmfunc.o -o tinyos.elf
	./tool/elf2tinyapp tinyos.elf tinyos.app
	cat asmhead.bin tinyos.app > tinyos.sys

font.c : font.txt
	./tool/makefont $< $@

clean :
	-rm tinyos.img
	-rm -rf out
	-rm *.bin *.o
	-rm tinyos.*
	-rm font.c

