
build/main.elf:     file format elf32-loongarch
build/main.elf


Disassembly of section .text:

1c000000 <main>:
main():
1c000000:	02bdc063 	addi.w	$r3,$r3,-144(0xf70)
1c000004:	29823061 	st.w	$r1,$r3,140(0x8c)
1c000008:	29822076 	st.w	$r22,$r3,136(0x88)
1c00000c:	29821077 	st.w	$r23,$r3,132(0x84)
1c000010:	02824076 	addi.w	$r22,$r3,144(0x90)
1c000014:	29bdf2c4 	st.w	$r4,$r22,-132(0xf7c)
1c000018:	29bde2c5 	st.w	$r5,$r22,-136(0xf78)
1c00001c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c000020:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c000024:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c000028:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c00002c:	297f9ac0 	st.h	$r0,$r22,-26(0xfe6)
1c000030:	297f5ac0 	st.h	$r0,$r22,-42(0xfd6)
1c000034:	02bdf2cd 	addi.w	$r13,$r22,-132(0xf7c)
1c000038:	02be32cc 	addi.w	$r12,$r22,-116(0xf8c)
1c00003c:	0281098c 	addi.w	$r12,$r12,66(0x42)
1c000040:	28bde2c6 	ld.w	$r6,$r22,-136(0xf78)
1c000044:	001501a5 	move	$r5,$r13
1c000048:	00150184 	move	$r4,$r12
1c00004c:	5426f800 	bl	9976(0x26f8) # 1c002744 <portable_init>
1c000050:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000054:	54309800 	bl	12440(0x3098) # 1c0030ec <get_seed_32>
1c000058:	29bdd2c4 	st.w	$r4,$r22,-140(0xf74)
1c00005c:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c000060:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c000064:	287dcacc 	ld.h	$r12,$r22,-142(0xf72)
1c000068:	297e32cc 	st.h	$r12,$r22,-116(0xf8c)
1c00006c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000070:	54307c00 	bl	12412(0x307c) # 1c0030ec <get_seed_32>
1c000074:	29bdd2c4 	st.w	$r4,$r22,-140(0xf74)
1c000078:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c00007c:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c000080:	287dcacc 	ld.h	$r12,$r22,-142(0xf72)
1c000084:	297e3acc 	st.h	$r12,$r22,-114(0xf8e)
1c000088:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00008c:	54306000 	bl	12384(0x3060) # 1c0030ec <get_seed_32>
1c000090:	29bdd2c4 	st.w	$r4,$r22,-140(0xf74)
1c000094:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c000098:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c00009c:	287dcacc 	ld.h	$r12,$r22,-142(0xf72)
1c0000a0:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c0000a4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0000a8:	54304400 	bl	12356(0x3044) # 1c0030ec <get_seed_32>
1c0000ac:	0015008c 	move	$r12,$r4
1c0000b0:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c0000b4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0000b8:	54303400 	bl	12340(0x3034) # 1c0030ec <get_seed_32>
1c0000bc:	0015008c 	move	$r12,$r4
1c0000c0:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c0000c4:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c0000c8:	5c000d80 	bne	$r12,$r0,12(0xc) # 1c0000d4 <main+0xd4>
1c0000cc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0000d0:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c0000d4:	287e32cc 	ld.h	$r12,$r22,-116(0xf8c)
1c0000d8:	5c002580 	bne	$r12,$r0,36(0x24) # 1c0000fc <main+0xfc>
1c0000dc:	287e3acc 	ld.h	$r12,$r22,-114(0xf8e)
1c0000e0:	5c001d80 	bne	$r12,$r0,28(0x1c) # 1c0000fc <main+0xfc>
1c0000e4:	287e42cc 	ld.h	$r12,$r22,-112(0xf90)
1c0000e8:	5c001580 	bne	$r12,$r0,20(0x14) # 1c0000fc <main+0xfc>
1c0000ec:	297e32c0 	st.h	$r0,$r22,-116(0xf8c)
1c0000f0:	297e3ac0 	st.h	$r0,$r22,-114(0xf8e)
1c0000f4:	0281980c 	addi.w	$r12,$r0,102(0x66)
1c0000f8:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c0000fc:	287e32cd 	ld.h	$r13,$r22,-116(0xf8c)
1c000100:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c000104:	5c0035ac 	bne	$r13,$r12,52(0x34) # 1c000138 <main+0x138>
1c000108:	287e3acc 	ld.h	$r12,$r22,-114(0xf8e)
1c00010c:	5c002d80 	bne	$r12,$r0,44(0x2c) # 1c000138 <main+0x138>
1c000110:	287e42cc 	ld.h	$r12,$r22,-112(0xf90)
1c000114:	5c002580 	bne	$r12,$r0,36(0x24) # 1c000138 <main+0x138>
1c000118:	1400006c 	lu12i.w	$r12,3(0x3)
1c00011c:	0390558c 	ori	$r12,$r12,0x415
1c000120:	297e32cc 	st.h	$r12,$r22,-116(0xf8c)
1c000124:	1400006c 	lu12i.w	$r12,3(0x3)
1c000128:	0390558c 	ori	$r12,$r12,0x415
1c00012c:	297e3acc 	st.h	$r12,$r22,-114(0xf8e)
1c000130:	0281980c 	addi.w	$r12,$r0,102(0x66)
1c000134:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c000138:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c00013c:	2893c18c 	ld.w	$r12,$r12,1264(0x4f0)
1c000140:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c000144:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c000148:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c00014c:	297f32c0 	st.h	$r0,$r22,-52(0xfcc)
1c000150:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c000154:	50003800 	b	56(0x38) # 1c00018c <main+0x18c>
1c000158:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00015c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000160:	001731ac 	sll.w	$r12,$r13,$r12
1c000164:	0015018d 	move	$r13,$r12
1c000168:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c00016c:	0014b1ac 	and	$r12,$r13,$r12
1c000170:	58001180 	beq	$r12,$r0,16(0x10) # 1c000180 <main+0x180>
1c000174:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c000178:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00017c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c000180:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000184:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000188:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00018c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000190:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c000194:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c000158 <main+0x158>
1c000198:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00019c:	50005000 	b	80(0x50) # 1c0001ec <main+0x1ec>
1c0001a0:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0001a4:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0001a8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0001ac:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0001b0:	001031ac 	add.w	$r12,$r13,$r12
1c0001b4:	28bed18f 	ld.w	$r15,$r12,-76(0xfb4)
1c0001b8:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0001bc:	2a7fbace 	ld.hu	$r14,$r22,-18(0xfee)
1c0001c0:	002131ed 	div.wu	$r13,$r15,$r12
1c0001c4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0001cc <main+0x1cc>
1c0001c8:	002a0007 	break	0x7
1c0001cc:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0001d0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0001d4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0001d8:	001031cc 	add.w	$r12,$r14,$r12
1c0001dc:	29bed18d 	st.w	$r13,$r12,-76(0xfb4)
1c0001e0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0001e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0001e8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0001ec:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0001f0:	5bffb180 	beq	$r12,$r0,-80(0x3ffb0) # 1c0001a0 <main+0x1a0>
1c0001f4:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0001f8:	5000a400 	b	164(0xa4) # 1c00029c <main+0x29c>
1c0001fc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000200:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000204:	001731ac 	sll.w	$r12,$r13,$r12
1c000208:	0015018d 	move	$r13,$r12
1c00020c:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c000210:	0014b1ac 	and	$r12,$r13,$r12
1c000214:	58007d80 	beq	$r12,$r0,124(0x7c) # 1c000290 <main+0x290>
1c000218:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c00021c:	50006000 	b	96(0x60) # 1c00027c <main+0x27c>
1c000220:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c000224:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000228:	001c31ac 	mul.w	$r12,$r13,$r12
1c00022c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000230:	001031ac 	add.w	$r12,$r13,$r12
1c000234:	28be918e 	ld.w	$r14,$r12,-92(0xfa4)
1c000238:	28be92cd 	ld.w	$r13,$r22,-92(0xfa4)
1c00023c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c000240:	001c31ad 	mul.w	$r13,$r13,$r12
1c000244:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000248:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00024c:	001035cd 	add.w	$r13,$r14,$r13
1c000250:	28bf82cf 	ld.w	$r15,$r22,-32(0xfe0)
1c000254:	0280440e 	addi.w	$r14,$r0,17(0x11)
1c000258:	001c39ee 	mul.w	$r14,$r15,$r14
1c00025c:	001031cc 	add.w	$r12,$r14,$r12
1c000260:	0040898c 	slli.w	$r12,$r12,0x2
1c000264:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c000268:	001031cc 	add.w	$r12,$r14,$r12
1c00026c:	29be918d 	st.w	$r13,$r12,-92(0xfa4)
1c000270:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000274:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000278:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00027c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000280:	5bffa180 	beq	$r12,$r0,-96(0x3ffa0) # 1c000220 <main+0x220>
1c000284:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c000288:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00028c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000290:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000294:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000298:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00029c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0002a0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0002a4:	6fff598d 	bgeu	$r12,$r13,-168(0x3ff58) # 1c0001fc <main+0x1fc>
1c0002a8:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0002ac:	50019c00 	b	412(0x19c) # 1c000448 <main+0x448>
1c0002b0:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0002b4:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0002b8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0002bc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0002c0:	001031ac 	add.w	$r12,$r13,$r12
1c0002c4:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c0002c8:	0340058c 	andi	$r12,$r12,0x1
1c0002cc:	58006580 	beq	$r12,$r0,100(0x64) # 1c000330 <main+0x330>
1c0002d0:	28be92ce 	ld.w	$r14,$r22,-92(0xfa4)
1c0002d4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0002d8:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0002dc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0002e0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0002e4:	001031ac 	add.w	$r12,$r13,$r12
1c0002e8:	28bea18f 	ld.w	$r15,$r12,-88(0xfa8)
1c0002ec:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0002f0:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0002f4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0002f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0002fc:	001031ac 	add.w	$r12,$r13,$r12
1c000300:	287e718c 	ld.h	$r12,$r12,-100(0xf9c)
1c000304:	2a7fbad7 	ld.hu	$r23,$r22,-18(0xfee)
1c000308:	00150186 	move	$r6,$r12
1c00030c:	001501e5 	move	$r5,$r15
1c000310:	001501c4 	move	$r4,$r14
1c000314:	540eb800 	bl	3768(0xeb8) # 1c0011cc <core_list_init>
1c000318:	0015008d 	move	$r13,$r4
1c00031c:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000320:	001c32ec 	mul.w	$r12,$r23,$r12
1c000324:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c000328:	001031cc 	add.w	$r12,$r14,$r12
1c00032c:	29bf018d 	st.w	$r13,$r12,-64(0xfc0)
1c000330:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000334:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000338:	001c31ac 	mul.w	$r12,$r13,$r12
1c00033c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000340:	001031ac 	add.w	$r12,$r13,$r12
1c000344:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c000348:	0340098c 	andi	$r12,$r12,0x2
1c00034c:	58008d80 	beq	$r12,$r0,140(0x8c) # 1c0003d8 <main+0x3d8>
1c000350:	28be92ce 	ld.w	$r14,$r22,-92(0xfa4)
1c000354:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000358:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c00035c:	001c31ac 	mul.w	$r12,$r13,$r12
1c000360:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000364:	001031ac 	add.w	$r12,$r13,$r12
1c000368:	28beb18f 	ld.w	$r15,$r12,-84(0xfac)
1c00036c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000370:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000374:	001c31ac 	mul.w	$r12,$r13,$r12
1c000378:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00037c:	001031ac 	add.w	$r12,$r13,$r12
1c000380:	287e718c 	ld.h	$r12,$r12,-100(0xf9c)
1c000384:	00150190 	move	$r16,$r12
1c000388:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c00038c:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000390:	001c31ac 	mul.w	$r12,$r13,$r12
1c000394:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000398:	001031ac 	add.w	$r12,$r13,$r12
1c00039c:	287e798c 	ld.h	$r12,$r12,-98(0xf9e)
1c0003a0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0003a4:	00153210 	or	$r16,$r16,$r12
1c0003a8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0003ac:	02be32d1 	addi.w	$r17,$r22,-116(0xf8c)
1c0003b0:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0003b4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0003b8:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0003bc:	0010322c 	add.w	$r12,$r17,$r12
1c0003c0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0003c4:	00150187 	move	$r7,$r12
1c0003c8:	00150206 	move	$r6,$r16
1c0003cc:	001501e5 	move	$r5,$r15
1c0003d0:	001501c4 	move	$r4,$r14
1c0003d4:	5419a400 	bl	6564(0x19a4) # 1c001d78 <core_init_matrix>
1c0003d8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0003dc:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0003e0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0003e4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0003e8:	001031ac 	add.w	$r12,$r13,$r12
1c0003ec:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c0003f0:	0340118c 	andi	$r12,$r12,0x4
1c0003f4:	58004980 	beq	$r12,$r0,72(0x48) # 1c00043c <main+0x43c>
1c0003f8:	28be92ce 	ld.w	$r14,$r22,-92(0xfa4)
1c0003fc:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000400:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000404:	001c31ac 	mul.w	$r12,$r13,$r12
1c000408:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00040c:	001031ac 	add.w	$r12,$r13,$r12
1c000410:	287e718f 	ld.h	$r15,$r12,-100(0xf9c)
1c000414:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000418:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c00041c:	001c31ac 	mul.w	$r12,$r13,$r12
1c000420:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000424:	001031ac 	add.w	$r12,$r13,$r12
1c000428:	28bec18c 	ld.w	$r12,$r12,-80(0xfb0)
1c00042c:	00150186 	move	$r6,$r12
1c000430:	001501e5 	move	$r5,$r15
1c000434:	001501c4 	move	$r4,$r14
1c000438:	54264000 	bl	9792(0x2640) # 1c002a78 <core_init_state>
1c00043c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000440:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000444:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000448:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00044c:	5bfe6580 	beq	$r12,$r0,-412(0x3fe64) # 1c0002b0 <main+0x2b0>
1c000450:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c000454:	5c009180 	bne	$r12,$r0,144(0x90) # 1c0004e4 <main+0x4e4>
1c000458:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00045c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c000460:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c000464:	50003c00 	b	60(0x3c) # 1c0004a0 <main+0x4a0>
1c000468:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c00046c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000470:	001c31ac 	mul.w	$r12,$r13,$r12
1c000474:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c000478:	54220000 	bl	8704(0x2200) # 1c002678 <start_time>
1c00047c:	02be32cc 	addi.w	$r12,$r22,-116(0xf8c)
1c000480:	00150184 	move	$r4,$r12
1c000484:	54156c00 	bl	5484(0x156c) # 1c0019f0 <iterate>
1c000488:	54222800 	bl	8744(0x2228) # 1c0026b0 <stop_time>
1c00048c:	54225c00 	bl	8796(0x225c) # 1c0026e8 <get_time>
1c000490:	0015008c 	move	$r12,$r4
1c000494:	00150184 	move	$r4,$r12
1c000498:	54228800 	bl	8840(0x2288) # 1c002720 <time_in_secs>
1c00049c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0004a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0004a4:	5bffc580 	beq	$r12,$r0,-60(0x3ffc4) # 1c000468 <main+0x468>
1c0004a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0004ac:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0004b0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0004b4:	5c000d80 	bne	$r12,$r0,12(0xc) # 1c0004c0 <main+0x4c0>
1c0004b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0004bc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0004c0:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c0004c4:	0280280f 	addi.w	$r15,$r0,10(0xa)
1c0004c8:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0004cc:	002139ec 	div.wu	$r12,$r15,$r14
1c0004d0:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0004d8 <main+0x4d8>
1c0004d4:	002a0007 	break	0x7
1c0004d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004dc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0004e0:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c0004e4:	54219400 	bl	8596(0x2194) # 1c002678 <start_time>
1c0004e8:	02be32cc 	addi.w	$r12,$r22,-116(0xf8c)
1c0004ec:	00150184 	move	$r4,$r12
1c0004f0:	54150000 	bl	5376(0x1500) # 1c0019f0 <iterate>
1c0004f4:	5421bc00 	bl	8636(0x21bc) # 1c0026b0 <stop_time>
1c0004f8:	5421f000 	bl	8688(0x21f0) # 1c0026e8 <get_time>
1c0004fc:	29bf42c4 	st.w	$r4,$r22,-48(0xfd0)
1c000500:	287e32cc 	ld.h	$r12,$r22,-116(0xf8c)
1c000504:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c000508:	001501a5 	move	$r5,$r13
1c00050c:	00150184 	move	$r4,$r12
1c000510:	542ee800 	bl	12008(0x2ee8) # 1c0033f8 <crc16>
1c000514:	0015008c 	move	$r12,$r4
1c000518:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00051c:	287e3acc 	ld.h	$r12,$r22,-114(0xf8e)
1c000520:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c000524:	001501a5 	move	$r5,$r13
1c000528:	00150184 	move	$r4,$r12
1c00052c:	542ecc00 	bl	11980(0x2ecc) # 1c0033f8 <crc16>
1c000530:	0015008c 	move	$r12,$r4
1c000534:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c000538:	287e42cc 	ld.h	$r12,$r22,-112(0xf90)
1c00053c:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c000540:	001501a5 	move	$r5,$r13
1c000544:	00150184 	move	$r4,$r12
1c000548:	542eb000 	bl	11952(0x2eb0) # 1c0033f8 <crc16>
1c00054c:	0015008c 	move	$r12,$r4
1c000550:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c000554:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c000558:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c00055c:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c000560:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c000564:	287dcacc 	ld.h	$r12,$r22,-142(0xf72)
1c000568:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c00056c:	001501a5 	move	$r5,$r13
1c000570:	00150184 	move	$r4,$r12
1c000574:	542e8400 	bl	11908(0x2e84) # 1c0033f8 <crc16>
1c000578:	0015008c 	move	$r12,$r4
1c00057c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c000580:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c000584:	140000ed 	lu12i.w	$r13,7(0x7)
1c000588:	03ac15ad 	ori	$r13,$r13,0xb05
1c00058c:	5800518d 	beq	$r12,$r13,80(0x50) # 1c0005dc <main+0x5dc>
1c000590:	140000ed 	lu12i.w	$r13,7(0x7)
1c000594:	03ac15ad 	ori	$r13,$r13,0xb05
1c000598:	600021ac 	blt	$r13,$r12,32(0x20) # 1c0005b8 <main+0x5b8>
1c00059c:	1400002d 	lu12i.w	$r13,1(0x1)
1c0005a0:	03a3c9ad 	ori	$r13,$r13,0x8f2
1c0005a4:	58005d8d 	beq	$r12,$r13,92(0x5c) # 1c000600 <main+0x600>
1c0005a8:	1400008d 	lu12i.w	$r13,4(0x4)
1c0005ac:	03babdad 	ori	$r13,$r13,0xeaf
1c0005b0:	5800398d 	beq	$r12,$r13,56(0x38) # 1c0005e8 <main+0x5e8>
1c0005b4:	50005800 	b	88(0x58) # 1c00060c <main+0x60c>
1c0005b8:	1400010d 	lu12i.w	$r13,8(0x8)
1c0005bc:	03a809ad 	ori	$r13,$r13,0xa02
1c0005c0:	5800158d 	beq	$r12,$r13,20(0x14) # 1c0005d4 <main+0x5d4>
1c0005c4:	140001cd 	lu12i.w	$r13,14(0xe)
1c0005c8:	03a7d5ad 	ori	$r13,$r13,0x9f5
1c0005cc:	5800298d 	beq	$r12,$r13,40(0x28) # 1c0005f4 <main+0x5f4>
1c0005d0:	50003c00 	b	60(0x3c) # 1c00060c <main+0x60c>
1c0005d4:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c0005d8:	50004000 	b	64(0x40) # 1c000618 <main+0x618>
1c0005dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0005e0:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0005e4:	50003400 	b	52(0x34) # 1c000618 <main+0x618>
1c0005e8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0005ec:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0005f0:	50002800 	b	40(0x28) # 1c000618 <main+0x618>
1c0005f4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0005f8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0005fc:	50001c00 	b	28(0x1c) # 1c000618 <main+0x618>
1c000600:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c000604:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c000608:	50001000 	b	16(0x10) # 1c000618 <main+0x618>
1c00060c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c000610:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c000614:	03400000 	andi	$r0,$r0,0x0
1c000618:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c00061c:	6002a580 	blt	$r12,$r0,676(0x2a4) # 1c0008c0 <main+0x8c0>
1c000620:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c000624:	50028800 	b	648(0x288) # 1c0008ac <main+0x8ac>
1c000628:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c00062c:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000630:	001c31ac 	mul.w	$r12,$r13,$r12
1c000634:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000638:	001031ac 	add.w	$r12,$r13,$r12
1c00063c:	297f7180 	st.h	$r0,$r12,-36(0xfdc)
1c000640:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000644:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000648:	001c31ac 	mul.w	$r12,$r13,$r12
1c00064c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000650:	001031ac 	add.w	$r12,$r13,$r12
1c000654:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c000658:	0340058c 	andi	$r12,$r12,0x1
1c00065c:	58009980 	beq	$r12,$r0,152(0x98) # 1c0006f4 <main+0x6f4>
1c000660:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000664:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000668:	001c31ac 	mul.w	$r12,$r13,$r12
1c00066c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000670:	001031ac 	add.w	$r12,$r13,$r12
1c000674:	2a7f598d 	ld.hu	$r13,$r12,-42(0xfd6)
1c000678:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c00067c:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c000680:	02bc41ce 	addi.w	$r14,$r14,-240(0xf10)
1c000684:	0040858c 	slli.w	$r12,$r12,0x1
1c000688:	001031cc 	add.w	$r12,$r14,$r12
1c00068c:	2a40018c 	ld.hu	$r12,$r12,0
1c000690:	580065ac 	beq	$r13,$r12,100(0x64) # 1c0006f4 <main+0x6f4>
1c000694:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000698:	0281100d 	addi.w	$r13,$r0,68(0x44)
1c00069c:	001c358d 	mul.w	$r13,$r12,$r13
1c0006a0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0006a4:	001035cd 	add.w	$r13,$r14,$r13
1c0006a8:	287f71ad 	ld.h	$r13,$r13,-36(0xfdc)
1c0006ac:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c0006b0:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c0006b4:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c0006b8:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c0006bc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0006c0:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c0006c4:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c0006c8:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c0006cc:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c0006d0:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c0006d4:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c0006d8:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c0006dc:	287dcacd 	ld.h	$r13,$r22,-142(0xf72)
1c0006e0:	0281100e 	addi.w	$r14,$r0,68(0x44)
1c0006e4:	001c398c 	mul.w	$r12,$r12,$r14
1c0006e8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0006ec:	001031cc 	add.w	$r12,$r14,$r12
1c0006f0:	297f718d 	st.h	$r13,$r12,-36(0xfdc)
1c0006f4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0006f8:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0006fc:	001c31ac 	mul.w	$r12,$r13,$r12
1c000700:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000704:	001031ac 	add.w	$r12,$r13,$r12
1c000708:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c00070c:	0340098c 	andi	$r12,$r12,0x2
1c000710:	58009980 	beq	$r12,$r0,152(0x98) # 1c0007a8 <main+0x7a8>
1c000714:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000718:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c00071c:	001c31ac 	mul.w	$r12,$r13,$r12
1c000720:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c000724:	001031ac 	add.w	$r12,$r13,$r12
1c000728:	2a7f618d 	ld.hu	$r13,$r12,-40(0xfd8)
1c00072c:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c000730:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c000734:	02b9a1ce 	addi.w	$r14,$r14,-408(0xe68)
1c000738:	0040858c 	slli.w	$r12,$r12,0x1
1c00073c:	001031cc 	add.w	$r12,$r14,$r12
1c000740:	2a40018c 	ld.hu	$r12,$r12,0
1c000744:	580065ac 	beq	$r13,$r12,100(0x64) # 1c0007a8 <main+0x7a8>
1c000748:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00074c:	0281100d 	addi.w	$r13,$r0,68(0x44)
1c000750:	001c358d 	mul.w	$r13,$r12,$r13
1c000754:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c000758:	001035cd 	add.w	$r13,$r14,$r13
1c00075c:	287f71ad 	ld.h	$r13,$r13,-36(0xfdc)
1c000760:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c000764:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c000768:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c00076c:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c000770:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000774:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c000778:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c00077c:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c000780:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c000784:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c000788:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c00078c:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c000790:	287dcacd 	ld.h	$r13,$r22,-142(0xf72)
1c000794:	0281100e 	addi.w	$r14,$r0,68(0x44)
1c000798:	001c398c 	mul.w	$r12,$r12,$r14
1c00079c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0007a0:	001031cc 	add.w	$r12,$r14,$r12
1c0007a4:	297f718d 	st.h	$r13,$r12,-36(0xfdc)
1c0007a8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0007ac:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0007b0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0007b4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0007b8:	001031ac 	add.w	$r12,$r13,$r12
1c0007bc:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c0007c0:	0340118c 	andi	$r12,$r12,0x4
1c0007c4:	58009980 	beq	$r12,$r0,152(0x98) # 1c00085c <main+0x85c>
1c0007c8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0007cc:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c0007d0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0007d4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0007d8:	001031ac 	add.w	$r12,$r13,$r12
1c0007dc:	2a7f698d 	ld.hu	$r13,$r12,-38(0xfda)
1c0007e0:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c0007e4:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c0007e8:	02b701ce 	addi.w	$r14,$r14,-576(0xdc0)
1c0007ec:	0040858c 	slli.w	$r12,$r12,0x1
1c0007f0:	001031cc 	add.w	$r12,$r14,$r12
1c0007f4:	2a40018c 	ld.hu	$r12,$r12,0
1c0007f8:	580065ac 	beq	$r13,$r12,100(0x64) # 1c00085c <main+0x85c>
1c0007fc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000800:	0281100d 	addi.w	$r13,$r0,68(0x44)
1c000804:	001c358d 	mul.w	$r13,$r12,$r13
1c000808:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00080c:	001035cd 	add.w	$r13,$r14,$r13
1c000810:	287f71ad 	ld.h	$r13,$r13,-36(0xfdc)
1c000814:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c000818:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c00081c:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c000820:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c000824:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000828:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c00082c:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c000830:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c000834:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c000838:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c00083c:	28bdd2cd 	ld.w	$r13,$r22,-140(0xf74)
1c000840:	297dcacd 	st.h	$r13,$r22,-142(0xf72)
1c000844:	287dcacd 	ld.h	$r13,$r22,-142(0xf72)
1c000848:	0281100e 	addi.w	$r14,$r0,68(0x44)
1c00084c:	001c398c 	mul.w	$r12,$r12,$r14
1c000850:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c000854:	001031cc 	add.w	$r12,$r14,$r12
1c000858:	297f718d 	st.h	$r13,$r12,-36(0xfdc)
1c00085c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000860:	0281100c 	addi.w	$r12,$r0,68(0x44)
1c000864:	001c31ac 	mul.w	$r12,$r13,$r12
1c000868:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00086c:	001031ac 	add.w	$r12,$r13,$r12
1c000870:	287f718c 	ld.h	$r12,$r12,-36(0xfdc)
1c000874:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c000878:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c00087c:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c000880:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c000884:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c000888:	001031ac 	add.w	$r12,$r13,$r12
1c00088c:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c000890:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c000894:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c000898:	2a7dcacc 	ld.hu	$r12,$r22,-142(0xf72)
1c00089c:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0008a0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0008a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0008a8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0008ac:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0008b0:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0008b4:	28b6118c 	ld.w	$r12,$r12,-636(0xd84)
1c0008b8:	2880018c 	ld.w	$r12,$r12,0
1c0008bc:	6bfd6dac 	bltu	$r13,$r12,-660(0x3fd6c) # 1c000628 <main+0x628>
1c0008c0:	542b8800 	bl	11144(0x2b88) # 1c003448 <check_data_types>
1c0008c4:	0015008c 	move	$r12,$r4
1c0008c8:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c0008cc:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c0008d0:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c0008d4:	2a7dcacd 	ld.hu	$r13,$r22,-142(0xf72)
1c0008d8:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c0008dc:	001031ac 	add.w	$r12,$r13,$r12
1c0008e0:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c0008e4:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c0008e8:	297dcacc 	st.h	$r12,$r22,-142(0xf72)
1c0008ec:	2a7dcacc 	ld.hu	$r12,$r22,-142(0xf72)
1c0008f0:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0008f4:	28bf42c4 	ld.w	$r4,$r22,-48(0xfd0)
1c0008f8:	541e2800 	bl	7720(0x1e28) # 1c002720 <time_in_secs>
1c0008fc:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c000900:	0340058c 	andi	$r12,$r12,0x1
1c000904:	58002d80 	beq	$r12,$r0,44(0x2c) # 1c000930 <main+0x930>
1c000908:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00090c:	50001000 	b	16(0x10) # 1c00091c <main+0x91c>
1c000910:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000914:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000918:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00091c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000920:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c000924:	28b4518c 	ld.w	$r12,$r12,-748(0xd14)
1c000928:	2880018c 	ld.w	$r12,$r12,0
1c00092c:	6bffe5ac 	bltu	$r13,$r12,-28(0x3ffe4) # 1c000910 <main+0x910>
1c000930:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c000934:	0340098c 	andi	$r12,$r12,0x2
1c000938:	58002d80 	beq	$r12,$r0,44(0x2c) # 1c000964 <main+0x964>
1c00093c:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c000940:	50001000 	b	16(0x10) # 1c000950 <main+0x950>
1c000944:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000948:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00094c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000950:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000954:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c000958:	28b3818c 	ld.w	$r12,$r12,-800(0xce0)
1c00095c:	2880018c 	ld.w	$r12,$r12,0
1c000960:	6bffe5ac 	bltu	$r13,$r12,-28(0x3ffe4) # 1c000944 <main+0x944>
1c000964:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c000968:	0340118c 	andi	$r12,$r12,0x4
1c00096c:	58002d80 	beq	$r12,$r0,44(0x2c) # 1c000998 <main+0x998>
1c000970:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c000974:	50001000 	b	16(0x10) # 1c000984 <main+0x984>
1c000978:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00097c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000980:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000984:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000988:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c00098c:	28b2b18c 	ld.w	$r12,$r12,-852(0xcac)
1c000990:	2880018c 	ld.w	$r12,$r12,0
1c000994:	6bffe5ac 	bltu	$r13,$r12,-28(0x3ffe4) # 1c000978 <main+0x978>
1c000998:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00099c:	50001000 	b	16(0x10) # 1c0009ac <main+0x9ac>
1c0009a0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0009a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009a8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0009ac:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0009b0:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0009b4:	28b2118c 	ld.w	$r12,$r12,-892(0xc84)
1c0009b8:	2880018c 	ld.w	$r12,$r12,0
1c0009bc:	6bffe5ac 	bltu	$r13,$r12,-28(0x3ffe4) # 1c0009a0 <main+0x9a0>
1c0009c0:	287f9acc 	ld.h	$r12,$r22,-26(0xfe6)
1c0009c4:	5c000d80 	bne	$r12,$r0,12(0xc) # 1c0009d0 <main+0x9d0>
1c0009c8:	28bf42c4 	ld.w	$r4,$r22,-48(0xfd0)
1c0009cc:	541d5400 	bl	7508(0x1d54) # 1c002720 <time_in_secs>
1c0009d0:	02be32cc 	addi.w	$r12,$r22,-116(0xf8c)
1c0009d4:	0281098c 	addi.w	$r12,$r12,66(0x42)
1c0009d8:	00150184 	move	$r4,$r12
1c0009dc:	541d9c00 	bl	7580(0x1d9c) # 1c002778 <portable_fini>
1c0009e0:	287f9acc 	ld.h	$r12,$r22,-26(0xfe6)
1c0009e4:	00150184 	move	$r4,$r12
1c0009e8:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c0009ec:	28822076 	ld.w	$r22,$r3,136(0x88)
1c0009f0:	28821077 	ld.w	$r23,$r3,132(0x84)
1c0009f4:	02824063 	addi.w	$r3,$r3,144(0x90)
1c0009f8:	4c000020 	jirl	$r0,$r1,0

