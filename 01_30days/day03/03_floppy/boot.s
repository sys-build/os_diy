# haribote-ipl
	.code16
	.section .text
	.equ	CYLS,	10	# number of cylinders to load

	jmp	entry
	.byte	0x90
	.ascii	"HARIBOTE"	# any name you like of this boot sector
	.word	512		# size of a sector (must be 512byte)
	.byte	1		# size of a cluster (must be 1sector)
	.word	1		# start of FAT (typically 1 sector)
	.byte	2		# number of FATs (must be 2)
	.word	224		# size of root directory area (typically 224)
	.word	2880		# size of this disk (must be 2880 sector)
	.byte	0xf0		# media type (must be 0xf0)
	.word	9		# length of FAT area (must be 9sector)
	.word	18		# sectors per track (must be 18sector)
	.word	2		# number of heads (must be 2)
	.long	0		# must be 0 because the partition is not in use
	.long	2880		# set again the size of this disk
	.byte	0,0,0x29	# this values are nice, but I don't know why.
	.long	0xffffffff	# probablly volume serial number
	.ascii	"HARIBOTEOS "	# disk name in 11 byte
	.ascii	"FAT12   "	# format name in 8 byte
	.fill	18		# padding 18byte

# body of program

entry:
	mov	$0, %ax		# initialization of registers
	mov	%ax, %ss
	mov	$0x7c00, %sp
	mov	%ax, %ds

# read the disk

	mov	$0x0820, %ax
	mov	%ax, %es	# buffer segment
	mov	$0, %ch		# cylinder[7:0]
	mov	$0, %dh		# head[7:0]
	mov	$2, %cl		# {cylinder[9:8], sector[5:0]}
readloop:
	mov	$0, %si		# couter for retry
retry:
	mov	$2, %ah		# command (2 = read, 3 = write, 4 = verify...)
	mov	$1, %al 	# number of sectors
	mov	$0, %bx		# buffer offset
	mov	$0, %dl		# drive number (A drive)
	int	$0x13		# call disk BIOS
	jnc	next		# go next on success
	add	$1, %si
	cmp	$5, %si
	jae	error
	mov	$0, %ah
	mov	$0, %dl		# A drive
	int	$0x13		# reset drive
	jmp	retry
next:
	mov	%es, %ax
	add	$0x20, %ax	# increment address by 0x200
	mov	%ax, %es
	add	$1, %cl
	cmp	$18, %cl	# read until sector 18
	jbe	readloop
	mov	$1, %cl
	add	$1, %dh
	cmp	$2, %dh		# read until header 1
	jb	readloop
	mov	$0, %dh
	add	$1, %ch
	cmp	$CYLS, %ch	# read until cylinder (CYLS - 1)
	jb	readloop

# run haribote.sys

	mov	%ch, (0x0ff0)	# memorize the number of read cylinders
	jmp	0x8200

error:
	movw	$0, %ax
	movw	%ax, %es
	movw	$msg, %si
putloop:
	mov	(%si), %al
	add	$1, %si
	cmp	$0, %al
	je	fin
	mov	$0x0e, %ah	# print a character
	mov	$15, %bx	# color code
	int	$0x10		# call Video BIOS
	jmp	putloop
fin:
	hlt			# halt CPU
	jmp	fin
msg:
	.asciz	"\n\nload error\n"

	.org	0x1fe
	.byte	0x55, 0xaa
