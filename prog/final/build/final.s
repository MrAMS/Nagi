
build/final.elf:     file format elf32-loongarch


Disassembly of section .text:

80100000 <_start>:
.global _start
.section text
.text
_start:
    b           calc
80100000:	50001000 	b	16(0x10) # 80100010 <calc>
80100004:	03400000 	andi	$r0,$r0,0x0
80100008:	03400000 	andi	$r0,$r0,0x0
8010000c:	03400000 	andi	$r0,$r0,0x0

80100010 <calc>:
void calc(){
    
    while(1){
        // for(register int i=0;i<0xfff;++i);
        volatile unsigned int *mir_finish = (unsigned int*)0x90000000;
        if(*mir_finish) break;
80100010:	1520000d 	lu12i.w	$r13,-458752(0x90000)
80100014:	288001ac 	ld.w	$r12,$r13,0
80100018:	5bfffd80 	beq	$r12,$r0,-4(0x3fffc) # 80100014 <calc+0x4>
    }
    return;
8010001c:	4c000020 	jirl	$r0,$r1,0