1c0009fc <calc_func>:
calc_func():
1c0009fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000a00:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000a04:	2980a076 	st.w	$r22,$r3,40(0x28)
1c000a08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c000a0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c000a10:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c000a14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c000a18:	2a40018c 	ld.hu	$r12,$r12,0
1c000a1c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c000a20:	287faacc 	ld.h	$r12,$r22,-22(0xfea)
1c000a24:	00489d8c 	srai.w	$r12,$r12,0x7
1c000a28:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000a2c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000a30:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000a34:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000a38:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000a3c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000a40:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c000a44:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c000a48:	0340058c 	andi	$r12,$r12,0x1
1c000a4c:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c000a50:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c000a54:	58002180 	beq	$r12,$r0,32(0x20) # 1c000a74 <calc_func+0x78>
1c000a58:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c000a5c:	0341fd8c 	andi	$r12,$r12,0x7f
1c000a60:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000a64:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000a68:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000a6c:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000a70:	5001d000 	b	464(0x1d0) # 1c000c40 <calc_func+0x244>
1c000a74:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c000a78:	03401d8c 	andi	$r12,$r12,0x7
1c000a7c:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c000a80:	287faacc 	ld.h	$r12,$r22,-22(0xfea)
1c000a84:	00488d8c 	srai.w	$r12,$r12,0x3
1c000a88:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000a8c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000a90:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000a94:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000a98:	03403d8c 	andi	$r12,$r12,0xf
1c000a9c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000aa0:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c000aa4:	0040918c 	slli.w	$r12,$r12,0x4
1c000aa8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000aac:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000ab0:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000ab4:	287f4acd 	ld.h	$r13,$r22,-46(0xfd2)
1c000ab8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c000abc:	001531ac 	or	$r12,$r13,$r12
1c000ac0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000ac4:	287f9acc 	ld.h	$r12,$r22,-26(0xfe6)
1c000ac8:	58001180 	beq	$r12,$r0,16(0x10) # 1c000ad8 <calc_func+0xdc>
1c000acc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000ad0:	5800898d 	beq	$r12,$r13,136(0x88) # 1c000b58 <calc_func+0x15c>
1c000ad4:	5000cc00 	b	204(0xcc) # 1c000ba0 <calc_func+0x1a4>
1c000ad8:	287fb2cd 	ld.h	$r13,$r22,-20(0xfec)
1c000adc:	0280840c 	addi.w	$r12,$r0,33(0x21)
1c000ae0:	60000d8d 	blt	$r12,$r13,12(0xc) # 1c000aec <calc_func+0xf0>
1c000ae4:	0280880c 	addi.w	$r12,$r0,34(0x22)
1c000ae8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000aec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000af0:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c000af4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000af8:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c000afc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b00:	2840018f 	ld.h	$r15,$r12,0
1c000b04:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b08:	28400990 	ld.h	$r16,$r12,2(0x2)
1c000b0c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b10:	2a40e191 	ld.hu	$r17,$r12,56(0x38)
1c000b14:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c000b18:	00150229 	move	$r9,$r17
1c000b1c:	00150188 	move	$r8,$r12
1c000b20:	00150207 	move	$r7,$r16
1c000b24:	001501e6 	move	$r6,$r15
1c000b28:	001501c5 	move	$r5,$r14
1c000b2c:	001501a4 	move	$r4,$r13
1c000b30:	541c7000 	bl	7280(0x1c70) # 1c0027a0 <core_bench_state>
1c000b34:	0015008c 	move	$r12,$r4
1c000b38:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000b3c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b40:	2a40f98c 	ld.hu	$r12,$r12,62(0x3e)
1c000b44:	5c006980 	bne	$r12,$r0,104(0x68) # 1c000bac <calc_func+0x1b0>
1c000b48:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000b4c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b50:	2940f98d 	st.h	$r13,$r12,62(0x3e)
1c000b54:	50005800 	b	88(0x58) # 1c000bac <calc_func+0x1b0>
1c000b58:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b5c:	0280a18d 	addi.w	$r13,$r12,40(0x28)
1c000b60:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b64:	2a40e18e 	ld.hu	$r14,$r12,56(0x38)
1c000b68:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c000b6c:	001501c6 	move	$r6,$r14
1c000b70:	00150185 	move	$r5,$r12
1c000b74:	001501a4 	move	$r4,$r13
1c000b78:	540f8800 	bl	3976(0xf88) # 1c001b00 <core_bench_matrix>
1c000b7c:	0015008c 	move	$r12,$r4
1c000b80:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000b84:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b88:	2a40f18c 	ld.hu	$r12,$r12,60(0x3c)
1c000b8c:	5c002980 	bne	$r12,$r0,40(0x28) # 1c000bb4 <calc_func+0x1b8>
1c000b90:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000b94:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000b98:	2940f18d 	st.h	$r13,$r12,60(0x3c)
1c000b9c:	50001800 	b	24(0x18) # 1c000bb4 <calc_func+0x1b8>
1c000ba0:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c000ba4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000ba8:	50001000 	b	16(0x10) # 1c000bb8 <calc_func+0x1bc>
1c000bac:	03400000 	andi	$r0,$r0,0x0
1c000bb0:	50000800 	b	8(0x8) # 1c000bb8 <calc_func+0x1bc>
1c000bb4:	03400000 	andi	$r0,$r0,0x0
1c000bb8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c000bbc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000bc0:	2a40e18c 	ld.hu	$r12,$r12,56(0x38)
1c000bc4:	00150185 	move	$r5,$r12
1c000bc8:	001501a4 	move	$r4,$r13
1c000bcc:	5426f400 	bl	9972(0x26f4) # 1c0032c0 <crcu16>
1c000bd0:	0015008c 	move	$r12,$r4
1c000bd4:	0015018d 	move	$r13,$r12
1c000bd8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000bdc:	2940e18d 	st.h	$r13,$r12,56(0x38)
1c000be0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000be4:	0341fd8c 	andi	$r12,$r12,0x7f
1c000be8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000bec:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c000bf0:	02bc000c 	addi.w	$r12,$r0,-256(0xf00)
1c000bf4:	0014b1ac 	and	$r12,$r13,$r12
1c000bf8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000bfc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000c00:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000c04:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000c08:	0382018c 	ori	$r12,$r12,0x80
1c000c0c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000c10:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000c14:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000c18:	287f4acd 	ld.h	$r13,$r22,-46(0xfd2)
1c000c1c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000c20:	001531ac 	or	$r12,$r13,$r12
1c000c24:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c000c28:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c000c2c:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000c30:	287f4acd 	ld.h	$r13,$r22,-46(0xfd2)
1c000c34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c000c38:	2940018d 	st.h	$r13,$r12,0
1c000c3c:	287fbacc 	ld.h	$r12,$r22,-18(0xfee)
1c000c40:	00150184 	move	$r4,$r12
1c000c44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000c48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000c4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000c50:	4c000020 	jirl	$r0,$r1,0

