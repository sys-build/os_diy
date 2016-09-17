build:
	nasm -o os.img hello.s
run:
	qemu-system-i386 -no-kvm -m 32 -vga std -fda os.img
clean:
	rm os.img