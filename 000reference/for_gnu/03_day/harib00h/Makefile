ifeq ($(shell uname -m),x86_64)
# x86_64 host
CC = gcc -m32
LD = ld -m elf_i386
else
# i386 host
CC = gcc
LD = ld
endif

OBJCOPY = objcopy
GDB = gdb
QEMU = qemu-system-i386
DISK_IMAGE = haribote.img

# If you don't need list file, comment out the following
LIST = -Wa,-a=$(@:.o=.lst)
# If you don't need debug option, comment out the following
DEBUG = -g

all: $(DISK_IMAGE)

dump: $(DISK_IMAGE)
	hexdump -C $<

run: $(DISK_IMAGE)
	$(QEMU) -fda $< &

debug: $(DISK_IMAGE)
	$(QEMU) -S -s -fda $< &
	$(GDB) -q -s haribote.out -x ../../tools/gdb_script.txt

$(DISK_IMAGE): ipl10.bin haribote.sys
	../../tools/mk_fdimage.py -b ipl10.bin $@ haribote.sys

ipl10.out: ipl10.lds ipl10.o
	$(LD) -o $@ -T ipl10.lds ipl10.o

haribote.out: haribote.lds haribote.o
	$(LD) -o $@ -T haribote.lds haribote.o

%.bin: %.out
	$(OBJCOPY) -O binary $< $@

%.sys: %.out
	$(OBJCOPY) -O binary $< $@

%.o: %.s
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

%.o: %.S
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

clean:
	rm -f *.img *.out *.bin *.o *.lst *.sys

distclean: clean
	rm -f *~

.PHONY: all dump run debug clean distclean
