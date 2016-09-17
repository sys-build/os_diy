	.file	"dsctbl.c"
	.intel_syntax noprefix
	.text
	.globl	init_gdtidt
	.type	init_gdtidt, @function
init_gdtidt:
.LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	DWORD PTR [ebp-16], 2555904
	mov	DWORD PTR [ebp-20], 2553856
	mov	DWORD PTR [ebp-12], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [ebp-12]
	sal	eax, 3
	add	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], 0
	mov	DWORD PTR [esp], eax
	call	set_segmdesc
	add	DWORD PTR [ebp-12], 1
.L2:
	cmp	DWORD PTR [ebp-12], 8191
	jle	.L3
	mov	eax, DWORD PTR [ebp-16]
	add	eax, 8
	mov	DWORD PTR [esp+12], 16530
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], -1
	mov	DWORD PTR [esp], eax
	call	set_segmdesc
	mov	eax, DWORD PTR [ebp-16]
	add	eax, 16
	mov	DWORD PTR [esp+12], 16538
	mov	DWORD PTR [esp+8], 2621440
	mov	DWORD PTR [esp+4], 524287
	mov	DWORD PTR [esp], eax
	call	set_segmdesc
	mov	DWORD PTR [esp+4], 2555904
	mov	DWORD PTR [esp], 65535
	call	load_gdtr
	mov	DWORD PTR [ebp-12], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR [ebp-12]
	sal	eax, 3
	add	eax, DWORD PTR [ebp-20]
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], 0
	mov	DWORD PTR [esp], eax
	call	set_gatedesc
	add	DWORD PTR [ebp-12], 1
.L4:
	cmp	DWORD PTR [ebp-12], 255
	jle	.L5
	mov	DWORD PTR [esp+4], 2553856
	mov	DWORD PTR [esp], 2047
	call	load_idtr
	mov	eax, OFFSET FLAT:asm_inthandler21
	mov	edx, DWORD PTR [ebp-20]
	add	edx, 264
	mov	DWORD PTR [esp+12], 142
	mov	DWORD PTR [esp+8], 16
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	set_gatedesc
	mov	eax, OFFSET FLAT:asm_inthandler27
	mov	edx, DWORD PTR [ebp-20]
	add	edx, 312
	mov	DWORD PTR [esp+12], 142
	mov	DWORD PTR [esp+8], 16
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	set_gatedesc
	mov	eax, OFFSET FLAT:asm_inthandler2c
	mov	edx, DWORD PTR [ebp-20]
	add	edx, 352
	mov	DWORD PTR [esp+12], 142
	mov	DWORD PTR [esp+8], 16
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	set_gatedesc
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	init_gdtidt, .-init_gdtidt
	.globl	set_segmdesc
	.type	set_segmdesc, @function
set_segmdesc:
.LFB1:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	cmp	DWORD PTR [ebp+12], 1048575
	jbe	.L7
	or	DWORD PTR [ebp+20], 32768
	mov	eax, DWORD PTR [ebp+12]
	shr	eax, 12
	mov	DWORD PTR [ebp+12], eax
.L7:
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [eax], dx
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [eax+2], dx
	mov	eax, DWORD PTR [ebp+16]
	sar	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+4], dl
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+5], dl
	mov	eax, DWORD PTR [ebp+12]
	shr	eax, 16
	mov	edx, eax
	and	edx, 15
	mov	eax, DWORD PTR [ebp+20]
	sar	eax, 8
	and	eax, -16
	or	eax, edx
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+6], dl
	mov	eax, DWORD PTR [ebp+16]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+7], dl
	pop	ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1:
	.size	set_segmdesc, .-set_segmdesc
	.globl	set_gatedesc
	.type	set_gatedesc, @function
set_gatedesc:
.LFB2:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [eax], dx
	mov	eax, DWORD PTR [ebp+16]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [eax+2], dx
	mov	eax, DWORD PTR [ebp+20]
	sar	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+4], dl
	mov	eax, DWORD PTR [ebp+20]
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	BYTE PTR [eax+5], dl
	mov	eax, DWORD PTR [ebp+12]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [eax+6], dx
	pop	ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE2:
	.size	set_gatedesc, .-set_gatedesc
	.ident	"GCC: (Ubuntu/Linaro 4.6.4-1ubuntu1~12.04) 4.6.4"
	.section	.note.GNU-stack,"",@progbits
