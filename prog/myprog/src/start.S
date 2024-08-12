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

.globl _start
_start:
    lu12i.w $r3, 0x807F
    ori $r3, $r3, 0xFF0
WRITESERIAL:
    lu12i.w     s0,-0x40300    # s0 = 0xbfd00000
    la.local    s1,info
    ld.b        a0,s1,0x0
loop1:
    addi.w      s1,s1,0x1
.TESTW:
    ld.b        t0,s0,0x3fc
    andi        t0,t0,0x001
    beq         t0,zero,.TESTW
    st.b        a0,s0,0x3F8
    ld.b        a0,s1,0x0
    bne         a0,zero,loop1

READSERIAL:
    # lui         s0,-0x40300
.TESTR:
    ld.b        t0,s0,0x3fc
    andi        t0,t0,0x002
    beq         t0,zero,.TESTR
    ld.b        a0,s0,0x3F8
    addi.w      t0,zero,0x54  # char 'T'
    bne         a0,t0,READSERIAL


    b 0

info:
    .asciz "Fib Finish."