
build/myprog.elf:     file format elf32-loongarch


Disassembly of section .text:

80000000 <_start>:
.section entry, "ax"
.global	main
.globl _start
_start:
# 设置栈指针
    la.local sp, _ssp
80000000:	1c00fe03 	pcaddu12i	$r3,2032(0x7f0)
80000004:	02800063 	addi.w	$r3,$r3,0
    # lu12i.w sp, 0x807F
    # ori $r3, sp, 0xFF0
# 初始化BSS
    la.local    t0,_sbss
80000008:	1c00fe0c 	pcaddu12i	$r12,2032(0x7f0)
8000000c:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
    la.local    t1,_ebss
80000010:	1c00fe0d 	pcaddu12i	$r13,2032(0x7f0)
80000014:	02bfc1ad 	addi.w	$r13,$r13,-16(0xff0)

80000018 <bss_init>:
bss_init:
    beq         t0,t1,main
80000018:	58001d8d 	beq	$r12,$r13,28(0x1c) # 80000034 <main>
    st.w        zero,t0,0x0
8000001c:	29800180 	st.w	$r0,$r12,0
    addi.w      t0,t0,0x4
80000020:	0280118c 	addi.w	$r12,$r12,4(0x4)
    b           bss_init
80000024:	53fff7ff 	b	-12(0xffffff4) # 80000018 <bss_init>
80000028:	807f0000 	0x807f0000
8000002c:	807f0000 	0x807f0000
80000030:	807f0000 	0x807f0000

80000034 <main>:
int main(){
80000034:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
80000038:	29807076 	st.w	$r22,$r3,28(0x1c)
8000003c:	02808076 	addi.w	$r22,$r3,32(0x20)
    int a = 0;
80000040:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
    for(int i=0;i<10;++i)
80000044:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
80000048:	50002000 	b	32(0x20) # 80000068 <main+0x34>
        a += i;
8000004c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
80000050:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
80000054:	001031ac 	add.w	$r12,$r13,$r12
80000058:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
    for(int i=0;i<10;++i)
8000005c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
80000060:	0280058c 	addi.w	$r12,$r12,1(0x1)
80000064:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
80000068:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
8000006c:	0280240c 	addi.w	$r12,$r0,9(0x9)
80000070:	67ffdd8d 	bge	$r12,$r13,-36(0x3ffdc) # 8000004c <main+0x18>
    return 0;
80000074:	0015000c 	move	$r12,$r0
80000078:	00150184 	move	$r4,$r12
8000007c:	28807076 	ld.w	$r22,$r3,28(0x1c)
80000080:	02808063 	addi.w	$r3,$r3,32(0x20)
80000084:	4c000020 	jirl	$r0,$r1,0
