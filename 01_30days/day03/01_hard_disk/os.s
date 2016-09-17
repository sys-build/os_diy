# haribote-os
	.code16
	.section .text

# BOOT_INFO
	.equ	CYLS,	0x0ff0
	.equ	LEDS,	0x0ff1
	.equ	VMODE,	0x0ff2
	.equ	SCRNX,	0x0ff4
	.equ	SCRNY,	0x0ff6
	.equ	VRAM,	0x0ff8

	mov	$0x13, %al	# VGA graphics, 320x200x8bit color
	mov	$0x00, %ah
	int	$0x10
	movb	$8, (VMODE)	# save Video mode
	movw	$320, (SCRNX)
	movw	$200, (SCRNY)
	movl	$0x000a0000, (VRAM)

# inquire BIOS about LED state
	mov	$2, %ah
	int	$0x16		# keyboard BIOS
	mov	%al, (LEDS)
fin:	
	hlt
	jmp	fin
