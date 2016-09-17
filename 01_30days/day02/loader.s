		org		0x7c00			; 

;
		jmp		entry
		db		0x90
		db		"12345678"		; oem string
		dw		0x200				  ; bytes per sector 
		db		1				      ; sector per cluster
		dw		1				      ; of reserved sectors 
		db		2				      ; of FAT copies
		dw		224				    ; size of root directory
		dw		2880			    ; total, of sectors if over 32MB
		db		0xf0			    ; media descriptor 
		dw		9				      ; size of each FAT
		dw		9				      ; 18 for 30days, sectors per track
		dw		2				      ; number of r/w heads
		dd		0				      ; number of hidden sectors
		dd		0			        ; 2880 for 30days, sectors for over 32MB
		db		0             ; holds drive that the boot sector came from
		db    0             ; reserved, empty
		db    0x29          ; extended boot sector signature
		db		"seri"		    ; disk serial
		db		"12345678"	  ; volume label
		db		"fat16   "		;
		resb	18				    ;

;body of program
entry:
		mov		ax,0			    ;
		mov		ss,ax
		mov		sp,0x7c00
		mov		ds,ax
		mov		es,ax

		mov		si,msg
loop:
		mov		al,[si]
		add		si,1			   ;
		cmp		al,0
		je		fin
		mov		ah,0x0e			 ;
		mov		bx,15			   ;
		int		0x10			   ;
		jmp		loop
fin:
		hlt						     ;
		jmp		fin				   ;

msg:
		db		0x0a, 0x0a		;
		db		"hello, zzy os1"
		db		0x0a			;
		db		0

		resb	0x1fe-($-$$)		;

		db		0x55, 0xaa
