# haribote-os
	.code16
	.section .text

	mov	$0x13, %al	# VGA graphics, 320x200x8bit color
	mov	$0x00, %ah
	int	$0x10
fin:	
	hlt
	jmp	fin
