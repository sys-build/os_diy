	.code32
	.section .text

.global	io_hlt
io_hlt:			# void io_hlt(void);
	hlt
	ret

.global write_mem8
write_mem8:		# void write_mem8(int addr, int data);
	mov	4(%esp), %ecx
	mov	8(%esp), %al
	mov	%al, (%ecx)
	ret
