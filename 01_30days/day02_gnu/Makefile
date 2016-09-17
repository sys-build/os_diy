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
IMAGE = loader.img

build: $(IMAGE)

run: $(IMAGE)
	$(QEMU) $<

$(IMAGE): loader.bin empty.img
	dd if=loader.bin of=$@
	dd if=empty.img of=$@ bs=512 skip=1 seek=1

loader.out: loader.lds loader.o
	$(LD) -o $@ -T loader.lds loader.o

empty.img:
	dd if=/dev/zero of=$@ bs=512 count=2880
	mkdosfs $@

loader.o: loader.s
	$(CC) -c -o $@ loader.s

loader.bin: loader.out
	$(OBJCOPY) -O binary loader.out $@

clean:
	rm *.img *.bin *.o *.out