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
NM = nm
GDB = gdb
QEMU = qemu-system-i386
IMAGE = os.img

all: $(IMAGE)
build: $(IMAGE)
run: $(IMAGE)
	$(QEMU) -fda $<

$(IMAGE): boot.bin os.sys cos
	cat boot.bin os.sys > os.part
	./cos
	#./mk_image.py -b boot.bin $@ os.sys #cat boot.bin os.sys > $@  #

cos: create_os_img.c
	gcc -o cos create_os_img.c

os.sys: head.bin os.info os.bin
	cat $^ > $@

boot.bin: boot.out
	$(OBJCOPY) -O binary $< $@

boot.out: boot.lds boot.o
	$(LD) -o $@ -T boot.lds boot.o
	
boot.o: boot.s
	$(CC) -c -o $@ $<

os.bin: os.out
	$(OBJCOPY) -O binary $< $@

os.out: os.lds os.o
	$(LD) -o $@ -T os.lds os.o

os.o: os.c
	$(CC) -c -o $@ $<

head.bin: head.out
	$(OBJCOPY) -O binary $< $@

head.out: head.lds head.o
	$(LD) -o $@ -T head.lds head.o

head.o: head.s
	$(CC) -c -o $@ $<

os.out: os.lds os.o
	$(LD) -o $@ -T os.lds os.o

os.o: os.c
	$(CC) -c -o $@ $<

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
os.info: os.out Makefile
	text_start=0x$$(LANG=C $(NM) os.out | awk '/_stext/ {print $$1}'); \
	data_start=0x$$(LANG=C $(NM) os.out | awk '/_sdata/ {print $$1}'); \
	data_end=0x$$(LANG=C $(NM) os.out | awk '/_edata/ {print $$1}'); \
	heap_start=0x$$(LANG=C $(NM) os.out | awk '/_sheap/ {print $$1}'); \
	heap_end=0x$$(LANG=C $(NM) os.out | awk '/_eheap/ {print $$1}'); \
	data_lma=0x$$(LANG=C $(NM) os.out | awk '/_sidata/ {print $$1}'); \
	entry_point=0x$$(LANG=C $(NM) os.out | awk '/HariMain/ {print $$1}'); \
	perl -e "print pack('LA4LLLLLLL', $$heap_end, 'Hari', 0, $$data_start, \
	$$data_end - $$data_start, 0x24 + $$data_lma, 0xe9000000, $$entry_point - $$text_start + 4, $$heap_start);" > $@

clean:
	rm -f *.img *.out *.bin *.o *.sys *.part cos os.info