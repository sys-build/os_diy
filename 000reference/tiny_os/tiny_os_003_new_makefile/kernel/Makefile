
TARGET = kernel

AS = nasm

INCPATH = ../golibc/
LIBPATH = ../golibc/

CC = gcc
CFLAGS = -m32 -nostdinc -fno-stack-protector -I$(INCPATH) -c

LD = ld
LDFLAGS = -m elf_i386 -nostdlib -T ../tinyos.lds

ELF2APP = ../tool/elf2tinyapp
MAKEFONT = ../tool/makefont

OBJS = boot.o font.o 

default :
	make ipl.bin
	make $(TARGET).sys

font.c : font.txt
	$(MAKEFONT) $< $@

*.o : *.c
	$(CC) $(CFLAGS) $*.c -o $*.o

nasmfunc.o : nasmfunc.s
	$(AS) $< -f elf32 -o $@

ipl.bin : ipl.s
	$(AS) $< -o $@

$(TARGET).app : $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) $(LIBPATH)/golibc.lib -o $(TARGET).elf -Map=$(TARGET).map
	$(ELF2APP) $(TARGET).elf $(TARGET).app

$(TARGET).sys : asmhead.s $(TARGET).app
	$(AS) asmhead.s -o asmhead.bin
	cat asmhead.bin $(TARGET).app > $(TARGET).sys

clean :
	-rm *.bin
	-rm *.o
	-rm *.elf
	-rm *.app
	-rm *.map
	-rm *.sys
	-rm font.c

