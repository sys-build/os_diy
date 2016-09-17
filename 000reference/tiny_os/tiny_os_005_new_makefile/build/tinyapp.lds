
SECTIONS
{
    . = 0x00000024;
    .text : { *(.text) }
    .eh_frame : { *(.eh_frame) }
    . = 0x00310000;
    .rodata : { *(.rodata) }
    .data : { *(.data) }
    .bss : { *(.bss) }
}

