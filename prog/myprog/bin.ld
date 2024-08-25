OUTPUT_ARCH(loongarch)
ENTRY(_start)

SECTIONS
{
  . = 0x80000000;
  .text :
  {
    *(entry)
    _stext = . ;
    *(.text*)
    *(.text*)
    _srodata = ALIGN(4);
    *(.rodata*)
    _erodata = ALIGN(4);
    _etext = ALIGN(4);
  }
  . = 0x807F0000;
  _ssp = .;
  .bss : {
      _sbss = .;         /* define a global symbol at bss start */
      *(.bss)
      . = ALIGN(4);
      _ebss = .;         /* define a global symbol at bss end */
  }

}