1c000c54 <cmp_complex>:
cmp_complex():
1c000c54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000c58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000c5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c000c60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c000c64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c000c68:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c000c6c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c000c70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c000c74:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c000c78:	00150184 	move	$r4,$r12
1c000c7c:	57fd83ff 	bl	-640(0xffffd80) # 1c0009fc <calc_func>
1c000c80:	0015008c 	move	$r12,$r4
1c000c84:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000c88:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000c8c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c000c90:	00150184 	move	$r4,$r12
1c000c94:	57fd6bff 	bl	-664(0xffffd68) # 1c0009fc <calc_func>
1c000c98:	0015008c 	move	$r12,$r4
1c000c9c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000ca0:	287fbacd 	ld.h	$r13,$r22,-18(0xfee)
1c000ca4:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c000ca8:	001131ac 	sub.w	$r12,$r13,$r12
1c000cac:	00150184 	move	$r4,$r12
1c000cb0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c000cb4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000cb8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000cbc:	4c000020 	jirl	$r0,$r1,0

1c000cc0 <cmp_idx>:
cmp_idx():
1c000cc0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000cc4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c000cc8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c000ccc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c000cd0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c000cd4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c000cd8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c000cdc:	5c00f580 	bne	$r12,$r0,244(0xf4) # 1c000dd0 <cmp_idx+0x110>
1c000ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000ce4:	2840018d 	ld.h	$r13,$r12,0
1c000ce8:	02bc000c 	addi.w	$r12,$r0,-256(0xf00)
1c000cec:	0014b1ac 	and	$r12,$r13,$r12
1c000cf0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000cf4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000cf8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000cfc:	287f7acd 	ld.h	$r13,$r22,-34(0xfde)
1c000d00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000d04:	2840018c 	ld.h	$r12,$r12,0
1c000d08:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d0c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d10:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d14:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c000d18:	0044a18c 	srli.w	$r12,$r12,0x8
1c000d1c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d20:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d24:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d28:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c000d2c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d30:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d34:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d38:	287f7acc 	ld.h	$r12,$r22,-34(0xfde)
1c000d3c:	001531ac 	or	$r12,$r13,$r12
1c000d40:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d44:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d48:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d4c:	287f7acd 	ld.h	$r13,$r22,-34(0xfde)
1c000d50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000d54:	2940018d 	st.h	$r13,$r12,0
1c000d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000d5c:	2840018d 	ld.h	$r13,$r12,0
1c000d60:	02bc000c 	addi.w	$r12,$r0,-256(0xf00)
1c000d64:	0014b1ac 	and	$r12,$r13,$r12
1c000d68:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d6c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d70:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d74:	287f7acd 	ld.h	$r13,$r22,-34(0xfde)
1c000d78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000d7c:	2840018c 	ld.h	$r12,$r12,0
1c000d80:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d84:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d88:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000d8c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c000d90:	0044a18c 	srli.w	$r12,$r12,0x8
1c000d94:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000d98:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000d9c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000da0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c000da4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000da8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000dac:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000db0:	287f7acc 	ld.h	$r12,$r22,-34(0xfde)
1c000db4:	001531ac 	or	$r12,$r13,$r12
1c000db8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000dbc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000dc0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c000dc4:	287f7acd 	ld.h	$r13,$r22,-34(0xfde)
1c000dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000dcc:	2940018d 	st.h	$r13,$r12,0
1c000dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000dd4:	2840098c 	ld.h	$r12,$r12,2(0x2)
1c000dd8:	0015018d 	move	$r13,$r12
1c000ddc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000de0:	2840098c 	ld.h	$r12,$r12,2(0x2)
1c000de4:	001131ac 	sub.w	$r12,$r13,$r12
1c000de8:	00150184 	move	$r4,$r12
1c000dec:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c000df0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000df4:	4c000020 	jirl	$r0,$r1,0

1c000df8 <copy_info>:
copy_info():
1c000df8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c000dfc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c000e00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c000e04:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c000e08:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c000e0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000e10:	2840018d 	ld.h	$r13,$r12,0
1c000e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000e18:	2940018d 	st.h	$r13,$r12,0
1c000e1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c000e20:	2840098d 	ld.h	$r13,$r12,2(0x2)
1c000e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c000e28:	2940098d 	st.h	$r13,$r12,2(0x2)
1c000e2c:	03400000 	andi	$r0,$r0,0x0
1c000e30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c000e34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c000e38:	4c000020 	jirl	$r0,$r1,0

1c000e3c <core_bench_list>:
core_bench_list():
1c000e3c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000e40:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000e44:	2980e076 	st.w	$r22,$r3,56(0x38)
1c000e48:	02810076 	addi.w	$r22,$r3,64(0x40)
1c000e4c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c000e50:	001500ac 	move	$r12,$r5
1c000e54:	297f2acc 	st.h	$r12,$r22,-54(0xfca)
1c000e58:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c000e5c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c000e60:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c000e64:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c000e68:	2880918c 	ld.w	$r12,$r12,36(0x24)
1c000e6c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c000e70:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c000e74:	2a40118c 	ld.hu	$r12,$r12,4(0x4)
1c000e78:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c000e7c:	29bf42c0 	st.w	$r0,$r22,-48(0xfd0)
1c000e80:	2a7f2acc 	ld.hu	$r12,$r22,-54(0xfca)
1c000e84:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c000e88:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c000e8c:	5001d000 	b	464(0x1d0) # 1c00105c <core_bench_list+0x220>
1c000e90:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c000e94:	0343fd8c 	andi	$r12,$r12,0xff
1c000e98:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000e9c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000ea0:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000ea4:	287f22cc 	ld.h	$r12,$r22,-56(0xfc8)
1c000ea8:	297f42cc 	st.h	$r12,$r22,-48(0xfd0)
1c000eac:	02bf42cc 	addi.w	$r12,$r22,-48(0xfd0)
1c000eb0:	00150185 	move	$r5,$r12
1c000eb4:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c000eb8:	54083800 	bl	2104(0x838) # 1c0016f0 <core_list_find>
1c000ebc:	29bf62c4 	st.w	$r4,$r22,-40(0xfd8)
1c000ec0:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c000ec4:	5408c800 	bl	2248(0x8c8) # 1c00178c <core_list_reverse>
1c000ec8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c000ecc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000ed0:	5c006980 	bne	$r12,$r0,104(0x68) # 1c000f38 <core_bench_list+0xfc>
1c000ed4:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c000ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000edc:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c000ee0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c000ee4:	2880018c 	ld.w	$r12,$r12,0
1c000ee8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c000eec:	2840018c 	ld.h	$r12,$r12,0
1c000ef0:	0048a18c 	srai.w	$r12,$r12,0x8
1c000ef4:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000ef8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000efc:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f00:	287f22cc 	ld.h	$r12,$r22,-56(0xfc8)
1c000f04:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000f08:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000f0c:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f10:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c000f14:	0340058c 	andi	$r12,$r12,0x1
1c000f18:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000f1c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000f20:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f24:	2a7f22cd 	ld.hu	$r13,$r22,-56(0xfc8)
1c000f28:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000f2c:	001031ac 	add.w	$r12,$r13,$r12
1c000f30:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000f34:	5000b800 	b	184(0xb8) # 1c000fec <core_bench_list+0x1b0>
1c000f38:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c000f3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000f40:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c000f44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000f48:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c000f4c:	2840018c 	ld.h	$r12,$r12,0
1c000f50:	0340058c 	andi	$r12,$r12,0x1
1c000f54:	58005580 	beq	$r12,$r0,84(0x54) # 1c000fa8 <core_bench_list+0x16c>
1c000f58:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000f5c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c000f60:	2840018c 	ld.h	$r12,$r12,0
1c000f64:	0048a58c 	srai.w	$r12,$r12,0x9
1c000f68:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000f6c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000f70:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f74:	287f22cc 	ld.h	$r12,$r22,-56(0xfc8)
1c000f78:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000f7c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000f80:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f84:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c000f88:	0340058c 	andi	$r12,$r12,0x1
1c000f8c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000f90:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c000f94:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c000f98:	2a7f22cd 	ld.hu	$r13,$r22,-56(0xfc8)
1c000f9c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c000fa0:	001031ac 	add.w	$r12,$r13,$r12
1c000fa4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c000fa8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000fac:	2880018c 	ld.w	$r12,$r12,0
1c000fb0:	58003d80 	beq	$r12,$r0,60(0x3c) # 1c000fec <core_bench_list+0x1b0>
1c000fb4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000fb8:	2880018c 	ld.w	$r12,$r12,0
1c000fbc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c000fc0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000fc4:	2880018d 	ld.w	$r13,$r12,0
1c000fc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c000fcc:	2980018d 	st.w	$r13,$r12,0
1c000fd0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c000fd4:	2880018d 	ld.w	$r13,$r12,0
1c000fd8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c000fdc:	2980018d 	st.w	$r13,$r12,0
1c000fe0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c000fe4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c000fe8:	2980018d 	st.w	$r13,$r12,0
1c000fec:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000ff0:	60004180 	blt	$r12,$r0,64(0x40) # 1c001030 <core_bench_list+0x1f4>
1c000ff4:	287f4acc 	ld.h	$r12,$r22,-46(0xfd2)
1c000ff8:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c000ffc:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001000:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001004:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c001008:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00100c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001010:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001014:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001018:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c00101c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001020:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001024:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001028:	287f22cc 	ld.h	$r12,$r22,-56(0xfc8)
1c00102c:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c001030:	287f7acc 	ld.h	$r12,$r22,-34(0xfde)
1c001034:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001038:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c00103c:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001040:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c001044:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001048:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c00104c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001050:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001054:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c001058:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00105c:	287f7acd 	ld.h	$r13,$r22,-34(0xfde)
1c001060:	287f72cc 	ld.h	$r12,$r22,-36(0xfdc)
1c001064:	63fe2dac 	blt	$r13,$r12,-468(0x3fe2c) # 1c000e90 <core_bench_list+0x54>
1c001068:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00106c:	0040898c 	slli.w	$r12,$r12,0x2
1c001070:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001074:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001078:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c00107c:	2a7f22cd 	ld.hu	$r13,$r22,-56(0xfc8)
1c001080:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c001084:	001131ac 	sub.w	$r12,$r13,$r12
1c001088:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c00108c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001090:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001094:	2a7f22cd 	ld.hu	$r13,$r22,-56(0xfc8)
1c001098:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00109c:	001031ac 	add.w	$r12,$r13,$r12
1c0010a0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0010a4:	287f2acc 	ld.h	$r12,$r22,-54(0xfca)
1c0010a8:	64001c0c 	bge	$r0,$r12,28(0x1c) # 1c0010c4 <core_bench_list+0x288>
1c0010ac:	28bf32c6 	ld.w	$r6,$r22,-52(0xfcc)
1c0010b0:	1c000005 	pcaddu12i	$r5,0
1c0010b4:	02ae90a5 	addi.w	$r5,$r5,-1116(0xba4)
1c0010b8:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c0010bc:	54072c00 	bl	1836(0x72c) # 1c0017e8 <core_list_mergesort>
1c0010c0:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0010c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0010c8:	2880018c 	ld.w	$r12,$r12,0
1c0010cc:	00150184 	move	$r4,$r12
1c0010d0:	54054000 	bl	1344(0x540) # 1c001610 <core_list_remove>
1c0010d4:	29bf52c4 	st.w	$r4,$r22,-44(0xfd4)
1c0010d8:	02bf42cc 	addi.w	$r12,$r22,-48(0xfd0)
1c0010dc:	00150185 	move	$r5,$r12
1c0010e0:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c0010e4:	54060c00 	bl	1548(0x60c) # 1c0016f0 <core_list_find>
1c0010e8:	29bf82c4 	st.w	$r4,$r22,-32(0xfe0)
1c0010ec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0010f0:	5c004580 	bne	$r12,$r0,68(0x44) # 1c001134 <core_bench_list+0x2f8>
1c0010f4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0010f8:	2880018c 	ld.w	$r12,$r12,0
1c0010fc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001100:	50003400 	b	52(0x34) # 1c001134 <core_bench_list+0x2f8>
1c001104:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001108:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00110c:	2840018c 	ld.h	$r12,$r12,0
1c001110:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c001114:	001501a5 	move	$r5,$r13
1c001118:	00150184 	move	$r4,$r12
1c00111c:	5422dc00 	bl	8924(0x22dc) # 1c0033f8 <crc16>
1c001120:	0015008c 	move	$r12,$r4
1c001124:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c001128:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00112c:	2880018c 	ld.w	$r12,$r12,0
1c001130:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001134:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001138:	5fffcd80 	bne	$r12,$r0,-52(0x3ffcc) # 1c001104 <core_bench_list+0x2c8>
1c00113c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001140:	2880018c 	ld.w	$r12,$r12,0
1c001144:	00150185 	move	$r5,$r12
1c001148:	28bf52c4 	ld.w	$r4,$r22,-44(0xfd4)
1c00114c:	54053800 	bl	1336(0x538) # 1c001684 <core_list_undo_remove>
1c001150:	29bf52c4 	st.w	$r4,$r22,-44(0xfd4)
1c001154:	00150006 	move	$r6,$r0
1c001158:	1c000005 	pcaddu12i	$r5,0
1c00115c:	02ada0a5 	addi.w	$r5,$r5,-1176(0xb68)
1c001160:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c001164:	54068400 	bl	1668(0x684) # 1c0017e8 <core_list_mergesort>
1c001168:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c00116c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001170:	2880018c 	ld.w	$r12,$r12,0
1c001174:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001178:	50003400 	b	52(0x34) # 1c0011ac <core_bench_list+0x370>
1c00117c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001180:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001184:	2840018c 	ld.h	$r12,$r12,0
1c001188:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c00118c:	001501a5 	move	$r5,$r13
1c001190:	00150184 	move	$r4,$r12
1c001194:	54226400 	bl	8804(0x2264) # 1c0033f8 <crc16>
1c001198:	0015008c 	move	$r12,$r4
1c00119c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0011a0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0011a4:	2880018c 	ld.w	$r12,$r12,0
1c0011a8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0011ac:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0011b0:	5fffcd80 	bne	$r12,$r0,-52(0x3ffcc) # 1c00117c <core_bench_list+0x340>
1c0011b4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0011b8:	00150184 	move	$r4,$r12
1c0011bc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0011c0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0011c4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0011c8:	4c000020 	jirl	$r0,$r1,0

