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
IMAGE = os.img

all: $(IMAGE)
build: $(IMAGE)
run: $(IMAGE)
	$(QEMU) $<

$(IMAGE): boot.bin os.sys cos
	cat boot.bin os.sys > os.part
	./cos
	#./mk_image.py -b boot.bin $@ os.sys #cat boot.bin os.sys > $@  #

cos: create_os_img.c
	gcc -o cos create_os_img.c

boot.bin: boot.out
	$(OBJCOPY) -O binary $< $@

os.sys: os.out
	$(OBJCOPY) -O binary $< $@

boot.out: boot.lds boot.o
	$(LD) -o $@ -T boot.lds boot.o

os.out: os.lds os.o
	$(LD) -o $@ -T os.lds os.o

boot.o: boot.s
	$(CC) -c -o $@ $<

os.o: os.s
	$(CC) -c -o $@ $<

clean:
	rm -f *.img *.out *.bin *.o *.sys *.part cos