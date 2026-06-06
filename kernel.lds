ENTRY(startup_32);

SECTIONS {
  . = 0x0;               
  .text : {
    boot/head.o(.text);      
    *(.text);          
  }
  .data : { *(.data); }
  .bss  : { *(.bss); }
  end = .;
}