1c0011cc <core_list_init>:
core_list_init():
1c0011cc:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0011d0:	29813061 	st.w	$r1,$r3,76(0x4c)
1c0011d4:	29812076 	st.w	$r22,$r3,72(0x48)
1c0011d8:	02814076 	addi.w	$r22,$r3,80(0x50)
1c0011dc:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c0011e0:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c0011e4:	001500cc 	move	$r12,$r6
1c0011e8:	297edacc 	st.h	$r12,$r22,-74(0xfb6)
1c0011ec:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0011f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0011f4:	28bef2ce 	ld.w	$r14,$r22,-68(0xfbc)
1c0011f8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0011fc:	002135cc 	div.wu	$r12,$r14,$r13
1c001200:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001208 <core_list_init+0x3c>
1c001204:	002a0007 	break	0x7
1c001208:	02bff98c 	addi.w	$r12,$r12,-2(0xffe)
1c00120c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001210:	28bee2cd 	ld.w	$r13,$r22,-72(0xfb8)
1c001214:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001218:	00408d8c 	slli.w	$r12,$r12,0x3
1c00121c:	001031ac 	add.w	$r12,$r13,$r12
1c001220:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001224:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001228:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c00122c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c001230:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001234:	0040898c 	slli.w	$r12,$r12,0x2
1c001238:	001031ac 	add.w	$r12,$r13,$r12
1c00123c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001240:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c001244:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c001248:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00124c:	29800180 	st.w	$r0,$r12,0
1c001250:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c001254:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001258:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00125c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001260:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001264:	29400980 	st.h	$r0,$r12,2(0x2)
1c001268:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00126c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001270:	15ffff0d 	lu12i.w	$r13,-8(0xffff8)
1c001274:	038201ad 	ori	$r13,$r13,0x80
1c001278:	2940018d 	st.h	$r13,$r12,0
1c00127c:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c001280:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c001284:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c001288:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00128c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001290:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c001294:	140000ec 	lu12i.w	$r12,7(0x7)
1c001298:	03bffd8c 	ori	$r12,$r12,0xfff
1c00129c:	297f1acc 	st.h	$r12,$r22,-58(0xfc6)
1c0012a0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0012a4:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c0012a8:	02bf22ce 	addi.w	$r14,$r22,-56(0xfc8)
1c0012ac:	02bee2cd 	addi.w	$r13,$r22,-72(0xfb8)
1c0012b0:	02bf12cc 	addi.w	$r12,$r22,-60(0xfc4)
1c0012b4:	28bf62c9 	ld.w	$r9,$r22,-40(0xfd8)
1c0012b8:	28bf72c8 	ld.w	$r8,$r22,-36(0xfdc)
1c0012bc:	001501c7 	move	$r7,$r14
1c0012c0:	001501a6 	move	$r6,$r13
1c0012c4:	00150185 	move	$r5,$r12
1c0012c8:	28bf52c4 	ld.w	$r4,$r22,-44(0xfd4)
1c0012cc:	54025800 	bl	600(0x258) # 1c001524 <core_list_insert_new>
1c0012d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0012d4:	5000e800 	b	232(0xe8) # 1c0013bc <core_list_init+0x1f0>
1c0012d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0012dc:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c0012e0:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c0012e4:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c0012e8:	2a7ed2cd 	ld.hu	$r13,$r22,-76(0xfb4)
1c0012ec:	2a7edacc 	ld.hu	$r12,$r22,-74(0xfb6)
1c0012f0:	0015b1ac 	xor	$r12,$r13,$r12
1c0012f4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c0012f8:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c0012fc:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001300:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c001304:	03403d8c 	andi	$r12,$r12,0xf
1c001308:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c00130c:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c001310:	00408d8c 	slli.w	$r12,$r12,0x3
1c001314:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001318:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00131c:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001320:	2a7ed2cd 	ld.hu	$r13,$r22,-76(0xfb4)
1c001324:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001328:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c00132c:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c001330:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001334:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c001338:	03401d8c 	andi	$r12,$r12,0x7
1c00133c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001340:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c001344:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001348:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c00134c:	001531ac 	or	$r12,$r13,$r12
1c001350:	297f42cc 	st.h	$r12,$r22,-48(0xfd0)
1c001354:	2a7f42cc 	ld.hu	$r12,$r22,-48(0xfd0)
1c001358:	0040a18c 	slli.w	$r12,$r12,0x8
1c00135c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001360:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c001364:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001368:	287ed2cd 	ld.h	$r13,$r22,-76(0xfb4)
1c00136c:	287f42cc 	ld.h	$r12,$r22,-48(0xfd0)
1c001370:	001531ac 	or	$r12,$r13,$r12
1c001374:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001378:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00137c:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001380:	287ed2cc 	ld.h	$r12,$r22,-76(0xfb4)
1c001384:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c001388:	02bf22ce 	addi.w	$r14,$r22,-56(0xfc8)
1c00138c:	02bee2cd 	addi.w	$r13,$r22,-72(0xfb8)
1c001390:	02bf12cc 	addi.w	$r12,$r22,-60(0xfc4)
1c001394:	28bf62c9 	ld.w	$r9,$r22,-40(0xfd8)
1c001398:	28bf72c8 	ld.w	$r8,$r22,-36(0xfdc)
1c00139c:	001501c7 	move	$r7,$r14
1c0013a0:	001501a6 	move	$r6,$r13
1c0013a4:	00150185 	move	$r5,$r12
1c0013a8:	28bf52c4 	ld.w	$r4,$r22,-44(0xfd4)
1c0013ac:	54017800 	bl	376(0x178) # 1c001524 <core_list_insert_new>
1c0013b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0013b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0013b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0013bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013c0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0013c4:	6bff15ac 	bltu	$r13,$r12,-236(0x3ff14) # 1c0012d8 <core_list_init+0x10c>
1c0013c8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0013cc:	2880018c 	ld.w	$r12,$r12,0
1c0013d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0013d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0013d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0013dc:	50010c00 	b	268(0x10c) # 1c0014e8 <core_list_init+0x31c>
1c0013e0:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c0013e4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0013e8:	002135cc 	div.wu	$r12,$r14,$r13
1c0013ec:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0013f4 <core_list_init+0x228>
1c0013f0:	002a0007 	break	0x7
1c0013f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013f8:	6c0031ac 	bgeu	$r13,$r12,48(0x30) # 1c001428 <core_list_init+0x25c>
1c0013fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001400:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c001404:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001408:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00140c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001410:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c001414:	28bec2cd 	ld.w	$r13,$r22,-80(0xfb0)
1c001418:	297ed2cd 	st.h	$r13,$r22,-76(0xfb4)
1c00141c:	287ed2cd 	ld.h	$r13,$r22,-76(0xfb4)
1c001420:	2940098d 	st.h	$r13,$r12,2(0x2)
1c001424:	5000b800 	b	184(0xb8) # 1c0014dc <core_list_init+0x310>
1c001428:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00142c:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c001430:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001434:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c001438:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00143c:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001440:	2a7ed2cd 	ld.hu	$r13,$r22,-76(0xfb4)
1c001444:	2a7edacc 	ld.hu	$r12,$r22,-74(0xfb6)
1c001448:	0015b1ac 	xor	$r12,$r13,$r12
1c00144c:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c001450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001454:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001458:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00145c:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001460:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c001464:	0040a18c 	slli.w	$r12,$r12,0x8
1c001468:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c00146c:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c001470:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001474:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c001478:	035c018c 	andi	$r12,$r12,0x700
1c00147c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001480:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c001484:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c001488:	2a7ed2cd 	ld.hu	$r13,$r22,-76(0xfb4)
1c00148c:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c001490:	001531ac 	or	$r12,$r13,$r12
1c001494:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c001498:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00149c:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c0014a0:	2a7ed2cc 	ld.hu	$r12,$r22,-76(0xfb4)
1c0014a4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c0014a8:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c0014ac:	297ed2cc 	st.h	$r12,$r22,-76(0xfb4)
1c0014b0:	287ed2ce 	ld.h	$r14,$r22,-76(0xfb4)
1c0014b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014b8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0014bc:	1400006d 	lu12i.w	$r13,3(0x3)
1c0014c0:	03bffdad 	ori	$r13,$r13,0xfff
1c0014c4:	0014b5cd 	and	$r13,$r14,$r13
1c0014c8:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c0014cc:	28bec2cd 	ld.w	$r13,$r22,-80(0xfb0)
1c0014d0:	297ed2cd 	st.h	$r13,$r22,-76(0xfb4)
1c0014d4:	287ed2cd 	ld.h	$r13,$r22,-76(0xfb4)
1c0014d8:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0014dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014e0:	2880018c 	ld.w	$r12,$r12,0
1c0014e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	5ffef180 	bne	$r12,$r0,-272(0x3fef0) # 1c0013e0 <core_list_init+0x214>
1c0014f4:	00150006 	move	$r6,$r0
1c0014f8:	1dffffe5 	pcaddu12i	$r5,-1(0xfffff)
1c0014fc:	029f20a5 	addi.w	$r5,$r5,1992(0x7c8)
1c001500:	28bf52c4 	ld.w	$r4,$r22,-44(0xfd4)
1c001504:	5402e400 	bl	740(0x2e4) # 1c0017e8 <core_list_mergesort>
1c001508:	29bf52c4 	st.w	$r4,$r22,-44(0xfd4)
1c00150c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001510:	00150184 	move	$r4,$r12
1c001514:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c001518:	28812076 	ld.w	$r22,$r3,72(0x48)
1c00151c:	02814063 	addi.w	$r3,$r3,80(0x50)
1c001520:	4c000020 	jirl	$r0,$r1,0

1c001524 <core_list_insert_new>:
core_list_insert_new():
1c001524:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001528:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00152c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001530:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00153c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001540:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c001544:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c001548:	29bf22c9 	st.w	$r9,$r22,-56(0xfc8)
1c00154c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001550:	2880018c 	ld.w	$r12,$r12,0
1c001554:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c001558:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00155c:	68000d8d 	bltu	$r12,$r13,12(0xc) # 1c001568 <core_list_insert_new+0x44>
1c001560:	0015000c 	move	$r12,$r0
1c001564:	50009800 	b	152(0x98) # 1c0015fc <core_list_insert_new+0xd8>
1c001568:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00156c:	2880018c 	ld.w	$r12,$r12,0
1c001570:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001574:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c001578:	68000d8d 	bltu	$r12,$r13,12(0xc) # 1c001584 <core_list_insert_new+0x60>
1c00157c:	0015000c 	move	$r12,$r0
1c001580:	50007c00 	b	124(0x7c) # 1c0015fc <core_list_insert_new+0xd8>
1c001584:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001588:	2880018c 	ld.w	$r12,$r12,0
1c00158c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001590:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001594:	2880018c 	ld.w	$r12,$r12,0
1c001598:	0280218d 	addi.w	$r13,$r12,8(0x8)
1c00159c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0015a0:	2980018d 	st.w	$r13,$r12,0
1c0015a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015a8:	2880018d 	ld.w	$r13,$r12,0
1c0015ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015b0:	2980018d 	st.w	$r13,$r12,0
1c0015b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0015bc:	2980018d 	st.w	$r13,$r12,0
1c0015c0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0015c4:	2880018d 	ld.w	$r13,$r12,0
1c0015c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015cc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0015d0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0015d4:	2880018c 	ld.w	$r12,$r12,0
1c0015d8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0015dc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0015e0:	2980018d 	st.w	$r13,$r12,0
1c0015e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015e8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0015ec:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0015f0:	00150184 	move	$r4,$r12
1c0015f4:	57f807ff 	bl	-2044(0xffff804) # 1c000df8 <copy_info>
1c0015f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015fc:	00150184 	move	$r4,$r12
1c001600:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001604:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001608:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00160c:	4c000020 	jirl	$r0,$r1,0

1c001610 <core_list_remove>:
core_list_remove():
1c001610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001614:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001618:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00161c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001620:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001624:	2880018c 	ld.w	$r12,$r12,0
1c001628:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00162c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001630:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001634:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00163c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001644:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001648:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00164c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001650:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001654:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001658:	2880018c 	ld.w	$r12,$r12,0
1c00165c:	2880018d 	ld.w	$r13,$r12,0
1c001660:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001664:	2980018d 	st.w	$r13,$r12,0
1c001668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00166c:	29800180 	st.w	$r0,$r12,0
1c001670:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001674:	00150184 	move	$r4,$r12
1c001678:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00167c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001680:	4c000020 	jirl	$r0,$r1,0

1c001684 <core_list_undo_remove>:
core_list_undo_remove():
1c001684:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001688:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00168c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001690:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001694:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001698:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00169c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0016a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0016a8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0016ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0016b0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0016b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0016b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016bc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0016c0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0016c4:	2880018d 	ld.w	$r13,$r12,0
1c0016c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0016cc:	2980018d 	st.w	$r13,$r12,0
1c0016d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0016d4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0016d8:	2980018d 	st.w	$r13,$r12,0
1c0016dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0016e0:	00150184 	move	$r4,$r12
1c0016e4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0016e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0016ec:	4c000020 	jirl	$r0,$r1,0

1c0016f0 <core_list_find>:
core_list_find():
1c0016f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0016f4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0016f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0016fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001700:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c001704:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001708:	2840098c 	ld.h	$r12,$r12,2(0x2)
1c00170c:	60004980 	blt	$r12,$r0,72(0x48) # 1c001754 <core_list_find+0x64>
1c001710:	50001000 	b	16(0x10) # 1c001720 <core_list_find+0x30>
1c001714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001718:	2880018c 	ld.w	$r12,$r12,0
1c00171c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001720:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001724:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c001740 <core_list_find+0x50>
1c001728:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00172c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001730:	2840098d 	ld.h	$r13,$r12,2(0x2)
1c001734:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001738:	2840098c 	ld.h	$r12,$r12,2(0x2)
1c00173c:	5fffd9ac 	bne	$r13,$r12,-40(0x3ffd8) # 1c001714 <core_list_find+0x24>
1c001740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001744:	50003800 	b	56(0x38) # 1c00177c <core_list_find+0x8c>
1c001748:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00174c:	2880018c 	ld.w	$r12,$r12,0
1c001750:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001758:	58002180 	beq	$r12,$r0,32(0x20) # 1c001778 <core_list_find+0x88>
1c00175c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001760:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001764:	2840018c 	ld.h	$r12,$r12,0
1c001768:	0343fd8c 	andi	$r12,$r12,0xff
1c00176c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001770:	284001ad 	ld.h	$r13,$r13,0
1c001774:	5fffd58d 	bne	$r12,$r13,-44(0x3ffd4) # 1c001748 <core_list_find+0x58>
1c001778:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00177c:	00150184 	move	$r4,$r12
1c001780:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001784:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001788:	4c000020 	jirl	$r0,$r1,0

1c00178c <core_list_reverse>:
core_list_reverse():
1c00178c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001790:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001794:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001798:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00179c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0017a0:	50002c00 	b	44(0x2c) # 1c0017cc <core_list_reverse+0x40>
1c0017a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017a8:	2880018c 	ld.w	$r12,$r12,0
1c0017ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0017b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0017b8:	2980018d 	st.w	$r13,$r12,0
1c0017bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0017c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017c8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0017cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017d0:	5fffd580 	bne	$r12,$r0,-44(0x3ffd4) # 1c0017a4 <core_list_reverse+0x18>
1c0017d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017d8:	00150184 	move	$r4,$r12
1c0017dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0017e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0017e4:	4c000020 	jirl	$r0,$r1,0

1c0017e8 <core_list_mergesort>:
core_list_mergesort():
1c0017e8:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0017ec:	29813061 	st.w	$r1,$r3,76(0x4c)
1c0017f0:	29812076 	st.w	$r22,$r3,72(0x48)
1c0017f4:	02814076 	addi.w	$r22,$r3,80(0x50)
1c0017f8:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c0017fc:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c001800:	29bed2c6 	st.w	$r6,$r22,-76(0xfb4)
1c001804:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001808:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00180c:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001810:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001814:	29bef2c0 	st.w	$r0,$r22,-68(0xfbc)
1c001818:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c00181c:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c001820:	50018800 	b	392(0x188) # 1c0019a8 <core_list_mergesort+0x1c0>
1c001824:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001828:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00182c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001834:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001838:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c00183c:	29bf32c0 	st.w	$r0,$r22,-52(0xfcc)
1c001840:	50003000 	b	48(0x30) # 1c001870 <core_list_mergesort+0x88>
1c001844:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001848:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00184c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c001850:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001854:	2880018c 	ld.w	$r12,$r12,0
1c001858:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00185c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001860:	58002180 	beq	$r12,$r0,32(0x20) # 1c001880 <core_list_mergesort+0x98>
1c001864:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001868:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00186c:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c001870:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001878:	63ffcdac 	blt	$r13,$r12,-52(0x3ffcc) # 1c001844 <core_list_mergesort+0x5c>
1c00187c:	50000800 	b	8(0x8) # 1c001884 <core_list_mergesort+0x9c>
1c001880:	03400000 	andi	$r0,$r0,0x0
1c001884:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001888:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00188c:	5000fc00 	b	252(0xfc) # 1c001988 <core_list_mergesort+0x1a0>
1c001890:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001894:	5c002980 	bne	$r12,$r0,40(0x28) # 1c0018bc <core_list_mergesort+0xd4>
1c001898:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00189c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018a4:	2880018c 	ld.w	$r12,$r12,0
1c0018a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0018ac:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0018b0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0018b4:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0018b8:	5000a800 	b	168(0xa8) # 1c001960 <core_list_mergesort+0x178>
1c0018bc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0018c0:	58000d80 	beq	$r12,$r0,12(0xc) # 1c0018cc <core_list_mergesort+0xe4>
1c0018c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018c8:	5c002980 	bne	$r12,$r0,40(0x28) # 1c0018f0 <core_list_mergesort+0x108>
1c0018cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	2880018c 	ld.w	$r12,$r12,0
1c0018dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0018e4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0018e8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0018ec:	50007400 	b	116(0x74) # 1c001960 <core_list_mergesort+0x178>
1c0018f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018f4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0018f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018fc:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c001900:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c001904:	28bed2c6 	ld.w	$r6,$r22,-76(0xfb4)
1c001908:	001501c5 	move	$r5,$r14
1c00190c:	001501a4 	move	$r4,$r13
1c001910:	4c000181 	jirl	$r1,$r12,0
1c001914:	0015008c 	move	$r12,$r4
1c001918:	6000280c 	blt	$r0,$r12,40(0x28) # 1c001940 <core_list_mergesort+0x158>
1c00191c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001920:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001924:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001928:	2880018c 	ld.w	$r12,$r12,0
1c00192c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001930:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001934:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001938:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c00193c:	50002400 	b	36(0x24) # 1c001960 <core_list_mergesort+0x178>
1c001940:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001944:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001948:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00194c:	2880018c 	ld.w	$r12,$r12,0
1c001950:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001954:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c001958:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00195c:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c001960:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001964:	58001580 	beq	$r12,$r0,20(0x14) # 1c001978 <core_list_mergesort+0x190>
1c001968:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00196c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000c00 	b	12(0xc) # 1c001980 <core_list_mergesort+0x198>
1c001978:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00197c:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001980:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001984:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001988:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00198c:	63ff040c 	blt	$r0,$r12,-252(0x3ff04) # 1c001890 <core_list_mergesort+0xa8>
1c001990:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c001994:	64000c0c 	bge	$r0,$r12,12(0xc) # 1c0019a0 <core_list_mergesort+0x1b8>
1c001998:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00199c:	5ffef580 	bne	$r12,$r0,-268(0x3fef4) # 1c001890 <core_list_mergesort+0xa8>
1c0019a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019ac:	5ffe7980 	bne	$r12,$r0,-392(0x3fe78) # 1c001824 <core_list_mergesort+0x3c>
1c0019b0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019b4:	29800180 	st.w	$r0,$r12,0
1c0019b8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0019bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0019c0:	60000d8d 	blt	$r12,$r13,12(0xc) # 1c0019cc <core_list_mergesort+0x1e4>
1c0019c4:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c0019c8:	50001400 	b	20(0x14) # 1c0019dc <core_list_mergesort+0x1f4>
1c0019cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019d0:	0040858c 	slli.w	$r12,$r12,0x1
1c0019d4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0019d8:	53fe37ff 	b	-460(0xffffe34) # 1c00180c <core_list_mergesort+0x24>
1c0019dc:	00150184 	move	$r4,$r12
1c0019e0:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c0019e4:	28812076 	ld.w	$r22,$r3,72(0x48)
1c0019e8:	02814063 	addi.w	$r3,$r3,80(0x50)
1c0019ec:	4c000020 	jirl	$r0,$r1,0

1c0019f0 <iterate>:
iterate():
1c0019f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0019f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0019f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0019fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a00:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a10:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c001a14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a1c:	2940e180 	st.h	$r0,$r12,56(0x38)
1c001a20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a24:	2940e980 	st.h	$r0,$r12,58(0x3a)
1c001a28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a2c:	2940f180 	st.h	$r0,$r12,60(0x3c)
1c001a30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a34:	2940f980 	st.h	$r0,$r12,62(0x3e)
1c001a38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a3c:	5000a000 	b	160(0xa0) # 1c001adc <iterate+0xec>
1c001a40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a44:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c001a48:	57f3f7ff 	bl	-3084(0xffff3f4) # 1c000e3c <core_bench_list>
1c001a4c:	0015008c 	move	$r12,$r4
1c001a50:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c001a54:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a58:	2a40e18d 	ld.hu	$r13,$r12,56(0x38)
1c001a5c:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c001a60:	001501a5 	move	$r5,$r13
1c001a64:	00150184 	move	$r4,$r12
1c001a68:	54185800 	bl	6232(0x1858) # 1c0032c0 <crcu16>
1c001a6c:	0015008c 	move	$r12,$r4
1c001a70:	0015018d 	move	$r13,$r12
1c001a74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a78:	2940e18d 	st.h	$r13,$r12,56(0x38)
1c001a7c:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c001a80:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c001a84:	57f3bbff 	bl	-3144(0xffff3b8) # 1c000e3c <core_bench_list>
1c001a88:	0015008c 	move	$r12,$r4
1c001a8c:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c001a90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a94:	2a40e18d 	ld.hu	$r13,$r12,56(0x38)
1c001a98:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c001a9c:	001501a5 	move	$r5,$r13
1c001aa0:	00150184 	move	$r4,$r12
1c001aa4:	54181c00 	bl	6172(0x181c) # 1c0032c0 <crcu16>
1c001aa8:	0015008c 	move	$r12,$r4
1c001aac:	0015018d 	move	$r13,$r12
1c001ab0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab4:	2940e18d 	st.h	$r13,$r12,56(0x38)
1c001ab8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001abc:	5c001580 	bne	$r12,$r0,20(0x14) # 1c001ad0 <iterate+0xe0>
1c001ac0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ac4:	2a40e18d 	ld.hu	$r13,$r12,56(0x38)
1c001ac8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001acc:	2940e98d 	st.h	$r13,$r12,58(0x3a)
1c001ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ad8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001adc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ae0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ae4:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c001a40 <iterate+0x50>
1c001ae8:	0015000c 	move	$r12,$r0
1c001aec:	00150184 	move	$r4,$r12
1c001af0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001af4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001af8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001afc:	4c000020 	jirl	$r0,$r1,0

