
include build/global_vars.mk
include build/definitions.mk

IMAGE = $(OUT_BASE_DIR)/tinyos.img
IPL = $(OUT_BASE_DIR)/kernel/ipl.bin
KERNEL_SYS = $(OUT_BASE_DIR)/kernel/kernel.sys


$(IMAGE) : $(IPL) $(KERNEL_SYS)
	@mkdir -p out/floppy
	-dd if=/dev/zero of=out/floppy.img bs=512 count=2880
	-sudo mkfs.vfat out/floppy.img
	-sudo mount out/floppy.img out/floppy
	-sudo cp $(KERNEL_SYS) out/floppy
	@sleep 1
	-sudo umount out/floppy.img
	dd if=out/floppy.img of=out/floppy-no-ipl.img bs=512 skip=1
	cat $(IPL) out/floppy-no-ipl.img > $(IMAGE)

run :
	make $(IMAGE)
	qemu-system-i386 -no-kvm -m 32 -vga std -fda $(IMAGE)

debug :
	make $(IMAGE)
	qemu-system-i386 -no-kvm -m 32 -vga std -fda $(IMAGE) -S -s

clean :
	-rm -rf out

include kernel/kernel.mk
include golibc/golibc.mk

