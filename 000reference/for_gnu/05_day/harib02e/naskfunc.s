	.code32
	.section .text

.global	io_hlt
io_hlt:			# void io_hlt(void);
	hlt
	ret

.global io_cli
io_cli:			# void io_cli(void);
	cli
	ret

.global io_sti
io_sti:			# void io_sti(void);
	sti
	ret

.global io_stihlt
io_stihlt:		# void io_stihlt(void);
	sti
	hlt
	ret

.global io_in8
io_in8:			# int io_in8(int port);
	mov	4(%esp), %edx		# port
	mov	$0, %eax
	in	%dx, %al
	ret

.global io_in16
io_in16:		# int io_in16(int port);
	mov	4(%esp), %edx		# port
	mov	$0, %eax
	in	%dx, %ax
	ret

.global io_in32
io_in32:		# int io_in32(int port);
	mov	4(%esp), %edx		# port
	in	%dx, %eax
	ret

.global io_out8
io_out8:		# void io_out8(int port, int data)
	mov	4(%esp), %edx		# port
	mov	8(%esp), %eax		# data
	out	%al, %dx
	ret

.global io_out16
io_out16:		# void io_out16(int port, int data);
	mov	4(%esp), %edx		# port
	mov	8(%esp), %eax		# data
	out	%ax, %dx
	ret

.global io_out32
io_out32:		# void io_out32(int port, int data);
	mov	4(%esp), %edx		# port
	mov	8(%esp), %eax		# data
	out	%eax, %dx
	ret

.global io_load_eflags
io_load_eflags:		# int io_load_eflags(void);
	pushf		# PUSH EFLAGS
	pop	%eax
	ret

.global io_store_eflags
io_store_eflags:	# void io_store_eflags(int eflags);
	mov	4(%esp), %eax
	push	%eax
	popf		# POP EFLAGS
	ret