1c001b00 <core_bench_matrix>:
core_bench_matrix():
1c001b00:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001b04:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b08:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001b0c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001b10:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001b14:	001500ac 	move	$r12,$r5
1c001b18:	001500cd 	move	$r13,$r6
1c001b1c:	297f2acc 	st.h	$r12,$r22,-54(0xfca)
1c001b20:	001501ac 	move	$r12,$r13
1c001b24:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001b28:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001b2c:	2880018c 	ld.w	$r12,$r12,0
1c001b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b34:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001b38:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c001b3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b40:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001b44:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001b48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001b4c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001b50:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c001b54:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b58:	2a7f2acc 	ld.hu	$r12,$r22,-54(0xfca)
1c001b5c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c001b60:	287f7acc 	ld.h	$r12,$r22,-34(0xfde)
1c001b64:	00150188 	move	$r8,$r12
1c001b68:	28bf82c7 	ld.w	$r7,$r22,-32(0xfe0)
1c001b6c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c001b70:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c001b74:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c001b78:	54003c00 	bl	60(0x3c) # 1c001bb4 <matrix_test>
1c001b7c:	0015008c 	move	$r12,$r4
1c001b80:	0015018d 	move	$r13,$r12
1c001b84:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c001b88:	00150185 	move	$r5,$r12
1c001b8c:	001501a4 	move	$r4,$r13
1c001b90:	54186800 	bl	6248(0x1868) # 1c0033f8 <crc16>
1c001b94:	0015008c 	move	$r12,$r4
1c001b98:	297f22cc 	st.h	$r12,$r22,-56(0xfc8)
1c001b9c:	2a7f22cc 	ld.hu	$r12,$r22,-56(0xfc8)
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001ba8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001bac:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001bb0:	4c000020 	jirl	$r0,$r1,0

1c001bb4 <matrix_test>:
matrix_test():
1c001bb4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001bb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001bbc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bc0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bc8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001bcc:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001bd0:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c001bd4:	0015010c 	move	$r12,$r8
1c001bd8:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c001bdc:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c001be0:	2a7f3acd 	ld.hu	$r13,$r22,-50(0xfce)
1c001be4:	15ffffec 	lu12i.w	$r12,-1(0xfffff)
1c001be8:	001531ac 	or	$r12,$r13,$r12
1c001bec:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c001bf0:	287f3acc 	ld.h	$r12,$r22,-50(0xfce)
1c001bf4:	00150186 	move	$r6,$r12
1c001bf8:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c001bfc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001c00:	5405c000 	bl	1472(0x5c0) # 1c0021c0 <matrix_add_const>
1c001c04:	287f3acc 	ld.h	$r12,$r22,-50(0xfce)
1c001c08:	00150187 	move	$r7,$r12
1c001c0c:	28bf52c6 	ld.w	$r6,$r22,-44(0xfd4)
1c001c10:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001c14:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001c18:	5404e400 	bl	1252(0x4e4) # 1c0020fc <matrix_mul_const>
1c001c1c:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c001c20:	00150186 	move	$r6,$r12
1c001c24:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001c28:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001c2c:	5403a000 	bl	928(0x3a0) # 1c001fcc <matrix_sum>
1c001c30:	0015008c 	move	$r12,$r4
1c001c34:	0015018d 	move	$r13,$r12
1c001c38:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c001c3c:	00150185 	move	$r5,$r12
1c001c40:	001501a4 	move	$r4,$r13
1c001c44:	5417b400 	bl	6068(0x17b4) # 1c0033f8 <crc16>
1c001c48:	0015008c 	move	$r12,$r4
1c001c4c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c001c50:	28bf42c7 	ld.w	$r7,$r22,-48(0xfd0)
1c001c54:	28bf52c6 	ld.w	$r6,$r22,-44(0xfd4)
1c001c58:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001c5c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001c60:	54064c00 	bl	1612(0x64c) # 1c0022ac <matrix_mul_vect>
1c001c64:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c001c68:	00150186 	move	$r6,$r12
1c001c6c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001c70:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001c74:	54035800 	bl	856(0x358) # 1c001fcc <matrix_sum>
1c001c78:	0015008c 	move	$r12,$r4
1c001c7c:	0015018d 	move	$r13,$r12
1c001c80:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c001c84:	00150185 	move	$r5,$r12
1c001c88:	001501a4 	move	$r4,$r13
1c001c8c:	54176c00 	bl	5996(0x176c) # 1c0033f8 <crc16>
1c001c90:	0015008c 	move	$r12,$r4
1c001c94:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c001c98:	28bf42c7 	ld.w	$r7,$r22,-48(0xfd0)
1c001c9c:	28bf52c6 	ld.w	$r6,$r22,-44(0xfd4)
1c001ca0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001ca4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001ca8:	5406f000 	bl	1776(0x6f0) # 1c002398 <matrix_mul_matrix>
1c001cac:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c001cb0:	00150186 	move	$r6,$r12
1c001cb4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001cb8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001cbc:	54031000 	bl	784(0x310) # 1c001fcc <matrix_sum>
1c001cc0:	0015008c 	move	$r12,$r4
1c001cc4:	0015018d 	move	$r13,$r12
1c001cc8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c001ccc:	00150185 	move	$r5,$r12
1c001cd0:	001501a4 	move	$r4,$r13
1c001cd4:	54172400 	bl	5924(0x1724) # 1c0033f8 <crc16>
1c001cd8:	0015008c 	move	$r12,$r4
1c001cdc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c001ce0:	28bf42c7 	ld.w	$r7,$r22,-48(0xfd0)
1c001ce4:	28bf52c6 	ld.w	$r6,$r22,-44(0xfd4)
1c001ce8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001cec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001cf0:	5407f400 	bl	2036(0x7f4) # 1c0024e4 <matrix_mul_matrix_bitextract>
1c001cf4:	287fb2cc 	ld.h	$r12,$r22,-20(0xfec)
1c001cf8:	00150186 	move	$r6,$r12
1c001cfc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001d00:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001d04:	5402c800 	bl	712(0x2c8) # 1c001fcc <matrix_sum>
1c001d08:	0015008c 	move	$r12,$r4
1c001d0c:	0015018d 	move	$r13,$r12
1c001d10:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c001d14:	00150185 	move	$r5,$r12
1c001d18:	001501a4 	move	$r4,$r13
1c001d1c:	5416dc00 	bl	5852(0x16dc) # 1c0033f8 <crc16>
1c001d20:	0015008c 	move	$r12,$r4
1c001d24:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c001d28:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c001d2c:	0011300c 	sub.w	$r12,$r0,$r12
1c001d30:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c001d34:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c001d38:	297f32cc 	st.h	$r12,$r22,-52(0xfcc)
1c001d3c:	2a7f32cc 	ld.hu	$r12,$r22,-52(0xfcc)
1c001d40:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c001d44:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c001d48:	297f32cc 	st.h	$r12,$r22,-52(0xfcc)
1c001d4c:	287f32cc 	ld.h	$r12,$r22,-52(0xfcc)
1c001d50:	00150186 	move	$r6,$r12
1c001d54:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c001d58:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001d5c:	54046400 	bl	1124(0x464) # 1c0021c0 <matrix_add_const>
1c001d60:	287fbacc 	ld.h	$r12,$r22,-18(0xfee)
1c001d64:	00150184 	move	$r4,$r12
1c001d68:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001d6c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001d70:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001d74:	4c000020 	jirl	$r0,$r1,0

1c001d78 <core_init_matrix>:
core_init_matrix():
1c001d78:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c001d7c:	29813076 	st.w	$r22,$r3,76(0x4c)
1c001d80:	02814076 	addi.w	$r22,$r3,80(0x50)
1c001d84:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001d88:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c001d8c:	29bf12c6 	st.w	$r6,$r22,-60(0xfc4)
1c001d90:	29bf02c7 	st.w	$r7,$r22,-64(0xfc0)
1c001d94:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c001d98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001da0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001da4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001da8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001dac:	5c003180 	bne	$r12,$r0,48(0x30) # 1c001ddc <core_init_matrix+0x64>
1c001db0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001db4:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001db8:	50002400 	b	36(0x24) # 1c001ddc <core_init_matrix+0x64>
1c001dbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001dc8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001dcc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd0:	001c31ac 	mul.w	$r12,$r13,$r12
1c001dd4:	00408d8c 	slli.w	$r12,$r12,0x3
1c001dd8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ddc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de0:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c001de4:	6bffd9ac 	bltu	$r13,$r12,-40(0x3ffd8) # 1c001dbc <core_init_matrix+0x44>
1c001de8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dec:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001df0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001df4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c001df8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001dfc:	02bff00c 	addi.w	$r12,$r0,-4(0xffc)
1c001e00:	0014b1ac 	and	$r12,$r13,$r12
1c001e04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e08:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001e0c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001e10:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001e14:	001c31ac 	mul.w	$r12,$r13,$r12
1c001e18:	0040858c 	slli.w	$r12,$r12,0x1
1c001e1c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001e20:	001031ac 	add.w	$r12,$r13,$r12
1c001e24:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001e28:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001e2c:	50012800 	b	296(0x128) # 1c001f54 <core_init_matrix+0x1dc>
1c001e30:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e34:	50010800 	b	264(0x108) # 1c001f3c <core_init_matrix+0x1c4>
1c001e38:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001e3c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001e40:	001c31ae 	mul.w	$r14,$r13,$r12
1c001e44:	1400020d 	lu12i.w	$r13,16(0x10)
1c001e48:	0020b5cc 	mod.w	$r12,$r14,$r13
1c001e4c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001e54 <core_init_matrix+0xdc>
1c001e50:	002a0007 	break	0x7
1c001e54:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c001e58:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c001e5c:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001e60:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001e64:	297eeacc 	st.h	$r12,$r22,-70(0xfba)
1c001e68:	2a7eeacd 	ld.hu	$r13,$r22,-70(0xfba)
1c001e6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e70:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001e74:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001e78:	297eeacc 	st.h	$r12,$r22,-70(0xfba)
1c001e7c:	2a7eeacc 	ld.hu	$r12,$r22,-70(0xfba)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001e88:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001e8c:	297eeacc 	st.h	$r12,$r22,-70(0xfba)
1c001e90:	2a7eeacc 	ld.hu	$r12,$r22,-70(0xfba)
1c001e94:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c001e98:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001e9c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ea0:	001c31ad 	mul.w	$r13,$r13,$r12
1c001ea4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ea8:	001031ac 	add.w	$r12,$r13,$r12
1c001eac:	0040858c 	slli.w	$r12,$r12,0x1
1c001eb0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c001eb4:	001031ac 	add.w	$r12,$r13,$r12
1c001eb8:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c001ebc:	2940018d 	st.h	$r13,$r12,0
1c001ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec4:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001ec8:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001ecc:	297eeacc 	st.h	$r12,$r22,-70(0xfba)
1c001ed0:	2a7eeacd 	ld.hu	$r13,$r22,-70(0xfba)
1c001ed4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c001ed8:	001031ac 	add.w	$r12,$r13,$r12
1c001edc:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c001ee0:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c001ee4:	297eeacc 	st.h	$r12,$r22,-70(0xfba)
1c001ee8:	2a7eeacc 	ld.hu	$r12,$r22,-70(0xfba)
1c001eec:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c001ef0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c001ef4:	0343fd8c 	andi	$r12,$r12,0xff
1c001ef8:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c001efc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001f00:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001f04:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f08:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001f0c:	001031ac 	add.w	$r12,$r13,$r12
1c001f10:	0040858c 	slli.w	$r12,$r12,0x1
1c001f14:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f18:	001031ac 	add.w	$r12,$r13,$r12
1c001f1c:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c001f20:	2940018d 	st.h	$r13,$r12,0
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f30:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001f34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f38:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f3c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f40:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001f44:	6bfef5ac 	bltu	$r13,$r12,-268(0x3fef4) # 1c001e38 <core_init_matrix+0xc0>
1c001f48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001f58:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001f5c:	6bfed5ac 	bltu	$r13,$r12,-300(0x3fed4) # 1c001e30 <core_init_matrix+0xb8>
1c001f60:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c001f64:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f68:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001f6c:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c001f70:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c001f74:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001f78:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001f7c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001f80:	001c31ac 	mul.w	$r12,$r13,$r12
1c001f84:	0040858c 	slli.w	$r12,$r12,0x1
1c001f88:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c001f8c:	001031ac 	add.w	$r12,$r13,$r12
1c001f90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001f94:	02bff00c 	addi.w	$r12,$r0,-4(0xffc)
1c001f98:	0014b1ac 	and	$r12,$r13,$r12
1c001f9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001fa0:	0015018d 	move	$r13,$r12
1c001fa4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c001fa8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001fac:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001fb0:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c001fb4:	2980018d 	st.w	$r13,$r12,0
1c001fb8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001fbc:	00150184 	move	$r4,$r12
1c001fc0:	28813076 	ld.w	$r22,$r3,76(0x4c)
1c001fc4:	02814063 	addi.w	$r3,$r3,80(0x50)
1c001fc8:	4c000020 	jirl	$r0,$r1,0

1c001fcc <matrix_sum>:
matrix_sum():
1c001fcc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001fd0:	2980f076 	st.w	$r22,$r3,60(0x3c)
1c001fd4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001fd8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001fdc:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c001fe0:	001500cc 	move	$r12,$r6
1c001fe4:	297f1acc 	st.h	$r12,$r22,-58(0xfc6)
1c001fe8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001fec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001ff0:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c001ff4:	297f9ac0 	st.h	$r0,$r22,-26(0xfe6)
1c001ff8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c001ffc:	5000e000 	b	224(0xe0) # 1c0020dc <matrix_sum+0x110>
1c002000:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002004:	5000c000 	b	192(0xc0) # 1c0020c4 <matrix_sum+0xf8>
1c002008:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00200c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c002010:	001c31ad 	mul.w	$r13,$r13,$r12
1c002014:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002018:	001031ac 	add.w	$r12,$r13,$r12
1c00201c:	0040898c 	slli.w	$r12,$r12,0x2
1c002020:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002024:	001031ac 	add.w	$r12,$r13,$r12
1c002028:	2880018c 	ld.w	$r12,$r12,0
1c00202c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002030:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002034:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002038:	001031ac 	add.w	$r12,$r13,$r12
1c00203c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002040:	287f1acc 	ld.h	$r12,$r22,-58(0xfc6)
1c002044:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002048:	6400298d 	bge	$r12,$r13,40(0x28) # 1c002070 <matrix_sum+0xa4>
1c00204c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002050:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002054:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c002058:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c00205c:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c002060:	2a7f12cc 	ld.hu	$r12,$r22,-60(0xfc4)
1c002064:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002068:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00206c:	50004400 	b	68(0x44) # 1c0020b0 <matrix_sum+0xe4>
1c002070:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002074:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002078:	0012358c 	slt	$r12,$r12,$r13
1c00207c:	293f02cc 	st.b	$r12,$r22,-64(0xfc0)
1c002080:	2a3f02cc 	ld.bu	$r12,$r22,-64(0xfc0)
1c002084:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c002088:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c00208c:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c002090:	2a7f12cd 	ld.hu	$r13,$r22,-60(0xfc4)
1c002094:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002098:	001031ac 	add.w	$r12,$r13,$r12
1c00209c:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c0020a0:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c0020a4:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c0020a8:	2a7f12cc 	ld.hu	$r12,$r22,-60(0xfc4)
1c0020ac:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0020b0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020b4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020c0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0020c4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0020c8:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0020cc:	6bff3dac 	bltu	$r13,$r12,-196(0x3ff3c) # 1c002008 <matrix_sum+0x3c>
1c0020d0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020dc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020e0:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0020e4:	6bff1dac 	bltu	$r13,$r12,-228(0x3ff1c) # 1c002000 <matrix_sum+0x34>
1c0020e8:	287f9acc 	ld.h	$r12,$r22,-26(0xfe6)
1c0020ec:	00150184 	move	$r4,$r12
1c0020f0:	2880f076 	ld.w	$r22,$r3,60(0x3c)
1c0020f4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0020f8:	4c000020 	jirl	$r0,$r1,0

1c0020fc <matrix_mul_const>:
matrix_mul_const():
1c0020fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002100:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002104:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002108:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00210c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002110:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002114:	001500ec 	move	$r12,$r7
1c002118:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c00211c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002120:	50008400 	b	132(0x84) # 1c0021a4 <matrix_mul_const+0xa8>
1c002124:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002128:	50006400 	b	100(0x64) # 1c00218c <matrix_mul_const+0x90>
1c00212c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002130:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002134:	001c31ad 	mul.w	$r13,$r13,$r12
1c002138:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00213c:	001031ac 	add.w	$r12,$r13,$r12
1c002140:	0040858c 	slli.w	$r12,$r12,0x1
1c002144:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c002148:	001031ac 	add.w	$r12,$r13,$r12
1c00214c:	2840018c 	ld.h	$r12,$r12,0
1c002150:	0015018f 	move	$r15,$r12
1c002154:	287f4acd 	ld.h	$r13,$r22,-46(0xfd2)
1c002158:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00215c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002160:	001c31ce 	mul.w	$r14,$r14,$r12
1c002164:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002168:	001031cc 	add.w	$r12,$r14,$r12
1c00216c:	0040898c 	slli.w	$r12,$r12,0x2
1c002170:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002174:	001031cc 	add.w	$r12,$r14,$r12
1c002178:	001c35ed 	mul.w	$r13,$r15,$r13
1c00217c:	2980018d 	st.w	$r13,$r12,0
1c002180:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002184:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002188:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00218c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002190:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002194:	6bff99ac 	bltu	$r13,$r12,-104(0x3ff98) # 1c00212c <matrix_mul_const+0x30>
1c002198:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00219c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0021a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021ac:	6bff79ac 	bltu	$r13,$r12,-136(0x3ff78) # 1c002124 <matrix_mul_const+0x28>
1c0021b0:	03400000 	andi	$r0,$r0,0x0
1c0021b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0021b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0021bc:	4c000020 	jirl	$r0,$r1,0

1c0021c0 <matrix_add_const>:
matrix_add_const():
1c0021c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0021c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0021c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0021cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0021d4:	001500cc 	move	$r12,$r6
1c0021d8:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c0021dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0021e0:	5000b000 	b	176(0xb0) # 1c002290 <matrix_add_const+0xd0>
1c0021e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0021e8:	50009000 	b	144(0x90) # 1c002278 <matrix_add_const+0xb8>
1c0021ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0021f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021f4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0021f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021fc:	001031ac 	add.w	$r12,$r13,$r12
1c002200:	0040858c 	slli.w	$r12,$r12,0x1
1c002204:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002208:	001031ac 	add.w	$r12,$r13,$r12
1c00220c:	2840018c 	ld.h	$r12,$r12,0
1c002210:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002214:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002218:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c00221c:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c002220:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c002224:	001031ac 	add.w	$r12,$r13,$r12
1c002228:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00222c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002230:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c002234:	2a7f52ce 	ld.hu	$r14,$r22,-44(0xfd4)
1c002238:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00223c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002240:	001c31ad 	mul.w	$r13,$r13,$r12
1c002244:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002248:	001031ac 	add.w	$r12,$r13,$r12
1c00224c:	0040858c 	slli.w	$r12,$r12,0x1
1c002250:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002254:	001031ac 	add.w	$r12,$r13,$r12
1c002258:	29bf42ce 	st.w	$r14,$r22,-48(0xfd0)
1c00225c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c002260:	297f52cd 	st.h	$r13,$r22,-44(0xfd4)
1c002264:	287f52cd 	ld.h	$r13,$r22,-44(0xfd4)
1c002268:	2940018d 	st.h	$r13,$r12,0
1c00226c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002274:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002278:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00227c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002280:	6bff6dac 	bltu	$r13,$r12,-148(0x3ff6c) # 1c0021ec <matrix_add_const+0x2c>
1c002284:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002288:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00228c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002290:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002294:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002298:	6bff4dac 	bltu	$r13,$r12,-180(0x3ff4c) # 1c0021e4 <matrix_add_const+0x24>
1c00229c:	03400000 	andi	$r0,$r0,0x0
1c0022a0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0022a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0022a8:	4c000020 	jirl	$r0,$r1,0

