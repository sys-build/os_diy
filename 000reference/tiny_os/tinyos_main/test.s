
test_1:
	push	ebp
	mov	ebp, esp

	sub	esp, 24
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp+12]
	mov	BYTE PTR [ebp-20], dl
	mov	WORD PTR [ebp-24], ax
	mov	DWORD PTR [ebp-4], 0
	movsx	edx, BYTE PTR [ebp-20]
	movsx	eax, WORD PTR [ebp-24]
	imul	eax, edx
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp+16]
	add	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]

	leave
	ret

test_2:
	push	ebp
	mov	ebp, esp

	sub	esp, 28
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [esp+8], 3
	mov	DWORD PTR [esp+4], 2
	mov	DWORD PTR [esp], 1
	call	test_1
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]

	leave
	ret

