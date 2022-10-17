OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(arm)
ENTRY(_start)

SECTIONS
{
	. = 0x0000000000000000;
	.text :
	{
		*(.text)
		*(.rodata)
	}
	
	.data	ALIGN(4):
	{
		*(.data)
	}
	
	.bss	ALIGN(4):
	{
		*(.bss)
	}
}