1c0022ac <matrix_mul_vect>:
matrix_mul_vect():
1c0022ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0022b0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0022b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0022b8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022bc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0022c0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0022c4:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0022c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0022cc:	5000b000 	b	176(0xb0) # 1c00237c <matrix_mul_vect+0xd0>
1c0022d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d4:	0040898c 	slli.w	$r12,$r12,0x2
1c0022d8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0022dc:	001031ac 	add.w	$r12,$r13,$r12
1c0022e0:	29800180 	st.w	$r0,$r12,0
1c0022e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0022e8:	50007c00 	b	124(0x7c) # 1c002364 <matrix_mul_vect+0xb8>
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	0040898c 	slli.w	$r12,$r12,0x2
1c0022f4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0022f8:	001031ac 	add.w	$r12,$r13,$r12
1c0022fc:	2880018e 	ld.w	$r14,$r12,0
1c002300:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002304:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002308:	001c31ad 	mul.w	$r13,$r13,$r12
1c00230c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002310:	001031ac 	add.w	$r12,$r13,$r12
1c002314:	0040858c 	slli.w	$r12,$r12,0x1
1c002318:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00231c:	001031ac 	add.w	$r12,$r13,$r12
1c002320:	2840018c 	ld.h	$r12,$r12,0
1c002324:	0015018f 	move	$r15,$r12
1c002328:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00232c:	0040858c 	slli.w	$r12,$r12,0x1
1c002330:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c002334:	001031ac 	add.w	$r12,$r13,$r12
1c002338:	2840018c 	ld.h	$r12,$r12,0
1c00233c:	001c31ed 	mul.w	$r13,$r15,$r12
1c002340:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002344:	0040898c 	slli.w	$r12,$r12,0x2
1c002348:	28bf62cf 	ld.w	$r15,$r22,-40(0xfd8)
1c00234c:	001031ec 	add.w	$r12,$r15,$r12
1c002350:	001035cd 	add.w	$r13,$r14,$r13
1c002354:	2980018d 	st.w	$r13,$r12,0
1c002358:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002364:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002368:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00236c:	6bff81ac 	bltu	$r13,$r12,-128(0x3ff80) # 1c0022ec <matrix_mul_vect+0x40>
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002378:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00237c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002380:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002384:	6bff4dac 	bltu	$r13,$r12,-180(0x3ff4c) # 1c0022d0 <matrix_mul_vect+0x24>
1c002388:	03400000 	andi	$r0,$r0,0x0
1c00238c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002390:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002394:	4c000020 	jirl	$r0,$r1,0

1c002398 <matrix_mul_matrix>:
matrix_mul_matrix():
1c002398:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00239c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0023a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0023a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023a8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0023ac:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0023b0:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0023b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0023b8:	50011000 	b	272(0x110) # 1c0024c8 <matrix_mul_matrix+0x130>
1c0023bc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0023c0:	5000f000 	b	240(0xf0) # 1c0024b0 <matrix_mul_matrix+0x118>
1c0023c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0023c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0023cc:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023d4:	001031ac 	add.w	$r12,$r13,$r12
1c0023d8:	0040898c 	slli.w	$r12,$r12,0x2
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	29800180 	st.w	$r0,$r12,0
1c0023e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0023ec:	5000ac00 	b	172(0xac) # 1c002498 <matrix_mul_matrix+0x100>
1c0023f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0023f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0023f8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002400:	001031ac 	add.w	$r12,$r13,$r12
1c002404:	0040898c 	slli.w	$r12,$r12,0x2
1c002408:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00240c:	001031ac 	add.w	$r12,$r13,$r12
1c002410:	2880018e 	ld.w	$r14,$r12,0
1c002414:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002418:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00241c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002420:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002424:	001031ac 	add.w	$r12,$r13,$r12
1c002428:	0040858c 	slli.w	$r12,$r12,0x1
1c00242c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c002430:	001031ac 	add.w	$r12,$r13,$r12
1c002434:	2840018c 	ld.h	$r12,$r12,0
1c002438:	0015018f 	move	$r15,$r12
1c00243c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002440:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002444:	001c31ad 	mul.w	$r13,$r13,$r12
1c002448:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00244c:	001031ac 	add.w	$r12,$r13,$r12
1c002450:	0040858c 	slli.w	$r12,$r12,0x1
1c002454:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c002458:	001031ac 	add.w	$r12,$r13,$r12
1c00245c:	2840018c 	ld.h	$r12,$r12,0
1c002460:	001c31ed 	mul.w	$r13,$r15,$r12
1c002464:	28bfb2cf 	ld.w	$r15,$r22,-20(0xfec)
1c002468:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00246c:	001c31ef 	mul.w	$r15,$r15,$r12
1c002470:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002474:	001031ec 	add.w	$r12,$r15,$r12
1c002478:	0040898c 	slli.w	$r12,$r12,0x2
1c00247c:	28bf62cf 	ld.w	$r15,$r22,-40(0xfd8)
1c002480:	001031ec 	add.w	$r12,$r15,$r12
1c002484:	001035cd 	add.w	$r13,$r14,$r13
1c002488:	2980018d 	st.w	$r13,$r12,0
1c00248c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002490:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002494:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002498:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00249c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024a0:	6bff51ac 	bltu	$r13,$r12,-176(0x3ff50) # 1c0023f0 <matrix_mul_matrix+0x58>
1c0024a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0024b0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0024b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024b8:	6bff0dac 	bltu	$r13,$r12,-244(0x3ff0c) # 1c0023c4 <matrix_mul_matrix+0x2c>
1c0024bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0024cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024d0:	6bfeedac 	bltu	$r13,$r12,-276(0x3feec) # 1c0023bc <matrix_mul_matrix+0x24>
1c0024d4:	03400000 	andi	$r0,$r0,0x0
1c0024d8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0024dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0024e0:	4c000020 	jirl	$r0,$r1,0

1c0024e4 <matrix_mul_matrix_bitextract>:
matrix_mul_matrix_bitextract():
1c0024e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0024e8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0024ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0024f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024f4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0024f8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0024fc:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c002500:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002504:	50013800 	b	312(0x138) # 1c00263c <matrix_mul_matrix_bitextract+0x158>
1c002508:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00250c:	50011800 	b	280(0x118) # 1c002624 <matrix_mul_matrix_bitextract+0x140>
1c002510:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002514:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002518:	001c31ad 	mul.w	$r13,$r13,$r12
1c00251c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002520:	001031ac 	add.w	$r12,$r13,$r12
1c002524:	0040898c 	slli.w	$r12,$r12,0x2
1c002528:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00252c:	001031ac 	add.w	$r12,$r13,$r12
1c002530:	29800180 	st.w	$r0,$r12,0
1c002534:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002538:	5000d400 	b	212(0xd4) # 1c00260c <matrix_mul_matrix_bitextract+0x128>
1c00253c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002540:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002544:	001c31ad 	mul.w	$r13,$r13,$r12
1c002548:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00254c:	001031ac 	add.w	$r12,$r13,$r12
1c002550:	0040858c 	slli.w	$r12,$r12,0x1
1c002554:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c002558:	001031ac 	add.w	$r12,$r13,$r12
1c00255c:	2840018c 	ld.h	$r12,$r12,0
1c002560:	0015018e 	move	$r14,$r12
1c002564:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002568:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00256c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002570:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002574:	001031ac 	add.w	$r12,$r13,$r12
1c002578:	0040858c 	slli.w	$r12,$r12,0x1
1c00257c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c002580:	001031ac 	add.w	$r12,$r13,$r12
1c002584:	2840018c 	ld.h	$r12,$r12,0
1c002588:	001c31cc 	mul.w	$r12,$r14,$r12
1c00258c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002590:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002594:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002598:	001c31ad 	mul.w	$r13,$r13,$r12
1c00259c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a0:	001031ac 	add.w	$r12,$r13,$r12
1c0025a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0025a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0025ac:	001031ac 	add.w	$r12,$r13,$r12
1c0025b0:	2880018c 	ld.w	$r12,$r12,0
1c0025b4:	0015018e 	move	$r14,$r12
1c0025b8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0025bc:	0048898c 	srai.w	$r12,$r12,0x2
1c0025c0:	03403d8d 	andi	$r13,$r12,0xf
1c0025c4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0025c8:	0048958c 	srai.w	$r12,$r12,0x5
1c0025cc:	0341fd8c 	andi	$r12,$r12,0x7f
1c0025d0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025d4:	001031ce 	add.w	$r14,$r14,$r12
1c0025d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0025dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025e8:	001031ac 	add.w	$r12,$r13,$r12
1c0025ec:	0040898c 	slli.w	$r12,$r12,0x2
1c0025f0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0025f4:	001031ac 	add.w	$r12,$r13,$r12
1c0025f8:	001501cd 	move	$r13,$r14
1c0025fc:	2980018d 	st.w	$r13,$r12,0
1c002600:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002604:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002608:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00260c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002614:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c00253c <matrix_mul_matrix_bitextract+0x58>
1c002618:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00261c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002620:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002624:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002628:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00262c:	6bfee5ac 	bltu	$r13,$r12,-284(0x3fee4) # 1c002510 <matrix_mul_matrix_bitextract+0x2c>
1c002630:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002634:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002638:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00263c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c002508 <matrix_mul_matrix_bitextract+0x24>
1c002648:	03400000 	andi	$r0,$r0,0x0
1c00264c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002650:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002654:	4c000020 	jirl	$r0,$r1,0

1c002658 <uptime_ms>:
uptime_ms():
1c002658:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00265c:	29803076 	st.w	$r22,$r3,12(0xc)
1c002660:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002664:	0015000c 	move	$r12,$r0
1c002668:	00150184 	move	$r4,$r12
1c00266c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002670:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002674:	4c000020 	jirl	$r0,$r1,0

1c002678 <start_time>:
start_time():
1c002678:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00267c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002680:	29802076 	st.w	$r22,$r3,8(0x8)
1c002684:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002688:	57ffd3ff 	bl	-48(0xfffffd0) # 1c002658 <uptime_ms>
1c00268c:	0015008d 	move	$r13,$r4
1c002690:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c002694:	28be318c 	ld.w	$r12,$r12,-116(0xf8c)
1c002698:	2980018d 	st.w	$r13,$r12,0
1c00269c:	03400000 	andi	$r0,$r0,0x0
1c0026a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0026a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026ac:	4c000020 	jirl	$r0,$r1,0

1c0026b0 <stop_time>:
stop_time():
1c0026b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0026b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0026b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0026bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0026c0:	57ff9bff 	bl	-104(0xfffff98) # 1c002658 <uptime_ms>
1c0026c4:	0015008d 	move	$r13,$r4
1c0026c8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0026cc:	28bd918c 	ld.w	$r12,$r12,-156(0xf64)
1c0026d0:	2980018d 	st.w	$r13,$r12,0
1c0026d4:	03400000 	andi	$r0,$r0,0x0
1c0026d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0026e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026e4:	4c000020 	jirl	$r0,$r1,0

1c0026e8 <get_time>:
get_time():
1c0026e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0026ec:	29803076 	st.w	$r22,$r3,12(0xc)
1c0026f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0026f4:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0026f8:	28bce18c 	ld.w	$r12,$r12,-200(0xf38)
1c0026fc:	2880018d 	ld.w	$r13,$r12,0
1c002700:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c002704:	28bc718c 	ld.w	$r12,$r12,-228(0xf1c)
1c002708:	2880018c 	ld.w	$r12,$r12,0
1c00270c:	001131ac 	sub.w	$r12,$r13,$r12
1c002710:	00150184 	move	$r4,$r12
1c002714:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002718:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00271c:	4c000020 	jirl	$r0,$r1,0

1c002720 <time_in_secs>:
time_in_secs():
1c002720:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002724:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002728:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00272c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002730:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002734:	00150184 	move	$r4,$r12
1c002738:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00273c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002740:	4c000020 	jirl	$r0,$r1,0

1c002744 <portable_init>:
portable_init():
1c002744:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002748:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00274c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002750:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002754:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002758:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c00275c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002760:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002764:	2900018d 	st.b	$r13,$r12,0
1c002768:	03400000 	andi	$r0,$r0,0x0
1c00276c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002770:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002774:	4c000020 	jirl	$r0,$r1,0

1c002778 <portable_fini>:
portable_fini():
1c002778:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00277c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002780:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002784:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002788:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00278c:	29000180 	st.b	$r0,$r12,0
1c002790:	03400000 	andi	$r0,$r0,0x0
1c002794:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002798:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00279c:	4c000020 	jirl	$r0,$r1,0

1c0027a0 <core_bench_state>:
core_bench_state():
1c0027a0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c0027a4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c0027a8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c0027ac:	02820076 	addi.w	$r22,$r3,128(0x80)
1c0027b0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0027b4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0027b8:	001500cc 	move	$r12,$r6
1c0027bc:	001500ef 	move	$r15,$r7
1c0027c0:	0015010e 	move	$r14,$r8
1c0027c4:	0015012d 	move	$r13,$r9
1c0027c8:	297e5acc 	st.h	$r12,$r22,-106(0xf96)
1c0027cc:	001501ec 	move	$r12,$r15
1c0027d0:	297e52cc 	st.h	$r12,$r22,-108(0xf94)
1c0027d4:	001501cc 	move	$r12,$r14
1c0027d8:	297e4acc 	st.h	$r12,$r22,-110(0xf92)
1c0027dc:	001501ac 	move	$r12,$r13
1c0027e0:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c0027e4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0027e8:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c0027ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0027f0:	50004c00 	b	76(0x4c) # 1c00283c <core_bench_state+0x9c>
1c0027f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027f8:	0040898c 	slli.w	$r12,$r12,0x2
1c0027fc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002800:	001031ac 	add.w	$r12,$r13,$r12
1c002804:	29bed180 	st.w	$r0,$r12,-76(0xfb4)
1c002808:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00280c:	0040898c 	slli.w	$r12,$r12,0x2
1c002810:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002814:	001031ac 	add.w	$r12,$r13,$r12
1c002818:	28bed18d 	ld.w	$r13,$r12,-76(0xfb4)
1c00281c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002820:	0040898c 	slli.w	$r12,$r12,0x2
1c002824:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002828:	001031cc 	add.w	$r12,$r14,$r12
1c00282c:	29bf518d 	st.w	$r13,$r12,-44(0xfd4)
1c002830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002834:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002838:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00283c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002840:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002844:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0027f4 <core_bench_state+0x54>
1c002848:	50004800 	b	72(0x48) # 1c002890 <core_bench_state+0xf0>
1c00284c:	02be92cd 	addi.w	$r13,$r22,-92(0xfa4)
1c002850:	02be82cc 	addi.w	$r12,$r22,-96(0xfa0)
1c002854:	001501a5 	move	$r5,$r13
1c002858:	00150184 	move	$r4,$r12
1c00285c:	5404f400 	bl	1268(0x4f4) # 1c002d50 <core_state_transition>
1c002860:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002864:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002868:	0040898c 	slli.w	$r12,$r12,0x2
1c00286c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002870:	001031ac 	add.w	$r12,$r13,$r12
1c002874:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c002878:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00287c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002880:	0040898c 	slli.w	$r12,$r12,0x2
1c002884:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002888:	001031cc 	add.w	$r12,$r14,$r12
1c00288c:	29bf518d 	st.w	$r13,$r12,-44(0xfd4)
1c002890:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c002894:	2a00018c 	ld.bu	$r12,$r12,0
1c002898:	5fffb580 	bne	$r12,$r0,-76(0x3ffb4) # 1c00284c <core_bench_state+0xac>
1c00289c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0028a0:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c0028a4:	50005c00 	b	92(0x5c) # 1c002900 <core_bench_state+0x160>
1c0028a8:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0028ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0028b0:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c0028b4:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c0028f0 <core_bench_state+0x150>
1c0028b8:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0028bc:	2a00018e 	ld.bu	$r14,$r12,0
1c0028c0:	2a7e5acc 	ld.hu	$r12,$r22,-106(0xf96)
1c0028c4:	297e32cc 	st.h	$r12,$r22,-116(0xf8c)
1c0028c8:	2a7e32cc 	ld.hu	$r12,$r22,-116(0xf8c)
1c0028cc:	293e2ecc 	st.b	$r12,$r22,-117(0xf8b)
1c0028d0:	2a3e2ecd 	ld.bu	$r13,$r22,-117(0xf8b)
1c0028d4:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0028d8:	0015b5cd 	xor	$r13,$r14,$r13
1c0028dc:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c0028e0:	28be32cd 	ld.w	$r13,$r22,-116(0xf8c)
1c0028e4:	293e2ecd 	st.b	$r13,$r22,-117(0xf8b)
1c0028e8:	2a3e2ecd 	ld.bu	$r13,$r22,-117(0xf8b)
1c0028ec:	2900018d 	st.b	$r13,$r12,0
1c0028f0:	28be82cd 	ld.w	$r13,$r22,-96(0xfa0)
1c0028f4:	287e4acc 	ld.h	$r12,$r22,-110(0xf92)
1c0028f8:	001031ac 	add.w	$r12,$r13,$r12
1c0028fc:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c002900:	28be62cd 	ld.w	$r13,$r22,-104(0xf98)
1c002904:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002908:	001031ad 	add.w	$r13,$r13,$r12
1c00290c:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c002910:	6bff998d 	bltu	$r12,$r13,-104(0x3ff98) # 1c0028a8 <core_bench_state+0x108>
1c002914:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002918:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c00291c:	50004800 	b	72(0x48) # 1c002964 <core_bench_state+0x1c4>
1c002920:	02be92cd 	addi.w	$r13,$r22,-92(0xfa4)
1c002924:	02be82cc 	addi.w	$r12,$r22,-96(0xfa0)
1c002928:	001501a5 	move	$r5,$r13
1c00292c:	00150184 	move	$r4,$r12
1c002930:	54042000 	bl	1056(0x420) # 1c002d50 <core_state_transition>
1c002934:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c002938:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00293c:	0040898c 	slli.w	$r12,$r12,0x2
1c002940:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002944:	001031ac 	add.w	$r12,$r13,$r12
1c002948:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c00294c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002950:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002954:	0040898c 	slli.w	$r12,$r12,0x2
1c002958:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00295c:	001031cc 	add.w	$r12,$r14,$r12
1c002960:	29bf518d 	st.w	$r13,$r12,-44(0xfd4)
1c002964:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c002968:	2a00018c 	ld.bu	$r12,$r12,0
1c00296c:	5fffb580 	bne	$r12,$r0,-76(0x3ffb4) # 1c002920 <core_bench_state+0x180>
1c002970:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002974:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c002978:	50005c00 	b	92(0x5c) # 1c0029d4 <core_bench_state+0x234>
1c00297c:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c002980:	2a00018d 	ld.bu	$r13,$r12,0
1c002984:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c002988:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c0029c4 <core_bench_state+0x224>
1c00298c:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c002990:	2a00018e 	ld.bu	$r14,$r12,0
1c002994:	2a7e52cc 	ld.hu	$r12,$r22,-108(0xf94)
1c002998:	297e32cc 	st.h	$r12,$r22,-116(0xf8c)
1c00299c:	2a7e32cc 	ld.hu	$r12,$r22,-116(0xf8c)
1c0029a0:	293e2ecc 	st.b	$r12,$r22,-117(0xf8b)
1c0029a4:	2a3e2ecd 	ld.bu	$r13,$r22,-117(0xf8b)
1c0029a8:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0029ac:	0015b5cd 	xor	$r13,$r14,$r13
1c0029b0:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c0029b4:	28be32cd 	ld.w	$r13,$r22,-116(0xf8c)
1c0029b8:	293e2ecd 	st.b	$r13,$r22,-117(0xf8b)
1c0029bc:	2a3e2ecd 	ld.bu	$r13,$r22,-117(0xf8b)
1c0029c0:	2900018d 	st.b	$r13,$r12,0
1c0029c4:	28be82cd 	ld.w	$r13,$r22,-96(0xfa0)
1c0029c8:	287e4acc 	ld.h	$r12,$r22,-110(0xf92)
1c0029cc:	001031ac 	add.w	$r12,$r13,$r12
1c0029d0:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c0029d4:	28be62cd 	ld.w	$r13,$r22,-104(0xf98)
1c0029d8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0029dc:	001031ad 	add.w	$r13,$r13,$r12
1c0029e0:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0029e4:	6bff998d 	bltu	$r12,$r13,-104(0x3ff98) # 1c00297c <core_bench_state+0x1dc>
1c0029e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0029ec:	50006800 	b	104(0x68) # 1c002a54 <core_bench_state+0x2b4>
1c0029f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0029f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0029fc:	001031ac 	add.w	$r12,$r13,$r12
1c002a00:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c002a04:	2a7e42cd 	ld.hu	$r13,$r22,-112(0xf90)
1c002a08:	001501a5 	move	$r5,$r13
1c002a0c:	00150184 	move	$r4,$r12
1c002a10:	54095800 	bl	2392(0x958) # 1c003368 <crcu32>
1c002a14:	0015008c 	move	$r12,$r4
1c002a18:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c002a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a20:	0040898c 	slli.w	$r12,$r12,0x2
1c002a24:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002a28:	001031ac 	add.w	$r12,$r13,$r12
1c002a2c:	28bed18c 	ld.w	$r12,$r12,-76(0xfb4)
1c002a30:	2a7e42cd 	ld.hu	$r13,$r22,-112(0xf90)
1c002a34:	001501a5 	move	$r5,$r13
1c002a38:	00150184 	move	$r4,$r12
1c002a3c:	54092c00 	bl	2348(0x92c) # 1c003368 <crcu32>
1c002a40:	0015008c 	move	$r12,$r4
1c002a44:	297e42cc 	st.h	$r12,$r22,-112(0xf90)
1c002a48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002a58:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002a5c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0029f0 <core_bench_state+0x250>
1c002a60:	2a7e42cc 	ld.hu	$r12,$r22,-112(0xf90)
1c002a64:	00150184 	move	$r4,$r12
1c002a68:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002a6c:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002a70:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002a74:	4c000020 	jirl	$r0,$r1,0

