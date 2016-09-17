	.code32
	.section .text

.global	io_hlt
io_hlt:			# void io_hlt(void);
	hlt
	ret
