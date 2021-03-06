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
DISK_IMAGE = helloos.img

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
	$(GDB) -q -s ipl.out -x ../../tools/gdb_script.txt

$(DISK_IMAGE): ipl.bin empty.img
	dd if=ipl.bin of=$@
	dd if=empty.img of=$@ bs=512 skip=1 seek=1

ipl.out: ipl.lds ipl.o
	$(LD) -o $@ -T ipl.lds ipl.o

empty.img:
	dd if=/dev/zero of=$@ bs=512 count=2880
	mkdosfs $@

%.bin: %.out
	$(OBJCOPY) -O binary $< $@

%.o: %.s
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

%.o: %.S
	$(CC) $(DEBUG) $(LIST) -c -o $@ $<

clean:
	rm -f *.img *.out *.bin *.o *.lst

distclean: clean
	rm -f *~

.PHONY: all dump run debug clean distclean
