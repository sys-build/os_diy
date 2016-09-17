build:
	gcc -o create_os_img create_os_img.c
	./create_os_img
run:
	qemu-system-i386 -no-kvm -m 32 -vga std -fda os.img
clean:
	rm create_os_img os.img