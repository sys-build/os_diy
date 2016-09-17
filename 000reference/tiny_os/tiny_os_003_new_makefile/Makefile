
IMAGE = out/tinyos.img

default :
	make all
	make $(IMAGE)

$(IMAGE) : kernel/ipl.bin kernel/kernel.sys
	-mkdir -p out/floppy
	-dd if=/dev/zero of=out/floppy.img bs=512 count=2880
	-sudo mkfs.vfat out/floppy.img
	-sudo mount out/floppy.img out/floppy
	-sudo cp kernel/kernel.sys out/floppy
	@sleep 1
	-sudo umount out/floppy.img
	dd if=out/floppy.img of=out/floppy-no-ipl.img bs=512 skip=1
	cat kernel/ipl.bin out/floppy-no-ipl.img > $(IMAGE)

all :
	make -C kernel

run :
	make all
	make $(IMAGE)
	qemu-system-i386 -no-kvm -m 32 -vga std -fda $(IMAGE)

debug :
	make all
	make $(IMAGE)
	qemu-system-i386 -no-kvm -m 32 -vga std -fda $(IMAGE) -S -s

clean :
	-rm -rf out
	make -C kernel clean

