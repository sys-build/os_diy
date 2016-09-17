ifeq ($(shell uname -m),x86_64)
# x86_64 host
CC = gcc -m32
LD = ld -m elf_i386
else
# i386 host
CC = gcc
LD = ld
endif

CFLAGS = -Wall
OBJCOPY = objcopy
NM = nm
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
	$(GDB) -q -s bootpack.out -x ../../tools/gdb_script.txt

$(DISK_IMAGE): ipl10.bin haribote.sys
	../../tools/mk_fdimage.py -b ipl10.bin $@ haribote.sys

ipl10.out: ipl10.lds ipl10.o
	$(LD) -o $@ -T ipl10.lds ipl10.o

haribote.sys: asmhead.bin bootpack.hrb bootpack.bin
	cat $^ > $@

asmhead.out: asmhead.lds asmhead.o
	$(LD) -o $@ -T asmhead.lds asmhead.o

#.hrb
# +0x00: size of (stack + .data + heap) multiple of 4KB
# +0x04: "Hari"
# +0x08: the size of mmare (multiple of 4KB)
# +0x0c: the init value of stack, or VMA of .data
# +0x10: size of (.data)
# +0x14: LMA of (.data)
# +0x18: 0xe9000000 (jmp instruction)
# +0x1c: offset to entry point
# +0x20: start address of heap
bootpack.hrb: bootpack.out Makefile
	text_start=0x$$(LANG=C $(NM) bootpack.out | awk '/_stext/ {print $$1}'); \
	data_start=0x$$(LANG=C $(NM) bootpack.out | awk '/_sdata/ {print $$1}'); \
	data_end=0x$$(LANG=C $(NM) bootpack.out | awk '/_edata/ {print $$1}'); \
	heap_start=0x$$(LANG=C $(NM) bootpack.out | awk '/_sheap/ {print $$1}'); \
	heap_end=0x$$(LANG=C $(NM) bootpack.out | awk '/_eheap/ {print $$1}'); \
	data_lma=0x$$(LANG=C $(NM) bootpack.out | awk '/_sidata/ {print $$1}'); \
	entry_point=0x$$(LANG=C $(NM) bootpack.out | awk '/HariMain/ {print $$1}'); \
	perl -e "print pack('LA4LLLLLLL', $$heap_end, 'Hari', 0, $$data_start, \
	$$data_end - $$data_start, 0x24 + $$data_lma, 0xe9000000, $$entry_point - $$text_start + 4, $$heap_start);" > $@

bootpack.out: bootpack.lds bootpack.o naskfunc.o
	$(LD) $(DEBUG) -o $@ -T bootpack.lds bootpack.o naskfunc.o

%.bin: %.out
	$(OBJCOPY) -R .eh_frame -O binary $< $@

%.o: %.s
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

%.o: %.S
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) $(DEBUG) $(LIST) -c -o $@ $<

clean:
	rm -f *.img *.out *.bin *.o *.lst *.sys *.hrb

distclean: clean
	rm -f *~

.PHONY: all dump run debug clean distclean