1c002a78 <core_init_state>:
core_init_state():
1c002a78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a7c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a88:	001500ac 	move	$r12,$r5
1c002a8c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002a90:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002a94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a98:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a9c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002aa0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002aa8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002aac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ab0:	5001dc00 	b	476(0x1dc) # 1c002c8c <core_init_state+0x214>
1c002ab4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ab8:	58007d80 	beq	$r12,$r0,124(0x7c) # 1c002b34 <core_init_state+0xbc>
1c002abc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ac0:	50003800 	b	56(0x38) # 1c002af8 <core_init_state+0x80>
1c002ac4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c002ac8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002acc:	001031ad 	add.w	$r13,$r13,$r12
1c002ad0:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002ad4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002ad8:	001031cc 	add.w	$r12,$r14,$r12
1c002adc:	28bf52ce 	ld.w	$r14,$r22,-44(0xfd4)
1c002ae0:	001031cc 	add.w	$r12,$r14,$r12
1c002ae4:	2a0001ad 	ld.bu	$r13,$r13,0
1c002ae8:	2900018d 	st.b	$r13,$r12,0
1c002aec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002af0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002af4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002af8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002afc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b00:	6bffc5ac 	bltu	$r13,$r12,-60(0x3ffc4) # 1c002ac4 <core_init_state+0x4c>
1c002b04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002b08:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002b0c:	001031ac 	add.w	$r12,$r13,$r12
1c002b10:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c002b14:	001031ac 	add.w	$r12,$r13,$r12
1c002b18:	0280b00d 	addi.w	$r13,$r0,44(0x2c)
1c002b1c:	2900018d 	st.b	$r13,$r12,0
1c002b20:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b28:	001031ac 	add.w	$r12,$r13,$r12
1c002b2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b34:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002b38:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002b3c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002b40:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002b44:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c002b48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b4c:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002b50:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002b54:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002b58:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c002b5c:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002b60:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002b64:	03401d8c 	andi	$r12,$r12,0x7
1c002b68:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c002b6c:	68011dac 	bltu	$r13,$r12,284(0x11c) # 1c002c88 <core_init_state+0x210>
1c002b70:	0040898d 	slli.w	$r13,$r12,0x2
1c002b74:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c002b78:	02a7018c 	addi.w	$r12,$r12,-1600(0x9c0)
1c002b7c:	001031ac 	add.w	$r12,$r13,$r12
1c002b80:	2880018c 	ld.w	$r12,$r12,0
1c002b84:	4c000180 	jirl	$r0,$r12,0
1c002b88:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002b8c:	00488d8c 	srai.w	$r12,$r12,0x3
1c002b90:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002b94:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002b98:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002b9c:	287f62cc 	ld.h	$r12,$r22,-40(0xfd8)
1c002ba0:	03400d8c 	andi	$r12,$r12,0x3
1c002ba4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c002ba8:	02a8b1ad 	addi.w	$r13,$r13,-1492(0xa2c)
1c002bac:	0040898c 	slli.w	$r12,$r12,0x2
1c002bb0:	001031ac 	add.w	$r12,$r13,$r12
1c002bb4:	2880018c 	ld.w	$r12,$r12,0
1c002bb8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bbc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002bc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002bc4:	5000c800 	b	200(0xc8) # 1c002c8c <core_init_state+0x214>
1c002bc8:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002bcc:	00488d8c 	srai.w	$r12,$r12,0x3
1c002bd0:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002bd4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002bd8:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002bdc:	287f62cc 	ld.h	$r12,$r22,-40(0xfd8)
1c002be0:	03400d8c 	andi	$r12,$r12,0x3
1c002be4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c002be8:	02a7f1ad 	addi.w	$r13,$r13,-1540(0x9fc)
1c002bec:	0040898c 	slli.w	$r12,$r12,0x2
1c002bf0:	001031ac 	add.w	$r12,$r13,$r12
1c002bf4:	2880018c 	ld.w	$r12,$r12,0
1c002bf8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bfc:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002c00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c04:	50008800 	b	136(0x88) # 1c002c8c <core_init_state+0x214>
1c002c08:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002c0c:	00488d8c 	srai.w	$r12,$r12,0x3
1c002c10:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002c14:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002c18:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002c1c:	287f62cc 	ld.h	$r12,$r22,-40(0xfd8)
1c002c20:	03400d8c 	andi	$r12,$r12,0x3
1c002c24:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c002c28:	02a731ad 	addi.w	$r13,$r13,-1588(0x9cc)
1c002c2c:	0040898c 	slli.w	$r12,$r12,0x2
1c002c30:	001031ac 	add.w	$r12,$r13,$r12
1c002c34:	2880018c 	ld.w	$r12,$r12,0
1c002c38:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002c3c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002c40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c44:	50004800 	b	72(0x48) # 1c002c8c <core_init_state+0x214>
1c002c48:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c002c4c:	00488d8c 	srai.w	$r12,$r12,0x3
1c002c50:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002c54:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c002c58:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c002c5c:	287f62cc 	ld.h	$r12,$r22,-40(0xfd8)
1c002c60:	03400d8c 	andi	$r12,$r12,0x3
1c002c64:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c002c68:	02a671ad 	addi.w	$r13,$r13,-1636(0x99c)
1c002c6c:	0040898c 	slli.w	$r12,$r12,0x2
1c002c70:	001031ac 	add.w	$r12,$r13,$r12
1c002c74:	2880018c 	ld.w	$r12,$r12,0
1c002c78:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002c7c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002c80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c84:	50000800 	b	8(0x8) # 1c002c8c <core_init_state+0x214>
1c002c88:	03400000 	andi	$r0,$r0,0x0
1c002c8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c94:	001031ac 	add.w	$r12,$r13,$r12
1c002c98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002c9c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ca0:	6bfe158d 	bltu	$r12,$r13,-492(0x3fe14) # 1c002ab4 <core_init_state+0x3c>
1c002ca4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ca8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002cac:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002cb0:	50002000 	b	32(0x20) # 1c002cd0 <core_init_state+0x258>
1c002cb4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c002cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cbc:	001031ac 	add.w	$r12,$r13,$r12
1c002cc0:	29000180 	st.b	$r0,$r12,0
1c002cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002cd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cd8:	6bffddac 	bltu	$r13,$r12,-36(0x3ffdc) # 1c002cb4 <core_init_state+0x23c>
1c002cdc:	03400000 	andi	$r0,$r0,0x0
1c002ce0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002ce4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ce8:	4c000020 	jirl	$r0,$r1,0

1c002cec <ee_isdigit>:
ee_isdigit():
1c002cec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cf0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002cf4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cf8:	0015008c 	move	$r12,$r4
1c002cfc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d00:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d04:	0240c18c 	sltui	$r12,$r12,48(0x30)
1c002d08:	03c0058c 	xori	$r12,$r12,0x1
1c002d0c:	293f62cc 	st.b	$r12,$r22,-40(0xfd8)
1c002d10:	2a3f62cd 	ld.bu	$r13,$r22,-40(0xfd8)
1c002d14:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d18:	0240e98c 	sltui	$r12,$r12,58(0x3a)
1c002d1c:	293f62cc 	st.b	$r12,$r22,-40(0xfd8)
1c002d20:	2a3f62cc 	ld.bu	$r12,$r22,-40(0xfd8)
1c002d24:	0014b1ac 	and	$r12,$r13,$r12
1c002d28:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002d2c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002d30:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002d34:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c002d38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002d3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002d40:	00150184 	move	$r4,$r12
1c002d44:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002d48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d4c:	4c000020 	jirl	$r0,$r1,0

1c002d50 <core_state_transition>:
core_state_transition():
1c002d50:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d54:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d58:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d64:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002d68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d6c:	2880018c 	ld.w	$r12,$r12,0
1c002d70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d74:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002d78:	50033800 	b	824(0x338) # 1c0030b0 <core_state_transition+0x360>
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	2a00018c 	ld.bu	$r12,$r12,0
1c002d84:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c002d88:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002d8c:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c002d90:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002da4 <core_state_transition+0x54>
1c002d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002da0:	50032800 	b	808(0x328) # 1c0030c8 <core_state_transition+0x378>
1c002da4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002da8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002dac:	6802dd8d 	bltu	$r12,$r13,732(0x2dc) # 1c003088 <core_state_transition+0x338>
1c002db0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002db4:	0040898d 	slli.w	$r13,$r12,0x2
1c002db8:	1c00000c 	pcaddu12i	$r12,0
1c002dbc:	029e718c 	addi.w	$r12,$r12,1948(0x79c)
1c002dc0:	001031ac 	add.w	$r12,$r13,$r12
1c002dc4:	2880018c 	ld.w	$r12,$r12,0
1c002dc8:	4c000180 	jirl	$r0,$r12,0
1c002dcc:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002dd0:	00150184 	move	$r4,$r12
1c002dd4:	57ff1bff 	bl	-232(0xfffff18) # 1c002cec <ee_isdigit>
1c002dd8:	0015008c 	move	$r12,$r4
1c002ddc:	58001180 	beq	$r12,$r0,16(0x10) # 1c002dec <core_state_transition+0x9c>
1c002de0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002de4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002de8:	50005c00 	b	92(0x5c) # 1c002e44 <core_state_transition+0xf4>
1c002dec:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002df0:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
1c002df4:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002e04 <core_state_transition+0xb4>
1c002df8:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002dfc:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
1c002e00:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e10 <core_state_transition+0xc0>
1c002e04:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002e08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e0c:	50003800 	b	56(0x38) # 1c002e44 <core_state_transition+0xf4>
1c002e10:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002e14:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c002e18:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e28 <core_state_transition+0xd8>
1c002e1c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002e20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e24:	50002000 	b	32(0x20) # 1c002e44 <core_state_transition+0xf4>
1c002e28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e2c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e34:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e38:	2880018d 	ld.w	$r13,$r12,0
1c002e3c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e40:	2980018d 	st.w	$r13,$r12,0
1c002e44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e48:	2880018c 	ld.w	$r12,$r12,0
1c002e4c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002e50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e54:	2980018d 	st.w	$r13,$r12,0
1c002e58:	50024c00 	b	588(0x24c) # 1c0030a4 <core_state_transition+0x354>
1c002e5c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002e60:	00150184 	move	$r4,$r12
1c002e64:	57fe8bff 	bl	-376(0xffffe88) # 1c002cec <ee_isdigit>
1c002e68:	0015008c 	move	$r12,$r4
1c002e6c:	58002580 	beq	$r12,$r0,36(0x24) # 1c002e90 <core_state_transition+0x140>
1c002e70:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002e74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e78:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e7c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002e80:	2880018d 	ld.w	$r13,$r12,0
1c002e84:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002e88:	2980018d 	st.w	$r13,$r12,0
1c002e8c:	50021800 	b	536(0x218) # 1c0030a4 <core_state_transition+0x354>
1c002e90:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002e94:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c002e98:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c002ebc <core_state_transition+0x16c>
1c002e9c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002ea0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ea4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ea8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002eac:	2880018d 	ld.w	$r13,$r12,0
1c002eb0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002eb4:	2980018d 	st.w	$r13,$r12,0
1c002eb8:	5001ec00 	b	492(0x1ec) # 1c0030a4 <core_state_transition+0x354>
1c002ebc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ec0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ec4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ec8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002ecc:	2880018d 	ld.w	$r13,$r12,0
1c002ed0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ed4:	2980018d 	st.w	$r13,$r12,0
1c002ed8:	5001cc00 	b	460(0x1cc) # 1c0030a4 <core_state_transition+0x354>
1c002edc:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002ee0:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c002ee4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c002f08 <core_state_transition+0x1b8>
1c002ee8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002eec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ef0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ef4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c002ef8:	2880018d 	ld.w	$r13,$r12,0
1c002efc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002f00:	2980018d 	st.w	$r13,$r12,0
1c002f04:	50018c00 	b	396(0x18c) # 1c003090 <core_state_transition+0x340>
1c002f08:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002f0c:	00150184 	move	$r4,$r12
1c002f10:	57fddfff 	bl	-548(0xffffddc) # 1c002cec <ee_isdigit>
1c002f14:	0015008c 	move	$r12,$r4
1c002f18:	5c017980 	bne	$r12,$r0,376(0x178) # 1c003090 <core_state_transition+0x340>
1c002f1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002f28:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c002f2c:	2880018d 	ld.w	$r13,$r12,0
1c002f30:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002f34:	2980018d 	st.w	$r13,$r12,0
1c002f38:	50015800 	b	344(0x158) # 1c003090 <core_state_transition+0x340>
1c002f3c:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002f40:	0281140c 	addi.w	$r12,$r0,69(0x45)
1c002f44:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002f54 <core_state_transition+0x204>
1c002f48:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002f4c:	0281940c 	addi.w	$r12,$r0,101(0x65)
1c002f50:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c002f74 <core_state_transition+0x224>
1c002f54:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f5c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002f60:	0280518c 	addi.w	$r12,$r12,20(0x14)
1c002f64:	2880018d 	ld.w	$r13,$r12,0
1c002f68:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002f6c:	2980018d 	st.w	$r13,$r12,0
1c002f70:	50012800 	b	296(0x128) # 1c003098 <core_state_transition+0x348>
1c002f74:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002f78:	00150184 	move	$r4,$r12
1c002f7c:	57fd73ff 	bl	-656(0xffffd70) # 1c002cec <ee_isdigit>
1c002f80:	0015008c 	move	$r12,$r4
1c002f84:	5c011580 	bne	$r12,$r0,276(0x114) # 1c003098 <core_state_transition+0x348>
1c002f88:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f90:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002f94:	0280518c 	addi.w	$r12,$r12,20(0x14)
1c002f98:	2880018d 	ld.w	$r13,$r12,0
1c002f9c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002fa0:	2980018d 	st.w	$r13,$r12,0
1c002fa4:	5000f400 	b	244(0xf4) # 1c003098 <core_state_transition+0x348>
1c002fa8:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002fac:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
1c002fb0:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002fc0 <core_state_transition+0x270>
1c002fb4:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c002fb8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
1c002fbc:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c002fe0 <core_state_transition+0x290>
1c002fc0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c002fc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002fcc:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002fd0:	2880018d 	ld.w	$r13,$r12,0
1c002fd4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002fd8:	2980018d 	st.w	$r13,$r12,0
1c002fdc:	5000c800 	b	200(0xc8) # 1c0030a4 <core_state_transition+0x354>
1c002fe0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fe4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fe8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002fec:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002ff0:	2880018d 	ld.w	$r13,$r12,0
1c002ff4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	5000a800 	b	168(0xa8) # 1c0030a4 <core_state_transition+0x354>
1c003000:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c003004:	00150184 	move	$r4,$r12
1c003008:	57fce7ff 	bl	-796(0xffffce4) # 1c002cec <ee_isdigit>
1c00300c:	0015008c 	move	$r12,$r4
1c003010:	58002580 	beq	$r12,$r0,36(0x24) # 1c003034 <core_state_transition+0x2e4>
1c003014:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c003018:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00301c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003020:	0280618c 	addi.w	$r12,$r12,24(0x18)
1c003024:	2880018d 	ld.w	$r13,$r12,0
1c003028:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00302c:	2980018d 	st.w	$r13,$r12,0
1c003030:	50007400 	b	116(0x74) # 1c0030a4 <core_state_transition+0x354>
1c003034:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003038:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00303c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003040:	0280618c 	addi.w	$r12,$r12,24(0x18)
1c003044:	2880018d 	ld.w	$r13,$r12,0
1c003048:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00304c:	2980018d 	st.w	$r13,$r12,0
1c003050:	50005400 	b	84(0x54) # 1c0030a4 <core_state_transition+0x354>
1c003054:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c003058:	00150184 	move	$r4,$r12
1c00305c:	57fc93ff 	bl	-880(0xffffc90) # 1c002cec <ee_isdigit>
1c003060:	0015008c 	move	$r12,$r4
1c003064:	5c003d80 	bne	$r12,$r0,60(0x3c) # 1c0030a0 <core_state_transition+0x350>
1c003068:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00306c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003070:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003074:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003078:	2880018d 	ld.w	$r13,$r12,0
1c00307c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003080:	2980018d 	st.w	$r13,$r12,0
1c003084:	50001c00 	b	28(0x1c) # 1c0030a0 <core_state_transition+0x350>
1c003088:	03400000 	andi	$r0,$r0,0x0
1c00308c:	50001800 	b	24(0x18) # 1c0030a4 <core_state_transition+0x354>
1c003090:	03400000 	andi	$r0,$r0,0x0
1c003094:	50001000 	b	16(0x10) # 1c0030a4 <core_state_transition+0x354>
1c003098:	03400000 	andi	$r0,$r0,0x0
1c00309c:	50000800 	b	8(0x8) # 1c0030a4 <core_state_transition+0x354>
1c0030a0:	03400000 	andi	$r0,$r0,0x0
1c0030a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0030b8:	58001180 	beq	$r12,$r0,16(0x10) # 1c0030c8 <core_state_transition+0x378>
1c0030bc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0030c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030c4:	5ffcb9ac 	bne	$r13,$r12,-840(0x3fcb8) # 1c002d7c <core_state_transition+0x2c>
1c0030c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0030d0:	2980018d 	st.w	$r13,$r12,0
1c0030d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030d8:	00150184 	move	$r4,$r12
1c0030dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030e8:	4c000020 	jirl	$r0,$r1,0

