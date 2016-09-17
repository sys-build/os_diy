# os head asm
	.code16
	.section .text

	.equ	OS_START_ADDR, 0x00280000	# location where bootpack is loaded
	.equ	DSKCAC, 0x00100000	# location of disk cache
	.equ	DSKCAC0, 0x00008000	# location of disk cache (real mode)

# BOOT_INFO
	.equ	CYLS,	0x0ff0		# Boot sector save the variable
	.equ	LEDS,	0x0ff1
	.equ	VMODE,	0x0ff2		# color bits
	.equ	SCRNX,	0x0ff4		# X resolution
	.equ	SCRNY,	0x0ff6		# Y resolution
	.equ	VRAM,	0x0ff8		# start address of Video RAM

	mov	$0x13, %al		# VGA graphics, 320x200x8bit color
	mov	$0x00, %ah
	int	$0x10
	movb	$8, (VMODE)		# save Video mode
	movw	$320, (SCRNX)
	movw	$200, (SCRNY)
	movl	$0x000a0000, (VRAM)

# inquire BIOS about LED state
	mov	$2, %ah
	int	$0x16			# keyboard BIOS
	mov	%al, (LEDS)

# disable interrupts
#  Do the following before cli, otherwise PC/AT sometimes hangs up.
	mov	$0xff, %al
	out	%al, $0x21
	nop			# successive "out" instructions
	out	%al, $0xa1	#  don't work in some machines
	cli			# clear interrupt

# set up A20GATE to allow memory access above 1MB
	call	waitkbdout
	mov	$0xd1, %al
	out	%al, $0x64
	call	waitkbdout
	mov	$0xdf, %al		# enable A20
	out	%al, $0x60
	call	waitkbdout

# move to protect mode

	lgdt	(GDTR0)			# temporary GDT
	mov	%cr0, %eax
	and	$0x7fffffff, %eax	# disable PG(Paging) bit
	or	$1, %eax		# enable PE(Protect enable) bit
	mov	%eax, %cr0
	jmp	pipelineflush
pipelineflush:
	mov	$1*8, %ax		# R/W 32bit segment
	mov	%ax, %ds
	mov	%ax, %es
	mov	%ax, %fs
	mov	%ax, %gs
	mov	%ax, %ss

# Copy os_start
	mov	$os_start, %esi
	mov	$OS_START_ADDR, %edi
	mov	$512*1024/4, %ecx
	call	memcpy

# Copy MBR
	mov	$0x7c00, %esi
	mov	$DSKCAC, %edi
	mov	$512/4, %ecx
	call	memcpy

# Copy sectors following MBR
	mov	$DSKCAC0+512, %esi
	mov	$DSKCAC+512, %edi
	mov	$0, %ecx
	mov	(CYLS), %cl
	imul	$512*18*2/4, %ecx
	sub	$512/4, %ecx
	call	memcpy

# everything done before running os_start

# run os_start
	mov	$OS_START_ADDR, %ebx
	mov	16(%ebx), %ecx
	add	$3, %ecx
	shr	$2, %ecx
	jz	skip
	mov	20(%ebx), %esi
	add	%ebx, %esi
	mov	12(%ebx), %edi
	call	memcpy
skip:
	mov	12(%ebx), %esp
	.byte	0x66, 0xea
	.long	0x0000001b
	.word	2*8
//	jmp	$2*8, $0x0000001b
//	.org	0xe7

waitkbdout:
	in	$0x64, %al
	and	$0x2, %al
	in	$0x60, %al	# dummy read
	jnz	waitkbdout	# jump if the result of AND is not zero
	ret

memcpy:
	mov	(%esi), %eax
	add	$4, %esi
	mov	%eax, (%edi)
	add	$4, %edi
	sub	$1, %ecx
	jnz	memcpy
	ret
# memcpy can be implemented with "string" instruction
# In that case, address size prefix.

	.balign 16, 0
GDT0:
	.fill	8	# NULL Selector
	.word	0xffff, 0x0000, 0x9200, 0x00cf	# R/W segment (base = 0, limit=0xfffff, G=1, D/B=1)
	.word	0xffff, 0x0000, 0x9a28, 0x0047	# executable segment for os_start (base = 0x0028000, limit=0x7ffff, G=0, D/B=1)

	.word	0
GDTR0:
	.word	8*3-1
	.long	GDT0

	.balign 16, 0
os_start:
