OUTPUT_ARCH(loongarch)
ENTRY(_start)
/* PHDRS { text PT_LOAD; data PT_LOAD; } */
/* MEMORY {
  ram : ORIGIN = 0x30000000, LENGTH = 0x10000000
  rom : ORIGIN = 0x1c000000, LENGTH = 0x100000
} */

SECTIONS
{
  . = 0x80000000;
  .text :
  {
    _start = . ;
	  kernel_entry = . ;
    *(.text*)
    *(.rodata*)
    *(.reginfo)
    *(.init)
    *(.stub)

    *(.gnu.warning)
    rodata_end = .;
  }
  . = ALIGN(4);
  .data : {
    *(.data)
  }
  . = ALIGN(4);
  .bss : {
    *(.bss)
  }
}
