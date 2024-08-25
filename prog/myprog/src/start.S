# define zero	$r0
# define ra	$r1
# define tp	$r2
# define sp	$r3
# define a0	$r4
# define a1	$r5
# define a2	$r6
# define a3	$r7
# define a4	$r8
# define a5	$r9
# define a6	$r10
# define a7	$r11
# define v0	$r10  //r4
# define v1	$r11  //r5
# define t0	$r12
# define t1	$r13
# define t2	$r14
# define t3	$r15
# define t4	$r16
# define t5	$r17
# define t6	$r18
# define t7	$r19
# define t8	$r20
# define x	$r21
# define fp	$r22
# define s0	$r23
# define s1	$r24
# define s2	$r25
# define s3	$r26
# define s4	$r27
# define s5	$r28
# define s6	$r29
# define s7	$r30
# define s8	$r31

.section entry, "ax"
.global	main
.globl _start
_start:
# 设置栈指针
    la.local sp, _ssp
    # lu12i.w sp, 0x807F
    # ori $r3, sp, 0xFF0
# 初始化BSS
    la.local    t0,_sbss
    la.local    t1,_ebss
bss_init:
    beq         t0,t1,main
    st.w        zero,t0,0x0
    addi.w      t0,t0,0x4
    b           bss_init
/* start address for the .bss section. defined in linker script */
.word   _sbss
/* end address for the .bss section. defined in linker script */
.word   _ebss
.word   _ssp