1c0030ec <get_seed_32>:
get_seed_32():
1c0030ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0030f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0030fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003100:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003104:	6800858d 	bltu	$r12,$r13,132(0x84) # 1c003188 <get_seed_32+0x9c>
1c003108:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00310c:	0040898d 	slli.w	$r13,$r12,0x2
1c003110:	1c00000c 	pcaddu12i	$r12,0
1c003114:	0291918c 	addi.w	$r12,$r12,1124(0x464)
1c003118:	001031ac 	add.w	$r12,$r13,$r12
1c00311c:	2880018c 	ld.w	$r12,$r12,0
1c003120:	4c000180 	jirl	$r0,$r12,0
1c003124:	1c00000c 	pcaddu12i	$r12,0
1c003128:	2893c18c 	ld.w	$r12,$r12,1264(0x4f0)
1c00312c:	2880018c 	ld.w	$r12,$r12,0
1c003130:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003134:	50005c00 	b	92(0x5c) # 1c003190 <get_seed_32+0xa4>
1c003138:	1c00000c 	pcaddu12i	$r12,0
1c00313c:	2893e18c 	ld.w	$r12,$r12,1272(0x4f8)
1c003140:	2880018c 	ld.w	$r12,$r12,0
1c003144:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003148:	50004800 	b	72(0x48) # 1c003190 <get_seed_32+0xa4>
1c00314c:	1c00000c 	pcaddu12i	$r12,0
1c003150:	2893318c 	ld.w	$r12,$r12,1228(0x4cc)
1c003154:	2880018c 	ld.w	$r12,$r12,0
1c003158:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00315c:	50003400 	b	52(0x34) # 1c003190 <get_seed_32+0xa4>
1c003160:	1c00000c 	pcaddu12i	$r12,0
1c003164:	2893018c 	ld.w	$r12,$r12,1216(0x4c0)
1c003168:	2880018c 	ld.w	$r12,$r12,0
1c00316c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003170:	50002000 	b	32(0x20) # 1c003190 <get_seed_32+0xa4>
1c003174:	1c00000c 	pcaddu12i	$r12,0
1c003178:	2892c18c 	ld.w	$r12,$r12,1200(0x4b0)
1c00317c:	2880018c 	ld.w	$r12,$r12,0
1c003180:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003184:	50000c00 	b	12(0xc) # 1c003190 <get_seed_32+0xa4>
1c003188:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00318c:	03400000 	andi	$r0,$r0,0x0
1c003190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003194:	00150184 	move	$r4,$r12
1c003198:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00319c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031a0:	4c000020 	jirl	$r0,$r1,0

1c0031a4 <crcu8>:
crcu8():
1c0031a4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031a8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0031ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031b0:	0015008c 	move	$r12,$r4
1c0031b4:	001500ad 	move	$r13,$r5
1c0031b8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0031bc:	001501ac 	move	$r12,$r13
1c0031c0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0031c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0031c8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0031cc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0031d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0031d4:	5000cc00 	b	204(0xcc) # 1c0032a0 <crcu8+0xfc>
1c0031d8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0031dc:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c0031e0:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c0031e4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0031e8:	283f5ecd 	ld.b	$r13,$r22,-41(0xfd7)
1c0031ec:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c0031f0:	0015b1ac 	xor	$r12,$r13,$r12
1c0031f4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0031f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0031fc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c003200:	283f5ecc 	ld.b	$r12,$r22,-41(0xfd7)
1c003204:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003208:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00320c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c003210:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003214:	0340058c 	andi	$r12,$r12,0x1
1c003218:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00321c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003220:	0044858c 	srli.w	$r12,$r12,0x1
1c003224:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003228:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c00322c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003230:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c003254 <crcu8+0xb0>
1c003234:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c003238:	1400008c 	lu12i.w	$r12,4(0x4)
1c00323c:	0380098c 	ori	$r12,$r12,0x2
1c003240:	0015b1ac 	xor	$r12,$r13,$r12
1c003244:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c003248:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00324c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003250:	50000800 	b	8(0x8) # 1c003258 <crcu8+0xb4>
1c003254:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c003258:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00325c:	0044858c 	srli.w	$r12,$r12,0x1
1c003260:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c003264:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003268:	58001980 	beq	$r12,$r0,24(0x18) # 1c003280 <crcu8+0xdc>
1c00326c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c003270:	15ffff0c 	lu12i.w	$r12,-8(0xffff8)
1c003274:	001531ac 	or	$r12,$r13,$r12
1c003278:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00327c:	50001800 	b	24(0x18) # 1c003294 <crcu8+0xf0>
1c003280:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c003284:	140000ec 	lu12i.w	$r12,7(0x7)
1c003288:	03bffd8c 	ori	$r12,$r12,0xfff
1c00328c:	0014b1ac 	and	$r12,$r13,$r12
1c003290:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c003294:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003298:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00329c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0032a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0032a4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0032a8:	6fff318d 	bgeu	$r12,$r13,-208(0x3ff30) # 1c0031d8 <crcu8+0x34>
1c0032ac:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0032b0:	00150184 	move	$r4,$r12
1c0032b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032bc:	4c000020 	jirl	$r0,$r1,0

1c0032c0 <crcu16>:
crcu16():
1c0032c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0032c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0032cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032d0:	0015008c 	move	$r12,$r4
1c0032d4:	001500ad 	move	$r13,$r5
1c0032d8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0032dc:	001501ac 	move	$r12,$r13
1c0032e0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0032e4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0032e8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0032ec:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0032f0:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c0032f4:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c0032f8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0032fc:	001501a5 	move	$r5,$r13
1c003300:	00150184 	move	$r4,$r12
1c003304:	57fea3ff 	bl	-352(0xffffea0) # 1c0031a4 <crcu8>
1c003308:	0015008c 	move	$r12,$r4
1c00330c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003310:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003314:	0044a18c 	srli.w	$r12,$r12,0x8
1c003318:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00331c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003320:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c003324:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c003328:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00332c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003330:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c003334:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c003338:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c00333c:	001501a5 	move	$r5,$r13
1c003340:	00150184 	move	$r4,$r12
1c003344:	57fe63ff 	bl	-416(0xffffe60) # 1c0031a4 <crcu8>
1c003348:	0015008c 	move	$r12,$r4
1c00334c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003350:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003354:	00150184 	move	$r4,$r12
1c003358:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00335c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003360:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003364:	4c000020 	jirl	$r0,$r1,0

1c003368 <crcu32>:
crcu32():
1c003368:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00336c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003370:	29806076 	st.w	$r22,$r3,24(0x18)
1c003374:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003378:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00337c:	001500ac 	move	$r12,$r5
1c003380:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003388:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00338c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003390:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003394:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c003398:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c00339c:	001501a5 	move	$r5,$r13
1c0033a0:	00150184 	move	$r4,$r12
1c0033a4:	54005400 	bl	84(0x54) # 1c0033f8 <crc16>
1c0033a8:	0015008c 	move	$r12,$r4
1c0033ac:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0033b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b4:	0044c18c 	srli.w	$r12,$r12,0x10
1c0033b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0033bc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0033c0:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0033c4:	287fa2cc 	ld.h	$r12,$r22,-24(0xfe8)
1c0033c8:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c0033cc:	001501a5 	move	$r5,$r13
1c0033d0:	00150184 	move	$r4,$r12
1c0033d4:	54002400 	bl	36(0x24) # 1c0033f8 <crc16>
1c0033d8:	0015008c 	move	$r12,$r4
1c0033dc:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0033e0:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0033e4:	00150184 	move	$r4,$r12
1c0033e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033f4:	4c000020 	jirl	$r0,$r1,0

1c0033f8 <crc16>:
crc16():
1c0033f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003400:	29806076 	st.w	$r22,$r3,24(0x18)
1c003404:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003408:	0015008c 	move	$r12,$r4
1c00340c:	001500ad 	move	$r13,$r5
1c003410:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003414:	001501ac 	move	$r12,$r13
1c003418:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00341c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003420:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c003424:	001501a5 	move	$r5,$r13
1c003428:	00150184 	move	$r4,$r12
1c00342c:	57fe97ff 	bl	-364(0xffffe94) # 1c0032c0 <crcu16>
1c003430:	0015008c 	move	$r12,$r4
1c003434:	00150184 	move	$r4,$r12
1c003438:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00343c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003440:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003444:	4c000020 	jirl	$r0,$r1,0

1c003448 <check_data_types>:
check_data_types():
1c003448:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00344c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003450:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003454:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003458:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00345c:	00150184 	move	$r4,$r12
1c003460:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003464:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003468:	4c000020 	jirl	$r0,$r1,0
1c00346c:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
1c003470:	00006369 	rdtimel.w	$r9,$r27
1c003474:	70616548 	vabsd.w	$vr8,$vr10,$vr25
1c003478:	00000000 	0x00000000
1c00347c:	63617453 	blt	$r2,$r19,-40588(0x36174) # 1bff95f0 <main-0x6a10>
1c003480:	0000006b 	0x0000006b
1c003484:	32313035 	0x32313035
1c003488:	00000000 	0x00000000
1c00348c:	34333231 	0x34333231
1c003490:	00000000 	0x00000000
1c003494:	3437382d 	0x3437382d
1c003498:	00000000 	0x00000000
1c00349c:	3232312b 	0x3232312b
1c0034a0:	00000000 	0x00000000
1c0034a4:	352e3533 	0x352e3533
1c0034a8:	30303434 	0x30303434
1c0034ac:	00000000 	0x00000000
1c0034b0:	3332312e 	xvstelm.w	$xr14,$r9,-464(0x230),0x4
1c0034b4:	30303534 	0x30303534
1c0034b8:	00000000 	0x00000000
1c0034bc:	3031312d 	0x3031312d
1c0034c0:	3030372e 	0x3030372e
1c0034c4:	00000000 	0x00000000
1c0034c8:	362e302b 	0x362e302b
1c0034cc:	30303434 	0x30303434
1c0034d0:	00000000 	0x00000000
1c0034d4:	30352e35 	0x30352e35
1c0034d8:	332b6530 	xvstelm.w	$xr16,$r9,-156(0x364),0x2
1c0034dc:	00000000 	0x00000000
1c0034e0:	32312e2d 	0x32312e2d
1c0034e4:	322d6533 	xvldrepl.w	$xr19,$r9,-668(0xd64)
1c0034e8:	00000000 	0x00000000
1c0034ec:	6537382d 	bge	$r1,$r13,79672(0x13738) # 1c016c24 <stop_time_val+0x135e0>
1c0034f0:	3233382b 	0x3233382b
1c0034f4:	00000000 	0x00000000
1c0034f8:	362e302b 	0x362e302b
1c0034fc:	32312d65 	0x32312d65
1c003500:	00000000 	0x00000000
1c003504:	332e3054 	xvstelm.w	$xr20,$r2,-464(0x230),0x3
1c003508:	46312d65 	bnez	$r11,1454380(0x16312c) # 1c166634 <stop_time_val+0x162ff0>
1c00350c:	00000000 	0x00000000
1c003510:	542e542d 	bl	11808340(0xb42e54) # 1cb46364 <stop_time_val+0xb42d20>
1c003514:	71542b2b 	0x71542b2b
1c003518:	00000000 	0x00000000
1c00351c:	2e335431 	0x2e335431
1c003520:	7a346534 	0x7a346534
1c003524:	00000000 	0x00000000
1c003528:	302e3433 	vldrepl.w	$vr19,$r1,-460(0xe34)
1c00352c:	5e542d65 	bne	$r11,$r5,-109524(0x2542c) # 1bfe8958 <main-0x176a8>
1c003530:	00000000 	0x00000000
1c003534:	1c002b88 	pcaddu12i	$r8,348(0x15c)
1c003538:	1c002b88 	pcaddu12i	$r8,348(0x15c)
1c00353c:	1c002b88 	pcaddu12i	$r8,348(0x15c)
1c003540:	1c002bc8 	pcaddu12i	$r8,350(0x15e)
1c003544:	1c002bc8 	pcaddu12i	$r8,350(0x15e)
1c003548:	1c002c08 	pcaddu12i	$r8,352(0x160)
1c00354c:	1c002c08 	pcaddu12i	$r8,352(0x160)
1c003550:	1c002c48 	pcaddu12i	$r8,354(0x162)
1c003554:	1c002dcc 	pcaddu12i	$r12,366(0x16e)
1c003558:	1c003088 	pcaddu12i	$r8,388(0x184)
1c00355c:	1c002e5c 	pcaddu12i	$r28,370(0x172)
1c003560:	1c002fa8 	pcaddu12i	$r8,381(0x17d)
1c003564:	1c002edc 	pcaddu12i	$r28,374(0x176)
1c003568:	1c002f3c 	pcaddu12i	$r28,377(0x179)
1c00356c:	1c003000 	pcaddu12i	$r0,384(0x180)
1c003570:	1c003054 	pcaddu12i	$r20,386(0x182)
1c003574:	1c003188 	pcaddu12i	$r8,396(0x18c)
1c003578:	1c003124 	pcaddu12i	$r4,393(0x189)
1c00357c:	1c003138 	pcaddu12i	$r24,393(0x189)
1c003580:	1c00314c 	pcaddu12i	$r12,394(0x18a)
1c003584:	1c003160 	pcaddu12i	$r0,395(0x18b)
1c003588:	1c003174 	pcaddu12i	$r20,395(0x18b)

Disassembly of section .data:

1c00358c <list_known_crc>:
1c00358c:	3340d4b0 	xvstelm.h	$xr16,$r5,106(0x6a),0x0
1c003590:	e7146a79 	0xe7146a79
1c003594:	0000e3c1 	0x0000e3c1

1c003598 <matrix_known_crc>:
1c003598:	1199be52 	addu16i.d	$r18,$r18,26223(0x666f)
1c00359c:	1fd75608 	pcaddu18i	$r8,-83280(0xebab0)
1c0035a0:	00000747 	0x00000747

1c0035a4 <state_known_crc>:
1c0035a4:	39bf5e47 	0x39bf5e47
1c0035a8:	8e3ae5a4 	0x8e3ae5a4
1c0035ac:	00008d84 	0x00008d84

1c0035b0 <mem_name>:
1c0035b0:	1c00346c 	pcaddu12i	$r12,419(0x1a3)
1c0035b4:	1c003474 	pcaddu12i	$r20,419(0x1a3)
1c0035b8:	1c00347c 	pcaddu12i	$r28,419(0x1a3)

1c0035bc <seed1_volatile>:
1c0035bc:	00003415 	revb.4h	$r21,$r0

1c0035c0 <seed2_volatile>:
1c0035c0:	00003415 	revb.4h	$r21,$r0

1c0035c4 <seed3_volatile>:
1c0035c4:	00000066 	0x00000066

1c0035c8 <seed4_volatile>:
1c0035c8:	00000001 	0x00000001

1c0035cc <default_num_contexts>:
1c0035cc:	00000001 	0x00000001

1c0035d0 <intpat>:
1c0035d0:	1c003484 	pcaddu12i	$r4,420(0x1a4)
1c0035d4:	1c00348c 	pcaddu12i	$r12,420(0x1a4)
1c0035d8:	1c003494 	pcaddu12i	$r20,420(0x1a4)
1c0035dc:	1c00349c 	pcaddu12i	$r28,420(0x1a4)

1c0035e0 <floatpat>:
1c0035e0:	1c0034a4 	pcaddu12i	$r4,421(0x1a5)
1c0035e4:	1c0034b0 	pcaddu12i	$r16,421(0x1a5)
1c0035e8:	1c0034bc 	pcaddu12i	$r28,421(0x1a5)
1c0035ec:	1c0034c8 	pcaddu12i	$r8,422(0x1a6)

1c0035f0 <scipat>:
1c0035f0:	1c0034d4 	pcaddu12i	$r20,422(0x1a6)
1c0035f4:	1c0034e0 	pcaddu12i	$r0,423(0x1a7)
1c0035f8:	1c0034ec 	pcaddu12i	$r12,423(0x1a7)
1c0035fc:	1c0034f8 	pcaddu12i	$r24,423(0x1a7)

1c003600 <errpat>:
1c003600:	1c003504 	pcaddu12i	$r4,424(0x1a8)
1c003604:	1c003510 	pcaddu12i	$r16,424(0x1a8)
1c003608:	1c00351c 	pcaddu12i	$r28,424(0x1a8)
1c00360c:	1c003528 	pcaddu12i	$r8,425(0x1a9)

Disassembly of section .got:

1c003610 <_GLOBAL_OFFSET_TABLE_>:
1c003610:	00000000 	0x00000000
1c003614:	1c0035bc 	pcaddu12i	$r28,429(0x1ad)
1c003618:	1c0035c4 	pcaddu12i	$r4,430(0x1ae)
1c00361c:	1c003640 	pcaddu12i	$r0,434(0x1b2)
1c003620:	1c0035c8 	pcaddu12i	$r8,430(0x1ae)
1c003624:	1c003638 	pcaddu12i	$r24,433(0x1b1)
1c003628:	1c00363c 	pcaddu12i	$r28,433(0x1b1)
1c00362c:	1c003644 	pcaddu12i	$r4,434(0x1b2)
1c003630:	1c0035c0 	pcaddu12i	$r0,430(0x1ae)
1c003634:	1c0035cc 	pcaddu12i	$r12,430(0x1ae)

Disassembly of section .bss:

1c003638 <seed5_volatile>:
1c003638:	00000000 	0x00000000

1c00363c <static_memblk>:
1c00363c:	00000000 	0x00000000

1c003640 <start_time_val>:
1c003640:	00000000 	0x00000000

1c003644 <stop_time_val>:
1c003644:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	6f4c2820 	bgeu	$r1,$r0,-46040(0x34c28) # ffff4c2c <stop_time_val+0xe3ff15e8>
   8:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d6774 <main-0x1bc2988c>
   c:	20686372 	ll.w	$r18,$r27,26720(0x6860)
  10:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
  14:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 6f80 <main-0x1bff9080>
  18:	69616863 	bltu	$r3,$r3,90472(0x16168) # 16180 <main-0x1bfe9e80>
  1c:	414c206e 	beqz	$r3,3755040(0x394c20) # 394c3c <main-0x1bc6b3c4>
  20:	76203233 	0x76203233
  24:	20302e32 	ll.w	$r18,$r17,12332(0x302c)
  28:	32303228 	0x32303228
  2c:	30393033 	0x30393033
  30:	20292933 	ll.w	$r19,$r9,10536(0x2928)
  34:	2e332e38 	0x2e332e38
  38:	Address 0x0000000000000038 is out of bounds.

