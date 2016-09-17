heap_size = 0;

SECTIONS
{
	.text 0x00280000 + 0x24: AT(0)
	{
		_stext = .;
		*(.text)
		_etext = .;
	}

	.rodata : AT( LOADADDR(.text) + SIZEOF(.text) )
	{
		*(.rodata)
	}

	_sidata = LOADADDR(.rodata) + SIZEOF(.rodata);

	.data 0x00310000 : AT( _sidata )
	{
		_sdata = .;
		*(.data)
		_edata = .;
	}

	.bss :
	{
		_sbss = .;
		*(.bss)
		_ebss = .;
	}

	_sheap = .;

	_eheap = _sheap + heap_size;

	.eh_frame :
	{
		*(.eh_frame)
	}
}
