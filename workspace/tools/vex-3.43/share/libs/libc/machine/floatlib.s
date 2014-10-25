 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /data/tools/vex-3.43 -O2 -fno-xnop -fexpand-div -fmm=/data/releases/work/rovex-vhdl/examples/pipe_1_8_fw.mm -S"
.sversion 3.43
.rta 2
.section .bss
.align 32
.section .data
.align 32
.equ _?1TEMPLATEPACKET.5, 0x0
 ## Begin estimateDiv64To32
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32)
estimateDiv64To32:
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    cmpleu $b0.0 = $r0.5, $r0.3   ## bblock 0, line 150,  t198(I1),  t134,  t132
	c0    mov $r0.3 = (~0x0)   ## (~0x0)(I32)
	c0    mov $r0.2 = $r0.3   ## t132
;;								## 0
;;								## 1
	c0    brf $b0.0, L0?3   ## bblock 0, line 150,  t198(I1)
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 151,  t119,  ?2.1?2auto_size(I32),  t118
;;								## 3
.trace 4
L0?3:
	c0    shru $r0.11 = $r0.5, 16   ## bblock 1, line 152,  t162(I16),  t134,  16(SI32)
	c0    shl $r0.3 = $r0.5, 16   ## bblock 1, line 187,  t91,  t134,  16(SI32)
	c0    mov $r0.6 = $r0.1   ## bblock 1, line 177,  t95,  t119
	c0    mov $r0.10 = $r0.0   ## bblock 1, line 0,  t174,  0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
	c0    mov $r0.12 = (~0xffff)   ## (~0xffff)(I32)
;;								## 0
	c0    shl $r0.15 = $r0.11, 16   ## bblock 1, line 153,  t5,  t162(I16),  16(SI32)
	c0    cmplt $r0.13 = $r0.11, $r0.0   ## bblock 1, line 153,  t202,  t162(I16),  0(I32)
	c0    cmpgeu $r0.14 = $r0.2, $r0.11   ## bblock 1, line 153,  t208,  t132,  t162(I16)
	c0    mov $r0.9 = $r0.12   ## bblock 1, line 0,  t188,  (~0xffff)(I32)
;;								## 1
	c0    shru $r0.17 = $r0.11, $r0.13   ## bblock 1, line 153,  t200,  t162(I16),  t202
	c0    shru $r0.16 = $r0.2, $r0.13   ## bblock 1, line 153,  t199,  t132,  t202
	c0    cmpgtu $b0.2 = $r0.15, $r0.2   ## bblock 1, line 153,  t209(I1),  t5,  t132
	c0    mtb $b0.1 = $r0.13   ## t202
;;								## 2
	c0    addcg $r0.13, $b0.3 = $r0.16, $r0.16, $b0.0   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  0(I32)
;;								## 3
	c0    divs $r0.13, $b0.3 = $r0.0, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  0(I32),  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.13, $r0.13, $b0.0   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  0(I32)
;;								## 4
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 5
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 6
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 7
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 8
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 9
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 10
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 11
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 12
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 13
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 14
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 15
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 16
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 17
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 18
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 19
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 20
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 21
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 22
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 23
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 24
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 25
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 26
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 27
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 28
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 29
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 30
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 31
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 32
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 33
	c0    divs $r0.13, $b0.3 = $r0.13, $r0.17, $b0.3   ## bblock 1, line 153,  t201,  t203(I1),  t201,  t200,  t203(I1)
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
;;								## 34
	c0    divs $r0.13, $b0.4 = $r0.13, $r0.17, $b0.4   ## bblock 1, line 153,  t201,  t204(I1),  t201,  t200,  t204(I1)
	c0    addcg $r0.15, $b0.3 = $r0.16, $r0.16, $b0.3   ## bblock 1, line 153,  t199,  t203(I1),  t199,  t199,  t203(I1)
;;								## 35
	c0    addcg $r0.16, $b0.4 = $r0.15, $r0.15, $b0.4   ## bblock 1, line 153,  t199,  t204(I1),  t199,  t199,  t204(I1)
	c0    cmpge $r0.13 = $r0.13, $r0.0   ## bblock 1, line 153,  t205,  t201,  0(I32)
;;								## 36
	c0    orc $r0.16 = $r0.16, $r0.0   ## bblock 1, line 153,  t206,  t199,  0(I32)
;;								## 37
	c0    sh1add $r0.16 = $r0.16, $r0.13   ## bblock 1, line 153,  t207,  t206,  t205
;;								## 38
	c0    slct $r0.14 = $b0.1, $r0.14, $r0.16   ## bblock 1, line 153,  t9,  t202,  t208,  t207
;;								## 39
	c0    shl $r0.14 = $r0.14, 16   ## bblock 1, line 153,  t10,  t9,  16(SI32)
;;								## 40
	c0    slct $r0.8 = $b0.2, $r0.14, $r0.12   ## bblock 1, line 153,  t168,  t209(I1),  t10,  (~0xffff)(I32)
;;								## 41
	c0    mpyhhu $r0.5 = $r0.5, $r0.8   ## bblock 1, line 166,  t41,  t134,  t168
	c0    add $r0.7 = $r0.8, $r0.12   ## bblock 1, line 0,  t187,  t168,  (~0xffff)(I32)
	c0    mpylhu $r0.14 = $r0.5, $r0.8   ## bblock 1, line 164,  t38,  t134,  t168
	c0    mpyllu $r0.15 = $r0.5, $r0.8   ## bblock 1, line 163,  t51,  t134,  t168
	c0    mpylhu $r0.13 = $r0.8, $r0.5   ## bblock 1, line 165,  t45,  t168,  t134
;;								## 42
;;								## 43
	c0    add $r0.14 = $r0.13, $r0.14   ## bblock 1, line 167,  t49,  t45,  t38
;;								## 44
	c0    shru $r0.14 = $r0.14, 16   ## bblock 1, line 168,  t43(I16),  t49,  16(SI32)
	c0    cmpltu $r0.13 = $r0.14, $r0.13   ## bblock 1, line 168,  t46,  t49,  t45
	c0    shl $r0.12 = $r0.14, 16   ## bblock 1, line 169,  t56,  t49,  16(SI32)
;;								## 45
	c0    shl $r0.13 = $r0.13, 16   ## bblock 1, line 168,  t47,  t46,  16(SI32)
	c0    add $r0.15 = $r0.15, $r0.12   ## bblock 1, line 170,  t74,  t51,  t56
	c0    add $r0.14 = $r0.14, $r0.5   ## bblock 1, line 171,  t210,  t43(I16),  t41
	c0    add $r0.5 = $r0.1, 0x4   ## bblock 1, line 176,  t102,  t119,  offset(rem0?1.2)=0x4(P32)
;;								## 46
	c0    cmpltu $r0.12 = $r0.15, $r0.12   ## bblock 1, line 171,  t57,  t74,  t56
	c0    stw 0x8[$r0.1] = $r0.15   ## bblock 1, line 172, t119, t74
	c0    sub $r0.4 = $r0.4, $r0.15   ## bblock 1, line 182,  t71,  t133,  t74
	c0    cmpltu $r0.16 = $r0.4, $r0.15   ## bblock 1, line 183,  t75,  t133,  t74
;;								## 47
	c0    add $r0.13 = $r0.13, $r0.12   ## bblock 1, line 171,  t211,  t47,  t57
	c0    stw 0[$r0.1] = $r0.4   ## bblock 1, line 182, t119, t71
;;								## 48
	c0    add $r0.14 = $r0.14, $r0.13   ## bblock 1, line 171,  t76,  t210,  t211
	c0    mov $r0.4 = $r0.11   ## t162(I16)
;;								## 49
	c0    stw 0xc[$r0.1] = $r0.14   ## bblock 1, line 173, t119, t76
	c0    sub $r0.2 = $r0.2, $r0.14   ## bblock 1, line 183,  t212,  t132,  t76
;;								## 50
	c0    sub $r0.2 = $r0.2, $r0.16   ## bblock 1, line 183,  t78,  t212,  t75
;;								## 51
	c0    stw 0x4[$r0.1] = $r0.2   ## bblock 1, line 183, t119, t78
;;								## 52
.trace 1
L1?3:
	c0    ldw.d $r0.2 = 0[$r0.1]   ## [spec] bblock 4, line 192, t182, t119
;;								## 0
	c0    ldw $r0.11 = 0x4[$r0.1]   ## bblock 2, line 185, t80, t119
;;								## 1
	c0    add $r0.12 = $r0.2, $r0.3   ## [spec] bblock 4, line 195,  t181,  t182,  t91
;;								## 2
	c0    cmplt $b0.0 = $r0.11, $r0.0   ## bblock 2, line 185,  t213(I1),  t80,  0(SI32)
	c0    cmpltu $r0.2 = $r0.12, $r0.2   ## [spec] bblock 4, line 197,  t180,  t181,  t182
	c0    add $r0.13 = $r0.11, $r0.4   ## [spec] bblock 4, line 197,  t225,  t80,  t162(I16)
;;								## 3
	c0    add $r0.13 = $r0.13, $r0.2   ## [spec] bblock 4, line 197,  t179,  t225,  t180
;;								## 4
	c0    brf $b0.0, L2?3   ## bblock 2, line 185,  t213(I1)
;;								## 5
	c0    stw 0[$r0.5] = $r0.13   ## bblock 4, line 197, t102, t179
	c0    add $r0.8 = $r0.8, -131072   ## [spec] bblock 10, line 186-2,  t168,  t168,  -131072(SI32)
;;								## 6
	c0    ldw $r0.2 = 0x4[$r0.1]   ## bblock 4, line 185-1, t186, t119
;;								## 7
	c0    stw 0[$r0.6] = $r0.12   ## bblock 4, line 196, t95, t181
;;								## 8
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 4, line 185-1,  t226(I1),  t186,  0(SI32)
	c0    ldw.d $r0.11 = 0[$r0.1]   ## [spec] bblock 13, line 192-1, t97, t119
;;								## 9
;;								## 10
	c0    add $r0.12 = $r0.3, $r0.11   ## [spec] bblock 13, line 195-1,  t96,  t91,  t97
	c0    brf $b0.0, L3?3   ## bblock 4, line 185-1,  t226(I1)
;;								## 11
	c0    cmpltu $r0.11 = $r0.12, $r0.11   ## bblock 13, line 197-1,  t98,  t96,  t97
	c0    stw 0[$r0.6] = $r0.12   ## bblock 13, line 196-1, t95, t96
	c0    add $r0.10 = $r0.10, -131072   ## [spec] bblock 7, line 186-3,  t174,  t174,  -131072(SI32)
;;								## 12
	c0    add $r0.11 = $r0.4, $r0.11   ## bblock 13, line 197-1,  t230,  t162(I16),  t98
	c0    ldw.d $r0.12 = 0[$r0.1]   ## [spec] bblock 10, line 192-2, t171, t119
;;								## 13
	c0    add $r0.11 = $r0.11, $r0.2   ## bblock 13, line 197-1,  t101,  t230,  t186
;;								## 14
	c0    stw 0[$r0.5] = $r0.11   ## bblock 13, line 197-1, t102, t101
	c0    add $r0.2 = $r0.3, $r0.12   ## [spec] bblock 10, line 195-2,  t172,  t91,  t171
;;								## 15
	c0    ldw $r0.11 = 0x4[$r0.1]   ## bblock 13, line 185-2, t173, t119
	c0    cmpltu $r0.12 = $r0.2, $r0.12   ## [spec] bblock 10, line 197-2,  t169,  t172,  t171
;;								## 16
	c0    add $r0.12 = $r0.4, $r0.12   ## [spec] bblock 10, line 197-2,  t228,  t162(I16),  t169
;;								## 17
	c0    cmplt $b0.0 = $r0.11, $r0.0   ## bblock 13, line 185-2,  t231(I1),  t173,  0(SI32)
	c0    add $r0.12 = $r0.12, $r0.11   ## [spec] bblock 10, line 197-2,  t170,  t228,  t173
;;								## 18
;;								## 19
	c0    brf $b0.0, L4?3   ## bblock 13, line 185-2,  t231(I1)
;;								## 20
	c0    stw 0[$r0.6] = $r0.2   ## bblock 10, line 196-2, t95, t172
	c0    add $r0.7 = $r0.7, (~0x1ffff)   ## bblock 10, line 0,  t187,  t187,  (~0x1ffff)(I32)
;;								## 21
	c0    ldw.d $r0.2 = 0[$r0.1]   ## [spec] bblock 7, line 192-3, t183, t119
;;								## 22
	c0    stw 0[$r0.5] = $r0.12   ## bblock 10, line 197-2, t102, t170
;;								## 23
	c0    ldw $r0.11 = 0x4[$r0.1]   ## bblock 10, line 185-3, t184, t119
	c0    add $r0.12 = $r0.3, $r0.2   ## [spec] bblock 7, line 195-3,  t177,  t91,  t183
;;								## 24
	c0    cmpltu $r0.2 = $r0.12, $r0.2   ## [spec] bblock 7, line 197-3,  t175,  t177,  t183
;;								## 25
	c0    cmplt $b0.0 = $r0.11, $r0.0   ## bblock 10, line 185-3,  t229(I1),  t184,  0(SI32)
	c0    add $r0.2 = $r0.4, $r0.2   ## [spec] bblock 7, line 197-3,  t227,  t162(I16),  t175
;;								## 26
	c0    add $r0.2 = $r0.2, $r0.11   ## [spec] bblock 7, line 197-3,  t176,  t227,  t184
;;								## 27
	c0    brf $b0.0, L5?3   ## bblock 10, line 185-3,  t229(I1)
;;								## 28
	c0    stw 0[$r0.6] = $r0.12   ## bblock 7, line 196-3, t95, t177
	c0    add $r0.9 = $r0.9, (~0x1ffff)   ## bblock 7, line 0,  t188,  t188,  (~0x1ffff)(I32)
;;								## 29
	c0    stw 0[$r0.5] = $r0.2   ## bblock 7, line 197-3, t102, t176
	c0    goto L1?3 ## goto
;;								## 30
.trace 8
L5?3:
	c0    mov $r0.10 = $r0.9   ## bblock 8, line 0,  t166,  t188
	   ## bblock 8, line 0,  t160,  t168## $r0.8(skipped)
	c0    ldw $r0.3 = 0[$r0.1]   ## bblock 3, line 200, t103, t119
	c0    shl $r0.6 = $r0.4, 16   ## bblock 3, line 201,  t110,  t162(I16),  16(SI32)
	c0    cmplt $b0.1 = $r0.4, $r0.0   ## bblock 3, line 201,  t217,  t162(I16),  0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    add $r0.8 = $r0.8, $r0.10   ## bblock 3, line 0,  t185,  t160,  t166
	c0    ldw $r0.7 = 0x4[$r0.1]   ## bblock 3, line 200, t105, t119
;;								## 1
	c0    shru $r0.2 = $r0.3, 16   ## bblock 3, line 200,  t104(I16),  t103,  16(SI32)
	c0    mfb $r0.5 = $b0.1   ## t217
;;								## 2
	c0    shru $r0.9 = $r0.4, $r0.5   ## bblock 3, line 201,  t215,  t162(I16),  t217
	c0    goto L6?3 ## goto
;;								## 3
.trace 7
L4?3:
	c0    mov $r0.10 = $r0.9   ## bblock 11, line 0,  t166,  t188
	   ## bblock 11, line 0,  t160,  t187## $r0.7(skipped)
	c0    ldw $r0.3 = 0[$r0.1]   ## bblock 3, line 200, t103, t119
	c0    shl $r0.6 = $r0.4, 16   ## bblock 3, line 201,  t110,  t162(I16),  16(SI32)
	c0    cmplt $b0.1 = $r0.4, $r0.0   ## bblock 3, line 201,  t217,  t162(I16),  0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    add $r0.8 = $r0.7, $r0.10   ## bblock 3, line 0,  t185,  t160,  t166
	c0    ldw $r0.11 = 0x4[$r0.1]   ## bblock 3, line 200, t105, t119
;;								## 1
	c0    shru $r0.2 = $r0.3, 16   ## bblock 3, line 200,  t104(I16),  t103,  16(SI32)
	c0    mfb $r0.5 = $b0.1   ## t217
;;								## 2
	c0    shru $r0.9 = $r0.4, $r0.5   ## bblock 3, line 201,  t215,  t162(I16),  t217
	c0    mov $r0.7 = $r0.11   ## t105
	c0    goto L6?3 ## goto
;;								## 3
.trace 6
L3?3:
	   ## bblock 14, line 0,  t166,  t174## $r0.10(skipped)
	   ## bblock 14, line 0,  t160,  t187## $r0.7(skipped)
	c0    ldw $r0.3 = 0[$r0.1]   ## bblock 3, line 200, t103, t119
	c0    shl $r0.6 = $r0.4, 16   ## bblock 3, line 201,  t110,  t162(I16),  16(SI32)
	c0    cmplt $b0.1 = $r0.4, $r0.0   ## bblock 3, line 201,  t217,  t162(I16),  0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    add $r0.8 = $r0.7, $r0.10   ## bblock 3, line 0,  t185,  t160,  t166
	c0    ldw $r0.11 = 0x4[$r0.1]   ## bblock 3, line 200, t105, t119
;;								## 1
	c0    shru $r0.2 = $r0.3, 16   ## bblock 3, line 200,  t104(I16),  t103,  16(SI32)
	c0    mfb $r0.5 = $b0.1   ## t217
;;								## 2
	c0    shru $r0.9 = $r0.4, $r0.5   ## bblock 3, line 201,  t215,  t162(I16),  t217
	c0    mov $r0.7 = $r0.11   ## t105
	c0    goto L6?3 ## goto
;;								## 3
.trace 5
L2?3:
	   ## bblock 15, line 0,  t166,  t174## $r0.10(skipped)
	   ## bblock 15, line 0,  t160,  t168## $r0.8(skipped)
	c0    ldw $r0.2 = 0[$r0.1]   ## bblock 3, line 200, t103, t119
	c0    shl $r0.6 = $r0.4, 16   ## bblock 3, line 201,  t110,  t162(I16),  16(SI32)
	c0    cmplt $r0.5 = $r0.4, $r0.0   ## bblock 3, line 201,  t217,  t162(I16),  0(I32)
	c0    mtb $b0.0 = $r0.0   ## 0(I32)
;;								## 0
	c0    add $r0.8 = $r0.8, $r0.10   ## bblock 3, line 0,  t185,  t160,  t166
	c0    ldw $r0.7 = 0x4[$r0.1]   ## bblock 3, line 200, t105, t119
	c0    shru $r0.9 = $r0.4, $r0.5   ## bblock 3, line 201,  t215,  t162(I16),  t217
	c0    mtb $b0.1 = $r0.5   ## t217
;;								## 1
	c0    shru $r0.2 = $r0.2, 16   ## bblock 3, line 200,  t104(I16),  t103,  16(SI32)
;;								## 2
L6?3:
	c0    shl $r0.7 = $r0.7, 16   ## bblock 3, line 200,  t106,  t105,  16(SI32)
;;								## 3
	c0    or $r0.2 = $r0.2, $r0.7   ## bblock 3, line 200,  t112,  t104(I16),  t106
;;								## 4
	c0    stw 0x4[$r0.1] = $r0.2   ## bblock 3, line 200, t119, t112
	c0    shru $r0.5 = $r0.2, $r0.5   ## bblock 3, line 201,  t214,  t112,  t217
	c0    cmpgeu $r0.4 = $r0.2, $r0.4   ## bblock 3, line 201,  t223,  t112,  t162(I16)
	c0    cmpgtu $b0.2 = $r0.6, $r0.2   ## bblock 3, line 201,  t224(I1),  t110,  t112
;;								## 5
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.0   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  0(I32)
;;								## 6
	c0    divs $r0.6, $b0.3 = $r0.0, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  0(I32),  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.0   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  0(I32)
;;								## 7
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 8
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 9
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 10
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 11
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 12
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 13
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 14
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 15
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 16
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 17
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 18
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 19
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 20
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 21
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 22
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 23
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 24
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 25
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 26
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 27
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 28
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 29
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 30
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 31
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 32
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 33
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 34
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 35
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 36
	c0    divs $r0.6, $b0.3 = $r0.6, $r0.9, $b0.3   ## bblock 3, line 201,  t216,  t218(I1),  t216,  t215,  t218(I1)
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
;;								## 37
	c0    divs $r0.6, $b0.4 = $r0.6, $r0.9, $b0.4   ## bblock 3, line 201,  t216,  t219(I1),  t216,  t215,  t219(I1)
	c0    addcg $r0.2, $b0.3 = $r0.5, $r0.5, $b0.3   ## bblock 3, line 201,  t214,  t218(I1),  t214,  t214,  t218(I1)
;;								## 38
	c0    addcg $r0.5, $b0.4 = $r0.2, $r0.2, $b0.4   ## bblock 3, line 201,  t214,  t219(I1),  t214,  t214,  t219(I1)
	c0    cmpge $r0.6 = $r0.6, $r0.0   ## bblock 3, line 201,  t220,  t216,  0(I32)
;;								## 39
	c0    orc $r0.5 = $r0.5, $r0.0   ## bblock 3, line 201,  t221,  t214,  0(I32)
;;								## 40
	c0    sh1add $r0.5 = $r0.5, $r0.6   ## bblock 3, line 201,  t222,  t221,  t220
;;								## 41
	c0    slct $r0.4 = $b0.1, $r0.4, $r0.5   ## bblock 3, line 201,  t114,  t217,  t223,  t222
;;								## 42
	c0    slct $r0.4 = $b0.2, $r0.4, 65535   ## bblock 3, line 201,  t115,  t224(I1),  t114,  65535(SI32)
;;								## 43
.return ret($r0.3:u32)
	c0    or $r0.3 = $r0.8, $r0.4   ## bblock 3, line 201,  t117,  t185,  t115
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 202,  t119,  ?2.1?2auto_size(I32),  t118
;;								## 44
.endp
.section .bss
.section .data
.equ _?1PACKET.8, 0x0
.equ _?1PACKET.7, 0x4
.equ _?1PACKET.10, 0x8
.equ _?1PACKET.9, 0xc
.section .data
.section .text
.equ ?2.1?2auto_size, 0x20
 ## End estimateDiv64To32
 ## Begin countLeadingZeros32
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32)
countLeadingZeros32:
.trace 1
	      ## auto_size == 0
	c0    cmpgeu $b0.0 = $r0.3, 65536   ## bblock 0, line 228,  t31(I1),  t37,  65536(SI32)
	c0    shl $r0.2 = $r0.3, 16   ## bblock 0, line 230,  t32,  t37,  16(SI32)
;;								## 0
	c0    slct $r0.3 = $b0.0, $r0.3, $r0.2   ## bblock 0, line 230,  t38,  t31(I1),  t37,  t32
	c0    slct $r0.2 = $b0.0, $r0.0, 16   ## bblock 0, line 229,  t39,  t31(I1),  0(SI32),  16(SI32)
;;								## 1
	c0    cmpgeu $b0.0 = $r0.3, 16777216   ## bblock 0, line 232,  t34(I1),  t38,  16777216(SI32)
	c0    shl $r0.4 = $r0.3, 8   ## bblock 0, line 234,  t35,  t38,  8(SI32)
	c0    add $r0.5 = $r0.2, 8   ## bblock 0, line 233,  t36,  t39,  8(SI32)
;;								## 2
	c0    slct $r0.3 = $b0.0, $r0.3, $r0.4   ## bblock 0, line 234,  t29,  t34(I1),  t38,  t35
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.5   ## bblock 0, line 233,  t30,  t34(I1),  t39,  t36
;;								## 3
	c0    shru $r0.3 = $r0.3, 24   ## bblock 0, line 236,  t13(I8),  t29,  24(SI32)
;;								## 4
	c0    sh2add $r0.3 = $r0.3, (_?1PACKET.37 + 0)   ## bblock 0, line 236,  t40,  t13(I8),  addr(countLeadingZerosHigh?1.8)(P32)
;;								## 5
	c0    ldw $r0.3 = 0[$r0.3]   ## bblock 0, line 236, t14, t40
;;								## 6
;;								## 7
.return ret($r0.3:s32)
	c0    add $r0.3 = $r0.2, $r0.3   ## bblock 0, line 236,  t16,  t30,  t14
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 237,  t18,  ?2.2?2auto_size(I32),  t17
;;								## 8
.endp
.section .bss
.section .data
_?1PACKET.37:
    .data4 8
    .data4 7
    .data4 6
    .data4 6
    .data4 5
    .data4 5
    .data4 5
    .data4 5
    .data4 4
    .data4 4
    .data4 4
    .data4 4
    .data4 4
    .data4 4
    .data4 4
    .data4 4
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 3
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 2
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 1
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
    .data4 0
.section .data
.section .text
.equ ?2.2?2auto_size, 0x0
 ## End countLeadingZeros32
 ## Begin float_raise
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:s32)
float_raise:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    ldw $r0.2 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## bblock 0, line 242, t0, 0(I32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t6
;;								## 1
	c0    or $r0.3 = $r0.3, $r0.2   ## bblock 0, line 242,  t4,  t1,  t0
	c0    ldw $r0.4 = ((_?1PACKET.4 + 0) + 0)[$r0.0]   ## bblock 0, line 244, t3, 0(I32)
;;								## 2
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.3   ## bblock 0, line 242, 0(I32), t4
;;								## 3
	c0    and $r0.4 = $r0.4, $r0.3   ## bblock 0, line 244,  t19,  t3,  t4
;;								## 4
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 0, line 244,  t20,  t19,  0(I32)
	c0    mov $r0.3 = 8   ## 8(SI32)
;;								## 5
;;								## 6
	c0    brf $b0.0, L7?3   ## bblock 0, line 244,  t20
;;								## 7
.call raise, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = raise   ## bblock 2, line 245,  raddr(raise)(P32),  8(SI32)
;;								## 8
L7?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t6
;;								## 9
;;								## 10
;;								## 11
.return ret()
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 246,  t7,  ?2.3?2auto_size(I32),  t6
;;								## 12
.endp
.section .bss
.section .data
.equ ?2.3?2scratch.0, 0x0
.equ ?2.3?2ras_p, 0x10
.section .data
.section .text
.equ ?2.3?2auto_size, 0x20
 ## End float_raise
 ## Begin float32ToCommonNaN
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
float32ToCommonNaN:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 22   ## bblock 0, line 254,  t1(I10),  t25,  22(SI32)
	c0    and $r0.6 = $r0.3, 4194303   ## bblock 0, line 254,  t5,  t25,  4194303(I32)
	c0    shru $r0.7 = $r0.3, 31   ## [spec] bblock 1, line 256,  t10(I1),  t25,  31(SI32)
	c0    shl $r0.4 = $r0.3, 9   ## [spec] bblock 1, line 258,  t11,  t25,  9(SI32)
	c0    mov $r0.5 = $r0.0   ## 0(SI32)
;;								## 0
	c0    and $r0.2 = $r0.2, 511   ## bblock 0, line 254,  t2,  t1(I10),  511(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t13
	c0    mov $r0.8 = $r0.3   ## t25
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 510   ## bblock 0, line 254,  t3,  t2,  510(SI32)
	c0    mov $r0.3 = $r0.7   ## [spec] t10(I1)
;;								## 2
	c0    andl $b0.0 = $r0.2, $r0.6   ## bblock 0, line 254,  t29(I1),  t3,  t5
;;								## 3
;;								## 4
	c0    br $b0.0, L8?3   ## bblock 0, line 254,  t29(I1)
;;								## 5
L9?3:
.return ret($r0.3:s32,$r0.4:u32,$r0.5:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 259,  t14,  ?2.4?2auto_size(I32),  t13
;;								## 6
.trace 2
L8?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 2, line 255,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x14[$r0.1] = $r0.8  ## spill ## t25
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.5 = $r0.0   ## 0(SI32)
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t25
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t13
;;								## 2
	c0    shru $r0.3 = $r0.2, 31   ## bblock 1, line 256,  t10(I1),  t25,  31(SI32)
	c0    shl $r0.4 = $r0.2, 9   ## bblock 1, line 258,  t11,  t25,  9(SI32)
;;								## 3
	c0    goto L9?3 ## goto
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.4?2scratch.0, 0x0
.equ ?2.4?2ras_p, 0x10
.equ ?2.4?2spill_p, 0x14
.section .data
.section .text
.equ ?2.4?2auto_size, 0x20
 ## End float32ToCommonNaN
 ## Begin propagateFloat32NaN
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
propagateFloat32NaN:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    shl $r0.2 = $r0.4, 1   ## bblock 0, line 268,  t11,  t22,  1(SI32)
	c0    shru $r0.7 = $r0.4, 22   ## bblock 0, line 269,  t14(I10),  t22,  22(SI32)
	c0    or $r0.5 = $r0.3, 4194304   ## bblock 0, line 270,  t49,  t20,  4194304(I32)
	c0    or $r0.6 = $r0.4, 4194304   ## bblock 0, line 271,  t50,  t22,  4194304(I32)
;;								## 0
	c0    cmpgtu $r0.2 = $r0.2, (~0xffffff)   ## bblock 0, line 268,  t52,  t11,  (~0xffffff)(I32)
	c0    shru $r0.8 = $r0.3, 22   ## bblock 0, line 267,  t4(I10),  t20,  22(SI32)
	c0    and $r0.7 = $r0.7, 511   ## bblock 0, line 269,  t15,  t14(I10),  511(I32)
	c0    and $r0.4 = $r0.4, 4194303   ## bblock 0, line 269,  t18,  t22,  4194303(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t36
;;								## 1
	c0    and $r0.8 = $r0.8, 511   ## bblock 0, line 267,  t5,  t4(I10),  511(I32)
	c0    cmpeq $r0.7 = $r0.7, 510   ## bblock 0, line 269,  t16,  t15,  510(SI32)
	c0    and $r0.3 = $r0.3, 4194303   ## bblock 0, line 267,  t8,  t20,  4194303(I32)
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## [spec] bblock 1, line 277,  t59(I1),  t52,  0(SI32)
;;								## 2
	c0    cmpeq $r0.8 = $r0.8, 510   ## bblock 0, line 267,  t6,  t5,  510(SI32)
	c0    andl $r0.7 = $r0.7, $r0.4   ## bblock 0, line 269,  t51,  t16,  t18
	c0    slct $r0.9 = $b0.0, $r0.6, $r0.5   ## [spec] bblock 1, line 277,  t33,  t59(I1),  t50,  t49
;;								## 3
	c0    andl $r0.8 = $r0.8, $r0.3   ## bblock 0, line 267,  t53,  t6,  t8
	c0    cmpne $b0.0 = $r0.7, $r0.0   ## [spec] bblock 1, line 277,  t61(I1),  t51,  0(SI32)
;;								## 4
	c0    or $r0.4 = $r0.7, $r0.8   ## bblock 0, line 275,  t57,  t51,  t53
	c0    cmpne $b0.1 = $r0.8, $r0.0   ## [spec] bblock 1, line 277,  t60(I1),  t53,  0(SI32)
;;								## 5
	c0    cmpne $b0.2 = $r0.4, $r0.0   ## bblock 0, line 275,  t58,  t57,  0(I32)
	c0    slct $r0.9 = $b0.1, $r0.5, $r0.9   ## [spec] bblock 1, line 277,  t34,  t60(I1),  t49,  t33
;;								## 6
	c0    slct $r0.3 = $b0.0, $r0.6, $r0.9   ## [spec] bblock 1, line 277,  t35,  t61(I1),  t50,  t34
;;								## 7
	c0    br $b0.2, L10?3   ## bblock 0, line 275,  t58
;;								## 8
L11?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 1, line 277,  t37,  ?2.5?2auto_size(I32),  t36
;;								## 9
.trace 2
L10?3:
	c0    stw 0x14[$r0.1] = $r0.7  ## spill ## t51
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    stw 0x18[$r0.1] = $r0.8  ## spill ## t53
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t49
;;								## 2
	c0    stw 0x20[$r0.1] = $r0.6  ## spill ## t50
;;								## 3
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 2, line 276,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t52
;;								## 4
	c0    ldw $r0.2 = 0x24[$r0.1]  ## restore ## t52
;;								## 5
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t49
;;								## 6
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 1, line 277,  t59(I1),  t52,  0(SI32)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t50
;;								## 7
	c0    ldw $r0.8 = 0x18[$r0.1]  ## restore ## t53
;;								## 8
	c0    slct $r0.9 = $b0.0, $r0.6, $r0.5   ## bblock 1, line 277,  t33,  t59(I1),  t50,  t49
	c0    ldw $r0.7 = 0x14[$r0.1]  ## restore ## t51
;;								## 9
	c0    cmpne $b0.0 = $r0.8, $r0.0   ## bblock 1, line 277,  t60(I1),  t53,  0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t36
;;								## 10
	c0    slct $r0.9 = $b0.0, $r0.5, $r0.9   ## bblock 1, line 277,  t34,  t60(I1),  t49,  t33
	c0    cmpne $b0.0 = $r0.7, $r0.0   ## bblock 1, line 277,  t61(I1),  t51,  0(SI32)
;;								## 11
	c0    slct $r0.3 = $b0.0, $r0.6, $r0.9   ## bblock 1, line 277,  t35,  t61(I1),  t50,  t34
	c0    goto L11?3 ## goto
;;								## 12
.endp
.section .bss
.section .data
.equ ?2.5?2scratch.0, 0x0
.equ ?2.5?2ras_p, 0x10
.equ ?2.5?2spill_p, 0x14
.section .data
.section .text
.equ ?2.5?2auto_size, 0x40
 ## End propagateFloat32NaN
 ## Begin float64ToCommonNaN
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
float64ToCommonNaN:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    shru $r0.2 = $r0.3, 19   ## bblock 0, line 292,  t1(I13),  t47,  19(SI32)
	c0    and $r0.6 = $r0.3, 524287   ## bblock 0, line 293,  t6,  t47,  524287(I32)
	c0    shru $r0.7 = $r0.3, 31   ## [spec] bblock 1, line 295,  t31,  t47,  31(SI32)
	c0    shl $r0.5 = $r0.4, 12   ## [spec] bblock 1, line 302,  t33,  t48,  12(SI32)
	c0    shl $r0.8 = $r0.3, 12   ## [spec] bblock 1, line 304,  t27,  t47,  12(SI32)
;;								## 0
	c0    and $r0.2 = $r0.2, 4095   ## bblock 0, line 292,  t2,  t1(I13),  4095(I32)
	c0    orl $r0.6 = $r0.4, $r0.6   ## bblock 0, line 293,  t7,  t48,  t6
	c0    shru $r0.9 = $r0.4, 20   ## [spec] bblock 1, line 304,  t24(I12),  t48,  20(I32)
	c0    stw 0x1c[$r0.1] = $l0.0  ## spill ## t34
	c0    mov $r0.10 = $r0.3   ## t47
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 4094   ## bblock 0, line 292,  t3,  t2,  4094(SI32)
	c0    or $r0.8 = $r0.8, $r0.9   ## [spec] bblock 1, line 304,  t32,  t27,  t24(I12)
	c0    mov $r0.3 = $r0.7   ## [spec] t31
;;								## 2
	c0    andl $b0.0 = $r0.2, $r0.6   ## bblock 0, line 293,  t55(I1),  t3,  t7
	c0    mov $r0.9 = $r0.4   ## t48
;;								## 3
	c0    mov $r0.4 = $r0.8   ## [spec] t32
;;								## 4
	c0    br $b0.0, L12?3   ## bblock 0, line 293,  t55(I1)
;;								## 5
L13?3:
	c0    stw 0x10[$r0.1] = $r0.7   ## bblock 1, line 295, t35, t31
;;								## 6
	c0    stw 0x18[$r0.1] = $r0.5   ## bblock 1, line 302, t35, t33
;;								## 7
.return ret($r0.3:s32,$r0.4:u32,$r0.5:u32)
	c0    stw 0x14[$r0.1] = $r0.8   ## bblock 1, line 303, t35, t32
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 1, line 306,  t35,  ?2.6?2auto_size(I32),  t34
;;								## 8
.trace 2
L12?3:
	c0    stw 0x20[$r0.1] = $r0.9  ## spill ## t48
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 2, line 294,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x24[$r0.1] = $r0.10  ## spill ## t47
;;								## 1
	c0    ldw $r0.2 = 0x24[$r0.1]  ## restore ## t47
;;								## 2
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t48
;;								## 3
	c0    shru $r0.3 = $r0.2, 31   ## bblock 1, line 295,  t31,  t47,  31(SI32)
	c0    shl $r0.9 = $r0.2, 12   ## bblock 1, line 304,  t27,  t47,  12(SI32)
	c0    ldw $l0.0 = 0x1c[$r0.1]  ## restore ## t34
;;								## 4
	c0    shl $r0.5 = $r0.6, 12   ## bblock 1, line 302,  t33,  t48,  12(SI32)
	c0    shru $r0.2 = $r0.6, 20   ## bblock 1, line 304,  t24(I12),  t48,  20(I32)
	c0    mov $r0.7 = $r0.3   ## t31
;;								## 5
	c0    or $r0.4 = $r0.9, $r0.2   ## bblock 1, line 304,  t32,  t27,  t24(I12)
;;								## 6
	c0    mov $r0.8 = $r0.4   ## t32
	c0    goto L13?3 ## goto
;;								## 7
.endp
.section .bss
.section .data
.equ ?2.6?2scratch.0, 0x0
.equ _?1PACKET.44, 0x10
.equ ?2.6?2ras_p, 0x1c
.equ ?2.6?2spill_p, 0x20
.section .data
.section .text
.equ ?2.6?2auto_size, 0x40
 ## End float64ToCommonNaN
 ## Begin commonNaNToFloat64
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:s32,$r0.4:u32,$r0.5:u32)
commonNaNToFloat64:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.5 = $r0.5, 12   ## bblock 0, line 326,  t63(I20),  t60,  12(I32)
	c0    shru $r0.2 = $r0.4, 12   ## bblock 0, line 327,  t31,  t61,  12(I32)
	c0    shl $r0.4 = $r0.4, 20   ## bblock 0, line 326,  t65,  t61,  20(I32)
	c0    shl $r0.3 = $r0.3, 31   ## bblock 0, line 336,  t33,  t51,  31(SI32)
;;								## 0
	c0    or $r0.4 = $r0.5, $r0.4   ## bblock 0, line 326,  t36,  t63(I20),  t65
	c0    or $r0.2 = $r0.2, 2146959360   ## bblock 0, line 336,  t71,  t31,  2146959360(I32)
;;								## 1
	c0    stw 0x4[$r0.1] = $r0.4   ## bblock 0, line 333, t38, t36
	c0    or $r0.3 = $r0.2, $r0.3   ## bblock 0, line 336,  t35,  t71,  t33
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    stw 0[$r0.1] = $r0.3   ## bblock 0, line 336, t38, t35
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 0, line 337,  t38,  ?2.7?2auto_size(I32),  t37
;;								## 3
.endp
.section .bss
.section .data
.equ _?1PACKET.50, 0x0
.section .data
.section .text
.equ ?2.7?2auto_size, 0x20
 ## End commonNaNToFloat64
 ## Begin propagateFloat64NaN
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
propagateFloat64NaN:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    shl $r0.2 = $r0.5, 1   ## bblock 0, line 348,  t18,  t36,  1(SI32)
	c0    and $r0.7 = $r0.5, 1048575   ## bblock 0, line 349,  t22,  t36,  1048575(I32)
	c0    shru $r0.9 = $r0.5, 19   ## bblock 0, line 350,  t26(I13),  t36,  19(SI32)
	c0    or $r0.8 = $r0.3, 524288   ## bblock 0, line 352,  t66,  t34,  524288(I32)
;;								## 0
	c0    cmpgeu $r0.2 = $r0.2, (~0x1fffff)   ## bblock 0, line 348,  t19,  t18,  (~0x1fffff)(I32)
	c0    orl $r0.7 = $r0.6, $r0.7   ## bblock 0, line 349,  t23,  t69,  t22
	c0    and $r0.9 = $r0.9, 4095   ## bblock 0, line 350,  t27,  t26(I13),  4095(I32)
	c0    and $r0.10 = $r0.5, 524287   ## bblock 0, line 351,  t31,  t36,  524287(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t51
;;								## 1
	c0    andl $r0.2 = $r0.2, $r0.7   ## bblock 0, line 349,  t71,  t19,  t23
	c0    cmpeq $r0.9 = $r0.9, 4094   ## bblock 0, line 350,  t28,  t27,  4094(SI32)
	c0    orl $r0.10 = $r0.6, $r0.10   ## bblock 0, line 351,  t32,  t69,  t31
	c0    mov $r0.11 = $r0.3   ## t34
;;								## 2
	c0    shru $r0.7 = $r0.11, 19   ## bblock 0, line 346,  t9(I13),  t34,  19(SI32)
	c0    and $r0.12 = $r0.11, 524287   ## bblock 0, line 347,  t14,  t34,  524287(I32)
	c0    andl $r0.9 = $r0.9, $r0.10   ## bblock 0, line 351,  t70,  t28,  t32
	c0    or $r0.3 = $r0.5, 524288   ## bblock 0, line 353,  t68,  t36,  524288(I32)
;;								## 3
	c0    and $r0.7 = $r0.7, 4095   ## bblock 0, line 346,  t10,  t9(I13),  4095(I32)
	c0    orl $r0.12 = $r0.4, $r0.12   ## bblock 0, line 347,  t15,  t67,  t14
	c0    cmpne $b0.0 = $r0.9, $r0.0   ## [spec] bblock 1, line 359,  t82(I1),  t70,  0(SI32)
	c0    mov $r0.5 = $r0.4   ## t67
;;								## 4
	c0    cmpeq $r0.7 = $r0.7, 4094   ## bblock 0, line 346,  t11,  t10,  4094(SI32)
	c0    mov $r0.4 = $r0.6   ## t69
;;								## 5
	c0    andl $r0.7 = $r0.7, $r0.12   ## bblock 0, line 347,  t72,  t11,  t15
;;								## 6
	c0    or $r0.6 = $r0.9, $r0.7   ## bblock 0, line 357,  t80,  t70,  t72
;;								## 7
	c0    cmpne $b0.1 = $r0.6, $r0.0   ## bblock 0, line 357,  t81,  t80,  0(I32)
;;								## 8
;;								## 9
	c0    br $b0.1, L14?3   ## bblock 0, line 357,  t81
;;								## 10
L15?3:
	c0    brf $b0.0, L16?3   ## bblock 1, line 359,  t82(I1)
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 7, line 359,  t52,  ?2.8?2auto_size(I32),  t51
;;								## 12
.trace 2
L16?3:
	c0    cmpne $b0.0 = $r0.7, $r0.0   ## bblock 2, line 359,  t83(I1),  t72,  0(SI32)
	c0    mov $r0.4 = $r0.5   ## t67
	c0    mov $r0.3 = $r0.8   ## t66
	c0    mov $r0.6 = $r0.4   ## t69
	c0    mov $r0.5 = $r0.3   ## t68
;;								## 0
;;								## 1
	c0    brf $b0.0, L17?3   ## bblock 2, line 359,  t83(I1)
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 359,  t52,  ?2.8?2auto_size(I32),  t51
;;								## 3
.trace 3
L17?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 3, line 359,  t84(I1),  t71,  0(SI32)
	c0    mov $r0.4 = $r0.6   ## t69
	c0    mov $r0.3 = $r0.5   ## t68
	c0    mov $r0.2 = $r0.4   ## t67
	c0    mov $r0.8 = $r0.3   ## t66
;;								## 0
;;								## 1
	c0    brf $b0.0, L18?3   ## bblock 3, line 359,  t84(I1)
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 5, line 359,  t52,  ?2.8?2auto_size(I32),  t51
;;								## 3
.trace 4
L18?3:
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 4, line 359,  t52,  ?2.8?2auto_size(I32),  t51
	c0    mov $r0.4 = $r0.2   ## t67
	c0    mov $r0.3 = $r0.8   ## t66
;;								## 0
.trace 5
L14?3:
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t67
;;								## 0
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t69
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t68
;;								## 2
	c0    stw 0x20[$r0.1] = $r0.8  ## spill ## t66
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 3
	c0    stw 0x24[$r0.1] = $r0.7  ## spill ## t72
;;								## 4
	c0    stw 0x28[$r0.1] = $r0.2  ## spill ## t71
;;								## 5
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 8, line 358,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x2c[$r0.1] = $r0.9  ## spill ## t70
;;								## 6
	c0    ldw $r0.9 = 0x2c[$r0.1]  ## restore ## t70
;;								## 7
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t51
;;								## 8
	c0    cmpne $b0.0 = $r0.9, $r0.0   ## bblock 1, line 359,  t82(I1),  t70,  0(SI32)
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t67
;;								## 9
	c0    ldw $r0.4 = 0x18[$r0.1]  ## restore ## t69
;;								## 10
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t68
;;								## 11
	c0    ldw $r0.8 = 0x20[$r0.1]  ## restore ## t66
;;								## 12
	c0    ldw $r0.7 = 0x24[$r0.1]  ## restore ## t72
;;								## 13
	c0    ldw $r0.2 = 0x28[$r0.1]  ## restore ## t71
;;								## 14
	c0    goto L15?3 ## goto
;;								## 15
.endp
.section .bss
.section .data
.equ ?2.8?2scratch.0, 0x0
.equ ?2.8?2ras_p, 0x10
.equ ?2.8?2spill_p, 0x14
.section .data
.section .text
.equ ?2.8?2auto_size, 0x40
 ## End propagateFloat64NaN
 ## Begin roundAndPackFloat32
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.1 + 52, 12; $r0.3:s32,$r0.4:s32,$r0.5:u32)
roundAndPackFloat32:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    ldw $r0.2 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 0, line 369, t104, 0(I32)
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 0, line 383,  t170(I1),  t155,  0(I32)
	c0    and $r0.6 = $r0.5, 127   ## bblock 0, line 391,  t101,  t8,  127(I32)
	c0    zxth $r0.7 = $r0.4   ## bblock 0, line 395,  t11(I16),  t10
;;								## 0
	c0    cmpge $b0.1 = $r0.7, 253   ## bblock 0, line 395,  t172(I1),  t11(I16),  253(SI32)
	c0    cmpne $b0.2 = $r0.6, $r0.0   ## [spec] bblock 2, line 430,  t173(I1),  t101,  0(SI32)
	c0    xor $r0.8 = $r0.6, 64   ## [spec] bblock 3, line 433,  t71,  t101,  64(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t82
;;								## 1
	c0    cmpeq $r0.9 = $r0.2, $r0.0   ## bblock 0, line 370,  t103,  t104,  0(I32)
	c0    cmpeq $b0.5 = $r0.2, 3   ## bblock 0, line 376,  t151(I1),  t104,  3(SI32)
	c0    cmpeq $b0.3 = $r0.2, 2   ## bblock 0, line 382,  t156(I1),  t104,  2(SI32)
	c0    cmpeq $b0.4 = $r0.2, 1   ## bblock 0, line 386,  t159(I1),  t104,  1(SI32)
	c0    ldw.d $r0.10 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 431, t62, 0(I32)
	c0    cmpeq $r0.8 = $r0.8, $r0.0   ## [spec] bblock 3, line 433,  t72,  t71,  0(I32)
;;								## 2
	c0    stw 0x34[$r0.1] = $r0.3   ## bblock 0, line 362, t83, t155
	c0    slct $r0.2 = $b0.3, $r0.0, 127   ## bblock 0, line 383,  t158,  t156(I1),  0(SI32),  127(SI32)
	c0    slct $r0.7 = $b0.4, $r0.0, 127   ## bblock 0, line 387,  t161,  t159(I1),  0(SI32),  127(SI32)
	c0    cmpeq $b0.6 = $r0.9, $r0.0   ## bblock 0, line 377,  t171(I1),  t103,  0(I32)
	c0    and $r0.8 = $r0.9, $r0.8   ## [spec] bblock 3, line 433,  t174,  t103,  t72
;;								## 3
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.7   ## bblock 0, line 383,  t162,  t170(I1),  t158,  t161
	c0    or $r0.10 = $r0.10, 1   ## [spec] bblock 6, line 431,  t63,  t62,  1(I32)
	c0    orc $r0.8 = $r0.8, $r0.0   ## [spec] bblock 3, line 433,  t73,  t174,  0(I32)
	c0    ldw.d $r0.11 = 0x34[$r0.1]   ## [spec] bblock 4, line 436, t79, t83
;;								## 4
	c0    stw 0x38[$r0.1] = $r0.4   ## bblock 0, line 362, t83, t10
	c0    slctf $r0.2 = $b0.5, $r0.2, $r0.0   ## bblock 0, line 377,  t163,  t151(I1),  t162,  0(SI32)
;;								## 5
	c0    stw 0x3c[$r0.1] = $r0.5   ## bblock 0, line 362, t83, t8
	c0    slct $r0.2 = $b0.6, $r0.2, 64   ## bblock 0, line 377,  t102,  t171(I1),  t163,  64(SI32)
	c0    shl $r0.11 = $r0.11, 31   ## [spec] bblock 4, line 436,  t80,  t79,  31(SI32)
	c0    br $b0.1, L19?3   ## bblock 0, line 395,  t172(I1)
;;								## 6
L20?3:
	c0    ldw.d $r0.4 = 0x3c[$r0.1]   ## [spec] bblock 3, line 432, t65, t83
	c0    brf $b0.2, L21?3   ## bblock 2, line 430,  t173(I1)
;;								## 7
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.10   ## bblock 6, line 431, 0(I32), t63
;;								## 8
L22?3:
	c0    add $r0.4 = $r0.4, $r0.2   ## bblock 3, line 432,  t66,  t65,  t102
;;								## 9
	c0    shru $r0.4 = $r0.4, 7   ## bblock 3, line 432,  t68(I25),  t66,  7(SI32)
;;								## 10
	c0    and $r0.4 = $r0.4, $r0.8   ## bblock 3, line 433,  t75,  t68(I25),  t73
;;								## 11
	c0    stw 0x3c[$r0.1] = $r0.4   ## bblock 3, line 433, t83, t75
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## bblock 3, line 434,  t175(I1),  t75,  0(SI32)
;;								## 12
	c0    ldw.d $r0.2 = 0x3c[$r0.1]   ## [spec] bblock 4, line 436, t76, t83
;;								## 13
	c0    brf $b0.0, L23?3   ## bblock 3, line 434,  t175(I1)
;;								## 14
	c0    stw 0x38[$r0.1] = $r0.0   ## bblock 5, line 435, t83, 0(SI32)
	c0    add $r0.2 = $r0.2, $r0.11   ## bblock 4, line 436,  t176,  t76,  t80
;;								## 15
L24?3:
	c0    ldw $r0.4 = 0x38[$r0.1]   ## bblock 4, line 436, t77, t83
;;								## 16
;;								## 17
	c0    shl $r0.4 = $r0.4, 23   ## bblock 4, line 436,  t78,  t77,  23(SI32)
;;								## 18
.return ret($r0.3:u32)
	c0    add $r0.3 = $r0.2, $r0.4   ## bblock 4, line 436,  t81,  t176,  t78
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 4, line 436,  t83,  ?2.9?2auto_size(I32),  t82
;;								## 19
.trace 2
L23?3:
	c0    add $r0.2 = $r0.2, $r0.11   ## bblock 4, line 436,  t176,  t76,  t80
	c0    goto L24?3 ## goto
;;								## 0
.trace 3
L21?3:
	c0    goto L22?3 ## goto
;;								## 0
.trace 4
L19?3:
	c0    cmpgt $r0.4 = $r0.4, 253   ## bblock 7, line 396,  t13,  t10,  253(SI32)
	c0    cmpeq $r0.7 = $r0.4, 253   ## bblock 7, line 397,  t15,  t10,  253(SI32)
	c0    add $r0.5 = $r0.5, $r0.2   ## bblock 7, line 398,  t18,  t8,  t102
	c0    mov $r0.3 = 5   ## 5(SI32)
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t102
;;								## 0
	c0    cmplt $r0.5 = $r0.5, $r0.0   ## bblock 7, line 398,  t19,  t18,  0(SI32)
;;								## 1
	c0    andl $r0.7 = $r0.7, $r0.5   ## bblock 7, line 398,  t20,  t15,  t19
;;								## 2
	c0    orl $b0.0 = $r0.4, $r0.7   ## bblock 7, line 399,  t178(I1),  t13,  t20
;;								## 3
;;								## 4
	c0    brf $b0.0, L25?3   ## bblock 7, line 399,  t178(I1)
;;								## 5
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 16, line 400,  raddr(float_raise)(P32),  5(SI32)
;;								## 6
	c0    ldw $r0.4 = 0x34[$r0.1]   ## bblock 17, line 401, t23, t83
;;								## 7
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t102
;;								## 8
	c0    shl $r0.4 = $r0.4, 31   ## bblock 17, line 401,  t24,  t23,  31(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t82
;;								## 9
	c0    cmpeq $r0.2 = $r0.2, $r0.0   ## bblock 17, line 402,  t22,  t102,  0(I32)
	c0    add $r0.4 = $r0.4, 2139095040   ## bblock 17, line 402,  t184,  t24,  2139095040(I32)
;;								## 10
	c0    sub $r0.3 = $r0.4, $r0.2   ## bblock 17, line 402,  t25,  t184,  t22
;;								## 11
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 17, line 402,  t83,  ?2.9?2auto_size(I32),  t82
;;								## 12
.trace 5
L25?3:
	c0    mov $r0.3 = 2   ## 2(SI32)
	c0    stw 0x18[$r0.1] = $r0.9  ## spill ## t103
;;								## 0
	c0    ldw.d $r0.4 = 0x3c[$r0.1]   ## [spec] bblock 9, line 407, t121, t83
;;								## 1
	c0    ldw $r0.5 = 0x38[$r0.1]   ## bblock 8, line 404, t26, t83
;;								## 2
	c0    cmpne $r0.7 = $r0.4, $r0.0   ## [spec] bblock 9, line 420,  t129,  t121,  0(I32)
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t102
;;								## 3
	c0    cmplt $b0.0 = $r0.5, $r0.0   ## bblock 8, line 404,  t179(I1),  t26,  0(SI32)
	c0    ldw.d $r0.13 = ((_?1PACKET.1 + 0) + 0)[$r0.0]   ## [spec] bblock 9, line 405, t27, 0(I32)
	c0    sub $r0.12 = $r0.0, $r0.5   ## [spec] bblock 9, line 413,  t120,  0(I32),  t26
	c0    cmplt $r0.5 = $r0.5, -1   ## [spec] bblock 9, line 406,  t30,  t26,  -1(SI32)
;;								## 4
	c0    sub $r0.14 = $r0.0, $r0.12   ## [spec] bblock 9, line 417,  t123,  0(I32),  t120
	c0    shru $r0.15 = $r0.4, $r0.12   ## [spec] bblock 9, line 417,  t124,  t121,  t120
	c0    add $r0.2 = $r0.4, $r0.2   ## [spec] bblock 9, line 407,  t33,  t121,  t102
	c0    cmpge $b0.1 = $r0.12, 32   ## [spec] bblock 9, line 416,  t122(I1),  t120,  32(SI32)
	c0    cmpeq $b0.3 = $r0.12, $r0.0   ## [spec] bblock 9, line 407,  t182(I1),  t120,  0(I32)
;;								## 5
	c0    cmpeq $r0.13 = $r0.13, 1   ## [spec] bblock 9, line 405,  t28,  t27,  1(SI32)
	c0    cmpltu $r0.2 = $r0.2, (~0x7fffffff)   ## [spec] bblock 9, line 407,  t34,  t33,  (~0x7fffffff)(I32)
	c0    and $r0.14 = $r0.14, 31   ## [spec] bblock 9, line 417,  t125,  t123,  31(I32)
	c0    brf $b0.0, L26?3   ## bblock 8, line 404,  t179(I1)
;;								## 6
	c0    orl $r0.13 = $r0.13, $r0.2   ## bblock 9, line 407,  t180,  t28,  t34
	c0    shl $r0.14 = $r0.4, $r0.14   ## bblock 9, line 417,  t126,  t121,  t125
	c0    stw 0x38[$r0.1] = $r0.0   ## bblock 9, line 424, t83, 0(SI32)
;;								## 7
	c0    orl $r0.13 = $r0.13, $r0.5   ## bblock 9, line 407,  t100,  t180,  t30
	c0    cmpne $r0.14 = $r0.14, $r0.0   ## bblock 9, line 417,  t127,  t126,  0(I32)
;;								## 8
	c0    or $r0.15 = $r0.15, $r0.14   ## bblock 9, line 417,  t128,  t124,  t127
;;								## 9
	c0    slct $r0.7 = $b0.1, $r0.7, $r0.15   ## bblock 9, line 417,  t130,  t122(I1),  t129,  t128
;;								## 10
	c0    slct $r0.4 = $b0.3, $r0.4, $r0.7   ## bblock 9, line 407,  t57,  t182(I1),  t121,  t130
;;								## 11
	c0    stw 0x3c[$r0.1] = $r0.4   ## bblock 9, line 422, t83, t57
	c0    and $r0.6 = $r0.4, 127   ## bblock 9, line 425,  t101,  t57,  127(I32)
;;								## 12
	c0    andl $b0.0 = $r0.13, $r0.6   ## bblock 9, line 426,  t183(I1),  t100,  t101
	c0    stw 0x1c[$r0.1] = $r0.6  ## spill ## t101
;;								## 13
;;								## 14
	c0    brf $b0.0, L27?3   ## bblock 9, line 426,  t183(I1)
;;								## 15
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 13, line 427,  raddr(float_raise)(P32),  2(SI32)
;;								## 16
	c0    ldw.d $r0.3 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 431, t62, 0(I32)
;;								## 17
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t101
;;								## 18
	c0    or $r0.10 = $r0.3, 1   ## [spec] bblock 6, line 431,  t63,  t62,  1(I32)
	c0    ldw $r0.9 = 0x18[$r0.1]  ## restore ## t103
;;								## 19
	c0    cmpne $b0.2 = $r0.6, $r0.0   ## bblock 2, line 430,  t173(I1),  t101,  0(SI32)
	c0    xor $r0.3 = $r0.6, 64   ## [spec] bblock 3, line 433,  t71,  t101,  64(SI32)
	c0    ldw.d $r0.4 = 0x34[$r0.1]   ## [spec] bblock 4, line 436, t79, t83
;;								## 20
	c0    cmpeq $r0.3 = $r0.3, $r0.0   ## [spec] bblock 3, line 433,  t72,  t71,  0(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t82
;;								## 21
	c0    and $r0.3 = $r0.9, $r0.3   ## [spec] bblock 3, line 433,  t174,  t103,  t72
	c0    shl $r0.11 = $r0.4, 31   ## [spec] bblock 4, line 436,  t80,  t79,  31(SI32)
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t102
;;								## 22
	c0    orc $r0.8 = $r0.3, $r0.0   ## [spec] bblock 3, line 433,  t73,  t174,  0(I32)
	c0    goto L20?3 ## goto
;;								## 23
.trace 7
L27?3:
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t101
;;								## 0
	c0    ldw $r0.9 = 0x18[$r0.1]  ## restore ## t103
;;								## 1
	c0    cmpne $b0.2 = $r0.6, $r0.0   ## bblock 2, line 430,  t173(I1),  t101,  0(SI32)
	c0    xor $r0.3 = $r0.6, 64   ## [spec] bblock 3, line 433,  t71,  t101,  64(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t82
;;								## 2
	c0    cmpeq $r0.3 = $r0.3, $r0.0   ## [spec] bblock 3, line 433,  t72,  t71,  0(I32)
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t102
;;								## 3
	c0    and $r0.3 = $r0.9, $r0.3   ## [spec] bblock 3, line 433,  t174,  t103,  t72
;;								## 4
	c0    orc $r0.8 = $r0.3, $r0.0   ## [spec] bblock 3, line 433,  t73,  t174,  0(I32)
	c0    goto L20?3 ## goto
;;								## 5
.trace 6
L26?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t82
;;								## 0
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t102
;;								## 1
	c0    ldw $r0.9 = 0x18[$r0.1]  ## restore ## t103
;;								## 2
	c0    goto L20?3 ## goto
;;								## 3
.endp
.section .bss
.section .data
.equ ?2.9?2scratch.0, 0x0
.equ ?2.9?2ras_p, 0x10
.equ ?2.9?2spill_p, 0x14
.equ ?2.9?2pab_p.1, 0x34
.section .data
.section .text
.equ ?2.9?2auto_size, 0x40
 ## End roundAndPackFloat32
 ## Begin normalizeRoundAndPackFloat32
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:s32,$r0.4:s32,$r0.5:u32)
normalizeRoundAndPackFloat32:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t11
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t25
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t26
	c0    mov $r0.3 = $r0.5   ## t27
;;								## 3
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 0, line 441,  raddr(countLeadingZeros32)(P32),  t27
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t27
;;								## 4
	c0    add $r0.6 = $r0.3, -1   ## bblock 1, line 441,  t9,  t0,  -1(SI32)
	c0    ldw $r0.2 = 0x18[$r0.1]  ## restore ## t26
;;								## 5
	c0    ldw $r0.7 = 0x1c[$r0.1]  ## restore ## t27
;;								## 6
	c0    add $r0.2 = $r0.2, 1   ## bblock 1, line 442,  t32,  t26,  1(SI32)
;;								## 7
	c0    sub $r0.4 = $r0.2, $r0.3   ## bblock 1, line 442,  t7,  t32,  t0
	c0    shl $r0.5 = $r0.7, $r0.6   ## bblock 1, line 442,  t10,  t27,  t9
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t25
;;								## 8
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 1, line 442,  raddr(roundAndPackFloat32)(P32),  t25,  t7,  t10
;;								## 9
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t11
;;								## 10
;;								## 11
;;								## 12
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 442,  t12,  ?2.10?2auto_size(I32),  t11
;;								## 13
.endp
.section .bss
.section .data
.equ ?2.10?2scratch.0, 0x0
.equ ?2.10?2ras_p, 0x10
.equ ?2.10?2spill_p, 0x14
.section .data
.section .text
.equ ?2.10?2auto_size, 0x20
 ## End normalizeRoundAndPackFloat32
.equ _?1TEMPLATEPACKET.9, 0x0
 ## Begin normalizeFloat64Subnormal
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:u32)
normalizeFloat64Subnormal:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 453,  t93(I1),  t67,  0(SI32)
	c0    mov $r0.2 = $r0.3   ## t67
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t51
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.7  ## spill ## t71
	c0    mov $r0.3 = $r0.4   ## t68
	c0    brf $b0.0, L28?3   ## bblock 0, line 453,  t93(I1)
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t70
;;								## 3
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t69
;;								## 4
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 4, line 454,  raddr(countLeadingZeros32)(P32),  t68
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t68
;;								## 5
	c0    add $r0.2 = $r0.3, -11   ## bblock 5, line 454,  t79,  t1,  -11(SI32)
	c0    sub $r0.5 = -20, $r0.3   ## bblock 5, line 466,  t21,  -20(SI32),  t1
	c0    ldw $r0.4 = 0x20[$r0.1]  ## restore ## t68
;;								## 6
	c0    sub $r0.3 = $r0.0, $r0.2   ## bblock 5, line 457,  t83,  0(I32),  t79
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 5, line 456,  t82(I1),  t79,  0(SI32)
	c0    and $r0.7 = $r0.2, 31   ## bblock 5, line 458,  t85,  t79,  31(I32)
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t70
;;								## 7
	c0    shru $r0.3 = $r0.4, $r0.3   ## bblock 5, line 457,  t84,  t68,  t83
	c0    shl $r0.2 = $r0.4, $r0.2   ## bblock 5, line 461,  t87,  t68,  t79
	c0    shl $r0.7 = $r0.4, $r0.7   ## bblock 5, line 458,  t86,  t68,  t85
	c0    ldw $r0.8 = 0x14[$r0.1]  ## restore ## t71
;;								## 8
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.3   ## bblock 5, line 457,  t78,  t82(I1),  t87,  t84
	c0    slctf $r0.7 = $b0.0, $r0.7, $r0.0   ## bblock 5, line 458,  t77,  t82(I1),  t86,  0(SI32)
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t69
;;								## 9
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t51
;;								## 10
	c0    stw 0[$r0.6] = $r0.2   ## bblock 5, line 464, t70, t78
;;								## 11
	c0    stw 0[$r0.8] = $r0.7   ## bblock 5, line 465, t71, t77
;;								## 12
.return ret()
	c0    stw 0[$r0.4] = $r0.5   ## bblock 5, line 466, t69, t21
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 483,  t52,  ?2.11?2auto_size(I32),  t51
;;								## 13
.trace 2
L28?3:
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t69
	c0    mov $r0.3 = $r0.2   ## t67
;;								## 0
	c0    stw 0x18[$r0.1] = $r0.6  ## spill ## t70
;;								## 1
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t68
;;								## 2
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 1, line 469,  raddr(countLeadingZeros32)(P32),  t67
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t67
;;								## 3
	c0    add $r0.2 = $r0.3, -11   ## bblock 2, line 469,  t48,  t23,  -11(SI32)
	c0    sub $r0.3 = 12, $r0.3   ## bblock 2, line 481,  t49,  12(SI32),  t23
	c0    ldw $r0.4 = 0x20[$r0.1]  ## restore ## t68
;;								## 4
	c0    sub $r0.5 = $r0.0, $r0.2   ## bblock 2, line 479,  t39,  0(I32),  t48
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 2, line 479,  t94(I1),  t48,  0(SI32)
	c0    ldw $r0.6 = 0x24[$r0.1]  ## restore ## t67
;;								## 5
	c0    shl $r0.7 = $r0.4, $r0.2   ## bblock 2, line 476,  t33,  t68,  t48
	c0    and $r0.5 = $r0.5, 31   ## bblock 2, line 479,  t40,  t39,  31(I32)
	c0    ldw $r0.8 = 0x14[$r0.1]  ## restore ## t71
;;								## 6
	c0    shl $r0.2 = $r0.6, $r0.2   ## bblock 2, line 479,  t44,  t67,  t48
	c0    shru $r0.4 = $r0.4, $r0.5   ## bblock 2, line 479,  t41,  t68,  t40
	c0    ldw $r0.5 = 0x18[$r0.1]  ## restore ## t70
;;								## 7
	c0    or $r0.2 = $r0.2, $r0.4   ## bblock 2, line 479,  t45,  t44,  t41
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t69
;;								## 8
	c0    slct $r0.6 = $b0.0, $r0.6, $r0.2   ## bblock 2, line 479,  t46,  t94(I1),  t67,  t45
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t51
;;								## 9
	c0    stw 0[$r0.8] = $r0.7   ## bblock 2, line 476, t71, t33
;;								## 10
	c0    stw 0[$r0.5] = $r0.6   ## bblock 2, line 477, t70, t46
;;								## 11
.return ret()
	c0    stw 0[$r0.4] = $r0.3   ## bblock 2, line 481, t69, t49
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 483,  t52,  ?2.11?2auto_size(I32),  t51
;;								## 12
.endp
.section .bss
.section .data
.equ ?2.11?2scratch.0, 0x0
.equ ?2.11?2ras_p, 0x10
.equ ?2.11?2spill_p, 0x14
.section .data
.section .text
.equ ?2.11?2auto_size, 0x40
 ## End normalizeFloat64Subnormal
 ## Begin packFloat64
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32)
packFloat64:
.trace 1
	      ## auto_size == 0
	c0    shl $r0.4 = $r0.4, 20   ## bblock 0, line 490,  t3,  t2,  20(SI32)
	c0    shl $r0.3 = $r0.3, 31   ## bblock 0, line 490,  t5,  t4,  31(SI32)
;;								## 0
	c0    add $r0.5 = $r0.5, $r0.3   ## bblock 0, line 490,  t30,  t1,  t5
;;								## 1
.return ret($r0.3:u32,$r0.4:u32)
	c0    add $r0.3 = $r0.5, $r0.4   ## bblock 0, line 490,  t7,  t30,  t3
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 491,  t10,  ?2.12?2auto_size(I32),  t9
	c0    mov $r0.4 = $r0.6   ## t8
;;								## 2
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.12?2auto_size, 0x0
 ## End packFloat64
 ## Begin roundAndPackFloat64
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.1 + 48, 20; $r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32,$r0.7:u32)
roundAndPackFloat64:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    ldw $r0.8 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 0, line 501, t204, 0(I32)
	c0    cmplt $r0.2 = $r0.7, $r0.0   ## bblock 0, line 503,  t202,  t3,  0(SI32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t167
;;								## 1
	c0    stw 0x30[$r0.1] = $r0.3   ## bblock 0, line 495, t168, t178
	c0    cmpeq $r0.9 = $r0.8, $r0.0   ## bblock 0, line 502,  t203,  t204,  0(I32)
	c0    cmpeq $b0.0 = $r0.8, 3   ## [spec] bblock 36, line 505,  t294(I1),  t204,  3(SI32)
;;								## 2
	c0    stw 0x34[$r0.1] = $r0.4   ## bblock 0, line 495, t168, t179
	c0    cmpeq $b0.1 = $r0.9, $r0.0   ## bblock 0, line 504,  t264(I1),  t203,  0(SI32)
;;								## 3
	c0    stw 0x38[$r0.1] = $r0.5   ## bblock 0, line 495, t168, t180
;;								## 4
	c0    stw 0x3c[$r0.1] = $r0.6   ## bblock 0, line 495, t168, t181
;;								## 5
	c0    stw 0x40[$r0.1] = $r0.7   ## bblock 0, line 495, t168, t3
	c0    brf $b0.1, L29?3   ## bblock 0, line 504,  t264(I1)
;;								## 6
	c0    mov $r0.2 = $r0.0   ## [spec] bblock 40, line 506,  t202,  0(SI32)
	c0    brf $b0.0, L30?3   ## bblock 36, line 505,  t294(I1)
;;								## 7
.trace 2
L29?3:
	c0    ldw $r0.7 = 0x34[$r0.1]   ## bblock 1, line 520, t16, t168
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## [spec] bblock 3, line 604,  t267(I1),  t202,  0(SI32)
;;								## 0
	c0    ldw.d $r0.10 = 0x40[$r0.1]   ## [spec] bblock 2, line 602, t130, t168
;;								## 1
	c0    zxth $r0.11 = $r0.7   ## bblock 1, line 520,  t17(I16),  t16
	c0    ldw.d $r0.12 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 9, line 603, t131, 0(I32)
;;								## 2
	c0    cmpge $b0.1 = $r0.11, 2045   ## bblock 1, line 520,  t265(I1),  t17(I16),  2045(SI32)
	c0    cmpne $b0.2 = $r0.10, $r0.0   ## [spec] bblock 2, line 602,  t266(I1),  t130,  0(SI32)
	c0    ldw.d $r0.13 = 0x40[$r0.1]   ## [spec] bblock 8, line 616, t153, t168
;;								## 3
	c0    or $r0.12 = $r0.12, 1   ## [spec] bblock 9, line 603,  t132,  t131,  1(I32)
	c0    ldw.d $r0.14 = 0x3c[$r0.1]   ## [spec] bblock 8, line 609, t144, t168
;;								## 4
	c0    ldw.d $r0.11 = 0x38[$r0.1]   ## [spec] bblock 8, line 608, t147, t168
	c0    add $r0.10 = $r0.13, $r0.13   ## [spec] bblock 8, line 616,  t154,  t153,  t153
	c0    br $b0.1, L31?3   ## bblock 1, line 520,  t265(I1)
;;								## 5
L32?3:
	c0    add $r0.7 = $r0.14, 1   ## [spec] bblock 8, line 612,  t150,  t144,  1(SI32)
	c0    cmpeq $r0.10 = $r0.10, $r0.0   ## [spec] bblock 8, line 616,  t155,  t154,  0(I32)
	c0    ldw.d $r0.3 = 0x30[$r0.1]   ## [spec] bblock 5, line 622, t163, t168
	c0    brf $b0.2, L33?3   ## bblock 2, line 602,  t266(I1)
;;								## 6
	c0    cmpltu $r0.14 = $r0.7, $r0.14   ## [spec] bblock 8, line 614,  t145,  t150,  t144
	c0    and $r0.9 = $r0.9, $r0.10   ## [spec] bblock 8, line 616,  t269,  t203,  t155
	c0    ldw.d $r0.4 = 0x34[$r0.1]   ## [spec] bblock 5, line 622, t164, t168
;;								## 7
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.12   ## bblock 9, line 603, 0(I32), t132
	c0    add $r0.11 = $r0.11, $r0.14   ## [spec] bblock 8, line 614,  t148,  t147,  t145
	c0    orc $r0.9 = $r0.9, $r0.0   ## [spec] bblock 8, line 616,  t156,  t269,  0(I32)
	c0    brf $b0.0, L34?3   ## bblock 3, line 604,  t267(I1)
;;								## 8
L35?3:
	c0    stw 0x38[$r0.1] = $r0.11   ## bblock 8, line 614, t168, t148
	c0    and $r0.7 = $r0.7, $r0.9   ## bblock 8, line 616,  t157,  t150,  t156
;;								## 9
	c0    ldw $r0.5 = 0x38[$r0.1]   ## bblock 5, line 622, t165, t168
;;								## 10
	c0    stw 0x3c[$r0.1] = $r0.7   ## bblock 8, line 616, t168, t157
;;								## 11
L36?3:
	c0    ldw $r0.6 = 0x3c[$r0.1]   ## bblock 5, line 622, t166, t168
;;								## 12
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 5, line 622,  raddr(packFloat64)(P32),  t163,  t164,  t165,  t166
;;								## 13
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t167
;;								## 14
;;								## 15
;;								## 16
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 622,  t168,  ?2.13?2auto_size(I32),  t167
;;								## 17
.trace 3
L34?3:
	c0    ldw $r0.2 = 0x3c[$r0.1]   ## bblock 4, line 619, t158, t168
;;								## 0
	c0    ldw $r0.6 = 0x38[$r0.1]   ## bblock 4, line 619, t159, t168
;;								## 1
	c0    ldw.d $r0.5 = 0x38[$r0.1]   ## [spec] bblock 5, line 622, t165, t168
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.6   ## bblock 4, line 619,  t160,  t158,  t159
;;								## 3
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 4, line 619,  t268(I1),  t160,  0(SI32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L37?3   ## bblock 4, line 619,  t268(I1)
;;								## 6
	c0    stw 0x34[$r0.1] = $r0.0   ## bblock 7, line 620, t168, 0(SI32)
;;								## 7
	c0    ldw $r0.4 = 0x34[$r0.1]   ## bblock 5, line 622, t164, t168
;;								## 8
	c0    goto L36?3 ## goto
;;								## 9
.trace 7
L37?3:
	c0    ldw $r0.4 = 0x34[$r0.1]   ## bblock 5, line 622, t164, t168
;;								## 0
	c0    ldw $r0.5 = 0x38[$r0.1]   ## bblock 5, line 622, t165, t168
;;								## 1
	c0    goto L36?3 ## goto
;;								## 2
.trace 4
L33?3:
	c0    cmpltu $r0.14 = $r0.7, $r0.14   ## [spec] bblock 8, line 614,  t145,  t150,  t144
	c0    and $r0.9 = $r0.9, $r0.10   ## [spec] bblock 8, line 616,  t269,  t203,  t155
	c0    ldw.d $r0.4 = 0x34[$r0.1]   ## [spec] bblock 5, line 622, t164, t168
	c0    brf $b0.0, L38?3   ## bblock 3, line 604,  t267(I1)
;;								## 0
	c0    add $r0.11 = $r0.11, $r0.14   ## bblock 8, line 614,  t148,  t147,  t145
	c0    orc $r0.9 = $r0.9, $r0.0   ## bblock 8, line 616,  t156,  t269,  0(I32)
	c0    goto L35?3 ## goto
;;								## 1
.trace 8
L38?3:
	c0    goto L34?3 ## goto
;;								## 0
.trace 9
L31?3:
	c0    cmpgt $r0.7 = $r0.7, 2045   ## bblock 10, line 521,  t19,  t16,  2045(SI32)
	c0    cmpeq $r0.5 = $r0.7, 2045   ## bblock 10, line 522,  t21,  t16,  2045(SI32)
	c0    mov $r0.3 = 5   ## 5(SI32)
	c0    stw 0x14[$r0.1] = $r0.8  ## spill ## t204
;;								## 0
	c0    ldw $r0.6 = 0x38[$r0.1]   ## bblock 10, line 523, t22, t168
	c0    andl $r0.5 = $r0.5, $r0.2   ## bblock 10, line 524,  t270,  t21,  t202
;;								## 1
	c0    ldw $r0.11 = 0x3c[$r0.1]   ## bblock 10, line 523, t24, t168
;;								## 2
	c0    cmpeq $r0.6 = $r0.6, 2097151   ## bblock 10, line 523,  t23,  t22,  2097151(SI32)
;;								## 3
	c0    cmpeq $r0.11 = $r0.11, (~0x0)   ## bblock 10, line 523,  t25,  t24,  (~0x0)(I32)
;;								## 4
	c0    andl $r0.6 = $r0.6, $r0.11   ## bblock 10, line 524,  t271,  t23,  t25
;;								## 5
	c0    andl $r0.5 = $r0.5, $r0.6   ## bblock 10, line 524,  t27,  t270,  t271
;;								## 6
	c0    orl $b0.1 = $r0.7, $r0.5   ## bblock 10, line 525,  t273(I1),  t19,  t27
;;								## 7
;;								## 8
	c0    brf $b0.1, L39?3   ## bblock 10, line 525,  t273(I1)
;;								## 9
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 30, line 526,  raddr(float_raise)(P32),  5(SI32)
;;								## 10
	c0    ldw $r0.3 = 0x30[$r0.1]   ## bblock 31, line 528, t34, t168
	c0    mov $r0.6 = (~0x0)   ## (~0x0)(I32)
	c0    mov $r0.4 = 2046   ## 2046(SI32)
	c0    mov $r0.5 = 1048575   ## 1048575(I32)
;;								## 11
	c0    ldw $r0.8 = 0x14[$r0.1]  ## restore ## t204
;;								## 12
	c0    cmpeq $r0.7 = $r0.3, $r0.0   ## bblock 31, line 529,  t291,  t34,  0(I32)
;;								## 13
	c0    cmpeq $r0.13 = $r0.8, 3   ## bblock 31, line 527,  t29,  t204,  3(SI32)
	c0    cmpeq $r0.8 = $r0.8, 2   ## bblock 31, line 528,  t32,  t204,  2(SI32)
	c0    cmpeq $r0.11 = $r0.8, 1   ## bblock 31, line 529,  t36,  t204,  1(SI32)
;;								## 14
	c0    andl $r0.8 = $r0.3, $r0.8   ## bblock 31, line 528,  t33,  t34,  t32
	c0    andl $r0.11 = $r0.11, $r0.7   ## bblock 31, line 529,  t37,  t36,  t291
;;								## 15
	c0    orl $r0.13 = $r0.13, $r0.11   ## bblock 31, line 530,  t292,  t29,  t37
;;								## 16
	c0    orl $b0.0 = $r0.13, $r0.8   ## bblock 31, line 530,  t293(I1),  t292,  t33
;;								## 17
;;								## 18
	c0    brf $b0.0, L40?3   ## bblock 31, line 530,  t293(I1)
;;								## 19
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 34, line 531,  raddr(packFloat64)(P32),  t34,  2046(SI32),  1048575(I32),  (~0x0)(I32)
;;								## 20
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t167
;;								## 21
;;								## 22
;;								## 23
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 35, line 531,  t168,  ?2.13?2auto_size(I32),  t167
;;								## 24
.trace 11
L40?3:
	c0    ldw $r0.3 = 0x30[$r0.1]   ## bblock 32, line 533, t43, t168
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 32, line 533,  raddr(packFloat64)(P32),  t43,  2047(SI32),  0(I32),  0(I32)
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t167
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 33, line 533,  t168,  ?2.13?2auto_size(I32),  t167
;;								## 5
.trace 10
L39?3:
	c0    add $r0.5 = $r0.1, 0x38   ## [spec] bblock 12, line 548,  t192,  t168,  offset(zSig0?1.53)(P32)
	c0    add $r0.6 = $r0.1, 0x3c   ## [spec] bblock 12, line 549,  t191,  t168,  offset(zSig1?1.53)(P32)
	c0    cmpeq $r0.4 = $r0.2, $r0.0   ## [spec] bblock 12, line 540,  t277,  t202,  0(I32)
	c0    add $r0.7 = $r0.1, 0x40   ## [spec] bblock 12, line 550,  t190,  t168,  offset(zSig2?1.53)(P32)
	c0    stw 0x18[$r0.1] = $r0.9  ## spill ## t203
;;								## 0
	c0    ldw.d $r0.11 = ((_?1PACKET.1 + 0) + 0)[$r0.0]   ## [spec] bblock 12, line 536, t45, 0(I32)
	c0    mov $r0.3 = 2   ## 2(SI32)
;;								## 1
	c0    ldw.d $r0.13 = 0x38[$r0.1]   ## [spec] bblock 12, line 539, t200, t168
;;								## 2
	c0    cmpeq $r0.11 = $r0.11, 1   ## [spec] bblock 12, line 536,  t46,  t45,  1(SI32)
	c0    ldw.d $r0.15 = 0x3c[$r0.1]   ## [spec] bblock 12, line 540, t199, t168
;;								## 3
	c0    ldw $r0.18 = 0x34[$r0.1]   ## bblock 11, line 535, t44, t168
	c0    cmpltu $r0.16 = $r0.13, 2097151   ## [spec] bblock 12, line 539,  t51,  t200,  2097151(SI32)
	c0    cmpeq $r0.17 = $r0.13, 2097151   ## [spec] bblock 12, line 540,  t53,  t200,  2097151(SI32)
	c0    orl $r0.11 = $r0.11, $r0.4   ## [spec] bblock 12, line 540,  t276,  t46,  t277
	c0    mov $r0.19 = $r0.13   ## [spec] bblock 29, line 539,  t195,  t200
;;								## 4
	c0    cmpltu $r0.4 = $r0.15, (~0x0)   ## [spec] bblock 12, line 540,  t55,  t199,  (~0x0)(I32)
	c0    orl $r0.11 = $r0.11, $r0.16   ## [spec] bblock 12, line 540,  t279,  t276,  t51
	c0    ldw.d $r0.20 = 0x40[$r0.1]   ## [spec] bblock 12, line 544, t198, t168
	c0    mov $r0.21 = $r0.15   ## [spec] bblock 29, line 540,  t194,  t199
;;								## 5
	c0    cmplt $b0.1 = $r0.18, $r0.0   ## bblock 11, line 535,  t274(I1),  t44,  0(SI32)
	c0    sub $r0.22 = $r0.0, $r0.18   ## [spec] bblock 12, line 551,  t197,  0(I32),  t44
	c0    cmplt $r0.16 = $r0.18, -1   ## [spec] bblock 12, line 537,  t48,  t44,  -1(SI32)
	c0    andl $r0.17 = $r0.17, $r0.4   ## [spec] bblock 12, line 540,  t56,  t53,  t55
;;								## 6
	c0    sub $r0.4 = $r0.0, $r0.22   ## [spec] bblock 12, line 551,  t64,  0(I32),  t197
	c0    orl $r0.16 = $r0.16, $r0.17   ## [spec] bblock 12, line 540,  t278,  t48,  t56
	c0    cmpeq $b0.3 = $r0.22, $r0.0   ## [spec] bblock 12, line 551,  t281(I1),  t197,  0(SI32)
	c0    mov $r0.23 = $r0.20   ## [spec] bblock 29, line 544,  t193,  t198
;;								## 7
	c0    orl $r0.11 = $r0.11, $r0.16   ## [spec] bblock 12, line 540,  t201,  t279,  t278
	c0    and $r0.4 = $r0.4, 31   ## [spec] bblock 12, line 546,  t196,  t64,  31(I32)
	c0    brf $b0.1, L41?3   ## bblock 11, line 535,  t274(I1)
;;								## 8
	c0    brf $b0.3, L42?3   ## bblock 12, line 551,  t281(I1)
;;								## 9
L43?3:
	c0    stw 0[$r0.7] = $r0.23   ## bblock 19, line 582, t190, t193
;;								## 10
	c0    ldw $r0.4 = 0x40[$r0.1]   ## bblock 19, line 587, t117, t168
;;								## 11
	c0    stw 0[$r0.6] = $r0.21   ## bblock 19, line 583, t191, t194
;;								## 12
	c0    stw 0[$r0.5] = $r0.19   ## bblock 19, line 584, t192, t195
	c0    andl $b0.1 = $r0.11, $r0.4   ## bblock 19, line 587,  t284(I1),  t201,  t117
;;								## 13
	c0    stw 0x34[$r0.1] = $r0.0   ## bblock 19, line 586, t168, 0(SI32)
;;								## 14
	c0    brf $b0.1, L44?3   ## bblock 19, line 587,  t284(I1)
;;								## 15
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 25, line 588,  raddr(float_raise)(P32),  2(SI32)
;;								## 16
L44?3:
	c0    ldw.d $r0.3 = 0x30[$r0.1]   ## [spec] bblock 20, line 593, t248, t168
;;								## 17
	c0    ldw.d $r0.4 = 0x40[$r0.1]   ## [spec] bblock 20, line 590, t253, t168
;;								## 18
	c0    cmpne $b0.1 = $r0.3, $r0.0   ## bblock 20, line 594,  t287(I1),  t248,  0(I32)
	c0    ldw $r0.8 = 0x14[$r0.1]  ## restore ## t204
;;								## 19
	c0    cmplt $r0.3 = $r0.4, $r0.0   ## bblock 20, line 590,  t246,  t253,  0(SI32)
	c0    ldw $r0.9 = 0x18[$r0.1]  ## restore ## t203
;;								## 20
	c0    cmpeq $r0.5 = $r0.8, 1   ## bblock 20, line 594,  t249,  t204,  1(SI32)
	c0    cmpeq $r0.6 = $r0.8, 2   ## bblock 20, line 597,  t252,  t204,  2(SI32)
	c0    ldw $r0.7 = 0x40[$r0.1]   ## bblock 2, line 602, t130, t168
;;								## 21
	c0    andl $r0.5 = $r0.4, $r0.5   ## bblock 20, line 594,  t251,  t253,  t249
	c0    andl $r0.6 = $r0.4, $r0.6   ## bblock 20, line 597,  t254,  t253,  t252
	c0    cmpne $b0.3 = $r0.9, $r0.0   ## bblock 20, line 590,  t288(I1),  t203,  0(I32)
	c0    ldw.d $r0.11 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 9, line 603, t131, 0(I32)
;;								## 22
	c0    slct $r0.5 = $b0.1, $r0.5, $r0.6   ## bblock 20, line 594,  t255,  t287(I1),  t251,  t254
	c0    cmpne $b0.2 = $r0.7, $r0.0   ## bblock 2, line 602,  t266(I1),  t130,  0(SI32)
	c0    ldw.d $r0.13 = 0x40[$r0.1]   ## [spec] bblock 8, line 616, t153, t168
;;								## 23
	c0    slct $r0.2 = $b0.3, $r0.3, $r0.5   ## bblock 20, line 590,  t202,  t288(I1),  t246,  t255
	c0    or $r0.12 = $r0.11, 1   ## [spec] bblock 9, line 603,  t132,  t131,  1(I32)
	c0    ldw.d $r0.14 = 0x3c[$r0.1]   ## [spec] bblock 8, line 609, t144, t168
;;								## 24
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## [spec] bblock 3, line 604,  t267(I1),  t202,  0(SI32)
	c0    add $r0.10 = $r0.13, $r0.13   ## [spec] bblock 8, line 616,  t154,  t153,  t153
;;								## 25
	c0    ldw.d $r0.11 = 0x38[$r0.1]   ## [spec] bblock 8, line 608, t147, t168
	c0    goto L32?3 ## goto
;;								## 26
.trace 14
L42?3:
	c0    cmplt $b0.0 = $r0.22, 32   ## bblock 13, line 557,  t282(I1),  t197,  32(SI32)
	c0    shl $r0.10 = $r0.15, $r0.4   ## [spec] bblock 28, line 558,  t209,  t199,  t196
	c0    shru $r0.12 = $r0.15, $r0.22   ## [spec] bblock 28, line 559,  t79,  t199,  t197
	c0    shl $r0.14 = $r0.13, $r0.4   ## [spec] bblock 28, line 559,  t82,  t200,  t196
	c0    shru $r0.19 = $r0.13, $r0.22   ## [spec] bblock 28, line 560,  t195,  t200,  t197
	c0    cmpne $r0.2 = $r0.20, $r0.0   ## [spec] bblock 18, line 580,  t108,  t198,  0(I32)
	c0    mov $r0.3 = 2   ## 2(SI32)
;;								## 0
	c0    or $r0.21 = $r0.12, $r0.14   ## [spec] bblock 28, line 559,  t194,  t79,  t82
	c0    or $r0.23 = $r0.2, $r0.10   ## [spec] bblock 18, line 580,  t193,  t108,  t209
;;								## 1
	c0    brf $b0.0, L45?3   ## bblock 13, line 557,  t282(I1)
	      ## goto
;;
	c0    goto L43?3 ## goto
;;								## 2
.trace 15
L45?3:
	c0    cmpeq $b0.2 = $r0.22, 32   ## bblock 14, line 563,  t231(I1),  t197,  32(SI32)
	c0    or $r0.8 = $r0.15, $r0.20   ## bblock 14, line 568,  t234,  t199,  t198
	c0    cmpge $b0.1 = $r0.22, 64   ## bblock 14, line 569,  t235(I1),  t197,  64(SI32)
	c0    cmpne $r0.2 = $r0.13, $r0.0   ## bblock 14, line 574,  t239,  t200,  0(I32)
	c0    cmpeq $b0.0 = $r0.22, 64   ## bblock 14, line 574,  t283(I1),  t197,  64(SI32)
	c0    shl $r0.4 = $r0.13, $r0.4   ## bblock 14, line 570,  t236,  t200,  t196
	c0    and $r0.22 = $r0.22, 31   ## bblock 14, line 571,  t237,  t197,  31(I32)
	c0    mov $r0.19 = $r0.0   ## bblock 14, line 575,  t195,  0(SI32)
;;								## 0
	c0    slct $r0.2 = $b0.0, $r0.13, $r0.2   ## bblock 14, line 574,  t241,  t283(I1),  t200,  t239
	c0    shru $r0.22 = $r0.13, $r0.22   ## bblock 14, line 571,  t238,  t200,  t237
	c0    slct $r0.20 = $b0.2, $r0.20, $r0.8   ## bblock 14, line 568,  t198,  t231(I1),  t198,  t234
	c0    mov $r0.3 = 2   ## 2(SI32)
;;								## 1
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.4   ## bblock 14, line 570,  t242,  t235(I1),  t241,  t236
	c0    slctf $r0.22 = $b0.1, $r0.22, $r0.0   ## bblock 14, line 571,  t243,  t235(I1),  t238,  0(SI32)
	c0    cmpne $r0.20 = $r0.20, $r0.0   ## bblock 18, line 580,  t108,  t198,  0(I32)
;;								## 2
	c0    slct $r0.10 = $b0.2, $r0.15, $r0.2   ## bblock 14, line 564,  t209,  t231(I1),  t199,  t242
	c0    slct $r0.21 = $b0.2, $r0.13, $r0.22   ## bblock 14, line 565,  t194,  t231(I1),  t200,  t243
;;								## 3
	c0    or $r0.23 = $r0.20, $r0.10   ## bblock 18, line 580,  t193,  t108,  t209
	c0    goto L43?3 ## goto
;;								## 4
.trace 12
L41?3:
	c0    ldw $r0.9 = 0x18[$r0.1]  ## restore ## t203
;;								## 0
	c0    ldw.d $r0.11 = 0x38[$r0.1]   ## [spec] bblock 8, line 608, t147, t168
	c0    goto L32?3 ## goto
;;								## 1
.trace 5
L30?3:
	c0    ldw $r0.3 = 0x30[$r0.1]   ## bblock 37, line 509, t224, t168
	c0    cmpeq $r0.4 = $r0.8, 1   ## bblock 37, line 510,  t225,  t204,  1(SI32)
	c0    cmpeq $r0.5 = $r0.8, 2   ## bblock 37, line 513,  t228,  t204,  2(SI32)
;;								## 0
	c0    ldw.d $r0.6 = 0x40[$r0.1]   ## [spec] bblock 37, line 510, t229, t168
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 37, line 510,  t297(I1),  t224,  0(I32)
;;								## 2
	c0    andl $r0.4 = $r0.4, $r0.6   ## bblock 37, line 510,  t227,  t225,  t229
	c0    andl $r0.6 = $r0.6, $r0.5   ## bblock 37, line 513,  t230,  t229,  t228
;;								## 3
	c0    slct $r0.2 = $b0.0, $r0.4, $r0.6   ## bblock 37, line 510,  t202,  t297(I1),  t227,  t230
	c0    goto L29?3 ## goto
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.13?2scratch.0, 0x0
.equ ?2.13?2ras_p, 0x10
.equ ?2.13?2spill_p, 0x14
.equ ?2.13?2pab_p.1, 0x30
.section .data
.section .text
.equ ?2.13?2auto_size, 0x40
 ## End roundAndPackFloat64
 ## Begin normalizeRoundAndPackFloat64
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.1 + 48, 16; $r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32)
normalizeRoundAndPackFloat64:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    cmpeq $b0.0 = $r0.5, $r0.0   ## bblock 0, line 631,  t209(I1),  t0,  0(SI32)
	c0    add $r0.2 = $r0.4, -32   ## [spec] bblock 18, line 634,  t3,  t109,  -32(SI32)
;;								## 0
	c0    stw 0x14[$r0.1] = $l0.0  ## spill ## t97
;;								## 1
	c0    stw 0x30[$r0.1] = $r0.3   ## bblock 0, line 626, t98, t108
;;								## 2
	c0    stw 0x34[$r0.1] = $r0.4   ## bblock 0, line 626, t98, t109
;;								## 3
	c0    stw 0x38[$r0.1] = $r0.5   ## bblock 0, line 626, t98, t0
;;								## 4
	c0    stw 0x3c[$r0.1] = $r0.6   ## bblock 0, line 626, t98, t111
	c0    brf $b0.0, L46?3   ## bblock 0, line 631,  t209(I1)
;;								## 5
	c0    stw 0x38[$r0.1] = $r0.6   ## bblock 18, line 632, t98, t111
;;								## 6
	c0    ldw $r0.3 = 0x38[$r0.1]   ## bblock 1, line 636, t5, t98
;;								## 7
	c0    stw 0x3c[$r0.1] = $r0.0   ## bblock 18, line 633, t98, 0(SI32)
;;								## 8
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    stw 0x34[$r0.1] = $r0.2   ## bblock 18, line 634, t98, t3
	c0    call $l0.0 = countLeadingZeros32   ## bblock 1, line 636,  raddr(countLeadingZeros32)(P32),  t5
;;								## 9
L47?3:
	c0    add $r0.3 = $r0.3, -11   ## bblock 2, line 636,  t128,  t4,  -11(SI32)
	c0    ldw.d $r0.2 = 0x38[$r0.1]   ## [spec] bblock 17, line 642, t24, t98
;;								## 10
	c0    cmpge $b0.0 = $r0.3, $r0.0   ## bblock 2, line 637,  t210(I1),  t128,  0(SI32)
	c0    ldw.d $r0.8 = 0x3c[$r0.1]   ## [spec] bblock 17, line 643, t19, t98
	c0    sub $r0.9 = $r0.0, $r0.3   ## [spec] bblock 17, line 648,  t21,  0(I32),  t128
	c0    cmpeq $b0.1 = $r0.3, $r0.0   ## [spec] bblock 17, line 648,  t215(I1),  t128,  0(SI32)
;;								## 11
	c0    shl $r0.10 = $r0.2, $r0.3   ## [spec] bblock 17, line 648,  t26,  t24,  t128
	c0    and $r0.9 = $r0.9, 31   ## [spec] bblock 17, line 648,  t22,  t21,  31(I32)
	c0    ldw.d $r0.11 = 0x34[$r0.1]   ## [spec] bblock 11, line 698, t87, t98
;;								## 12
	c0    shl $r0.12 = $r0.8, $r0.3   ## [spec] bblock 17, line 645,  t15,  t19,  t128
	c0    shru $r0.9 = $r0.8, $r0.9   ## [spec] bblock 17, line 648,  t23,  t19,  t22
	c0    ldw.d $r0.13 = 0x30[$r0.1]   ## [spec] bblock 11, line 699, t92, t98
	c0    brf $b0.0, L48?3   ## bblock 2, line 637,  t210(I1)
;;								## 13
	c0    stw 0x10[$r0.1] = $r0.0   ## bblock 17, line 638, t98, 0(SI32)
	c0    or $r0.10 = $r0.10, $r0.9   ## bblock 17, line 648,  t27,  t26,  t23
	c0    sub $r0.4 = $r0.11, $r0.3   ## bblock 11, line 698,  t93,  t87,  t128
;;								## 14
	c0    stw 0x3c[$r0.1] = $r0.12   ## bblock 17, line 645, t98, t15
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.10   ## bblock 17, line 648,  t28,  t215(I1),  t24,  t27
	c0    mov $r0.3 = $r0.13   ## [spec] t92
;;								## 15
	c0    ldw $r0.6 = 0x3c[$r0.1]   ## bblock 11, line 699, t95, t98
;;								## 16
	c0    stw 0x38[$r0.1] = $r0.2   ## bblock 17, line 646, t98, t28
;;								## 17
L49?3:
	c0    ldw $r0.5 = 0x38[$r0.1]   ## bblock 11, line 699, t94, t98
;;								## 18
	c0    ldw $r0.7 = 0x10[$r0.1]   ## bblock 11, line 699, t96, t98
;;								## 19
.call roundAndPackFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret($r0.3:u32,$r0.4:u32)
	c0    stw 0x34[$r0.1] = $r0.4   ## bblock 11, line 698, t98, t93
	c0    call $l0.0 = roundAndPackFloat64   ## bblock 11, line 699,  raddr(roundAndPackFloat64)(P32),  t92,  t93,  t94,  t95,  t96
;;								## 20
	c0    ldw $l0.0 = 0x14[$r0.1]  ## restore ## t97
;;								## 21
;;								## 22
;;								## 23
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 12, line 699,  t98,  ?2.14?2auto_size(I32),  t97
;;								## 24
.trace 2
L48?3:
	c0    ldw $r0.2 = 0x38[$r0.1]   ## bblock 3, line 653, t185, t98
	c0    sub $r0.5 = $r0.0, $r0.3   ## bblock 3, line 662,  t174,  0(I32),  t128
	c0    sub $r0.4 = $r0.11, $r0.3   ## bblock 11, line 698,  t93,  t87,  t128
;;								## 0
	c0    ldw $r0.8 = 0x3c[$r0.1]   ## bblock 3, line 654, t187, t98
	c0    sub $r0.7 = $r0.0, $r0.5   ## bblock 3, line 662,  t35,  0(I32),  t174
	c0    cmpge $b0.3 = $r0.5, 32   ## bblock 3, line 668,  t178(I1),  t174,  32(SI32)
	c0    cmpeq $b0.2 = $r0.5, 32   ## bblock 3, line 674,  t184(I1),  t174,  32(SI32)
	c0    cmpge $b0.1 = $r0.5, 64   ## bblock 3, line 680,  t188(I1),  t174,  64(SI32)
	c0    cmpeq $b0.0 = $r0.5, 64   ## bblock 3, line 685,  t211(I1),  t174,  64(SI32)
	c0    cmpne $b0.4 = $r0.5, $r0.0   ## bblock 3, line 655,  t213(I1),  t174,  0(I32)
;;								## 1
	c0    cmpne $r0.9 = $r0.2, $r0.0   ## bblock 3, line 685,  t192,  t185,  0(I32)
	c0    shru $r0.10 = $r0.2, $r0.5   ## bblock 3, line 671,  t183,  t185,  t174
	c0    and $r0.7 = $r0.7, 31   ## bblock 3, line 657,  t118,  t35,  31(I32)
	c0    and $r0.11 = $r0.5, 31   ## bblock 3, line 682,  t190,  t174,  31(I32)
	c0    cmpeq $b0.6 = $r0.5, $r0.0   ## bblock 3, line 654,  t212(I1),  t174,  0(I32)
	c0    cmpeq $b0.5 = $r0.5, $r0.0   ## bblock 3, line 653,  t214(I1),  t174,  0(I32)
;;								## 2
	c0    shru $r0.5 = $r0.8, $r0.5   ## bblock 3, line 670,  t180,  t187,  t174
	c0    shl $r0.7 = $r0.8, $r0.7   ## bblock 3, line 669,  t179,  t187,  t118
	c0    shl $r0.12 = $r0.2, $r0.7   ## bblock 3, line 670,  t189,  t185,  t118
	c0    shru $r0.11 = $r0.2, $r0.11   ## bblock 3, line 682,  t191,  t185,  t190
	c0    slct $r0.9 = $b0.0, $r0.2, $r0.9   ## bblock 3, line 685,  t194,  t211(I1),  t185,  t192
	c0    slctf $r0.13 = $b0.2, $r0.8, $r0.0   ## bblock 3, line 679,  t199,  t184(I1),  t187,  0(SI32)
	c0    slctf $r0.10 = $b0.3, $r0.10, $r0.0   ## bblock 3, line 671,  t203,  t178(I1),  t183,  0(SI32)
;;								## 3
	c0    or $r0.5 = $r0.5, $r0.12   ## bblock 3, line 670,  t182,  t180,  t189
	c0    slct $r0.9 = $b0.1, $r0.9, $r0.12   ## bblock 3, line 681,  t195,  t188(I1),  t194,  t189
	c0    slctf $r0.11 = $b0.1, $r0.11, $r0.0   ## bblock 3, line 682,  t196,  t188(I1),  t191,  0(SI32)
	c0    slct $r0.13 = $b0.3, $r0.13, $r0.0   ## bblock 3, line 679,  t204,  t178(I1),  t199,  0(SI32)
	c0    slct $r0.10 = $b0.5, $r0.2, $r0.10   ## bblock 3, line 653,  t117,  t214(I1),  t185,  t203
;;								## 4
	c0    slct $r0.9 = $b0.2, $r0.8, $r0.9   ## bblock 3, line 675,  t198,  t184(I1),  t187,  t195
	c0    slct $r0.2 = $b0.2, $r0.2, $r0.11   ## bblock 3, line 676,  t197,  t184(I1),  t185,  t196
	c0    cmpne $r0.13 = $r0.13, $r0.0   ## bblock 3, line 691,  t205,  t204,  0(I32)
;;								## 5
	c0    slct $r0.9 = $b0.3, $r0.9, $r0.7   ## bblock 3, line 669,  t201,  t178(I1),  t198,  t179
	c0    slct $r0.2 = $b0.3, $r0.2, $r0.5   ## bblock 3, line 670,  t202,  t178(I1),  t197,  t182
;;								## 6
	c0    slct $r0.8 = $b0.6, $r0.8, $r0.2   ## bblock 3, line 654,  t116,  t212(I1),  t187,  t202
	c0    or $r0.9 = $r0.9, $r0.13   ## bblock 3, line 691,  t206,  t201,  t205
;;								## 7
	c0    stw 0x3c[$r0.1] = $r0.8   ## bblock 3, line 694, t98, t116
	c0    slct $r0.9 = $b0.4, $r0.9, $r0.0   ## bblock 3, line 655,  t115,  t213(I1),  t206,  0(SI32)
;;								## 8
	c0    ldw $r0.6 = 0x3c[$r0.1]   ## bblock 11, line 699, t95, t98
;;								## 9
	c0    stw 0x10[$r0.1] = $r0.9   ## bblock 3, line 693, t98, t115
;;								## 10
	c0    ldw $r0.3 = 0x30[$r0.1]   ## bblock 11, line 699, t92, t98
;;								## 11
	c0    stw 0x38[$r0.1] = $r0.10   ## bblock 3, line 695, t98, t117
	c0    goto L49?3 ## goto
;;								## 12
.trace 3
L46?3:
	c0    ldw $r0.3 = 0x38[$r0.1]   ## bblock 1, line 636, t5, t98
;;								## 0
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 1, line 636,  raddr(countLeadingZeros32)(P32),  t5
;;								## 1
	c0    goto L47?3 ## goto
;;								## 2
.endp
.section .bss
.section .data
.equ ?2.14?2scratch.0, 0x0
.equ _?1PACKET.105, 0x10
.equ ?2.14?2ras_p, 0x14
.equ ?2.14?2pab_p.1, 0x30
.section .data
.section .text
.equ ?2.14?2auto_size, 0x40
 ## End normalizeRoundAndPackFloat64
 ## Begin _r_ilfloat
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:s32)
_r_ilfloat::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    cmpeq $r0.4 = $r0.3, (~0x7fffffff)   ## bblock 0, line 704,  t3,  t26,  (~0x7fffffff)(I32)
	c0    cmpeq $r0.2 = $r0.3, $r0.0   ## bblock 0, line 704,  t28,  t26,  0(I32)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## [spec] bblock 3, line 705,  t30(I1),  t26,  0(SI32)
;;								## 0
	c0    orl $b0.1 = $r0.2, $r0.4   ## bblock 0, line 704,  t27(I1),  t28,  t3
	c0    slct $r0.3 = $b0.0, $r0.0, (~0x30ffffff)   ## [spec] bblock 3, line 705,  t5,  t30(I1),  0(SI32),  (~0x30ffffff)(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t14
	c0    mov $r0.2 = $r0.3   ## t26
;;								## 1
;;								## 2
	c0    brf $b0.1, L50?3   ## bblock 0, line 704,  t27(I1)
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 705,  t15,  ?2.15?2auto_size(I32),  t14
;;								## 4
.trace 2
L50?3:
	c0    sub $r0.6 = $r0.0, $r0.2   ## bblock 1, line 706,  t11,  0(I32),  t26
	c0    cmplt $r0.3 = $r0.2, $r0.0   ## bblock 1, line 706,  t8,  t26,  0(SI32)
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 1, line 706,  t29(I1),  t26,  0(SI32)
	c0    mov $r0.4 = 156   ## 156(SI32)
;;								## 0
.call normalizeRoundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    slct $r0.5 = $b0.0, $r0.6, $r0.2   ## bblock 1, line 706,  t13,  t29(I1),  t11,  t26
	c0    call $l0.0 = normalizeRoundAndPackFloat32   ## bblock 1, line 706,  raddr(normalizeRoundAndPackFloat32)(P32),  t8,  156(SI32),  t13
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 706,  t15,  ?2.15?2auto_size(I32),  t14
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.15?2scratch.0, 0x0
.equ ?2.15?2ras_p, 0x10
.section .data
.section .text
.equ ?2.15?2auto_size, 0x20
 ## End _r_ilfloat
 ## Begin _r_ufloat
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
_r_ufloat::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 711,  t16(I1),  t15,  0(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    mov $r0.2 = $r0.3   ## t15
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    brf $b0.0, L51?3   ## bblock 0, line 711,  t16(I1)
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 712,  t4,  ?2.16?2auto_size(I32),  t3
;;								## 3
.trace 2
L51?3:
.call normalizeRoundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = normalizeRoundAndPackFloat32   ## bblock 1, line 713,  raddr(normalizeRoundAndPackFloat32)(P32),  0(SI32),  156(SI32),  t15
	c0    mov $r0.5 = $r0.2   ## t15
	c0    mov $r0.4 = 156   ## 156(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 713,  t4,  ?2.16?2auto_size(I32),  t3
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.16?2scratch.0, 0x0
.equ ?2.16?2ras_p, 0x10
.section .data
.section .text
.equ ?2.16?2auto_size, 0x20
 ## End _r_ufloat
 ## Begin _d_ilfloat
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:s32)
_d_ilfloat::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 723,  t107(I1),  t69,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	c0    mov $r0.2 = $r0.3   ## t69
;;								## 0
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t57
;;								## 1
	c0    brf $b0.0, L52?3   ## bblock 0, line 723,  t107(I1)
;;								## 2
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 12, line 724,  raddr(packFloat64)(P32),  0(SI32),  0(SI32),  0(I32),  0(I32)
;;								## 3
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t57
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 13, line 724,  t58,  ?2.17?2auto_size(I32),  t57
;;								## 7
.trace 2
L52?3:
	c0    sub $r0.6 = $r0.0, $r0.2   ## bblock 1, line 726,  t7,  0(I32),  t69
	c0    cmplt $r0.5 = $r0.2, $r0.0   ## bblock 1, line 725,  t80,  t69,  0(SI32)
;;								## 0
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t80
	c0    mtb $b0.0 = $r0.5   ## t80
;;								## 1
;;								## 2
	c0    slct $r0.3 = $b0.0, $r0.6, $r0.2   ## bblock 1, line 726,  t79,  t80,  t7,  t69
;;								## 3
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 1, line 727,  raddr(countLeadingZeros32)(P32),  t79
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t79
;;								## 4
	c0    add $r0.2 = $r0.3, -11   ## bblock 2, line 727,  t78,  t10,  -11(SI32)
	c0    sub $r0.4 = 1053, $r0.3   ## [spec] bblock 7, line 757,  t54,  1053(SI32),  t10
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t79
;;								## 5
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 2, line 728,  t109(I1),  t78,  0(SI32)
	c0    mov $r0.8 = $r0.3   ## t10
;;								## 6
	c0    shl $r0.7 = $r0.7, $r0.2   ## [spec] bblock 11, line 729,  t16,  t79,  t78
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t80
;;								## 7
	c0    brf $b0.0, L53?3   ## bblock 2, line 728,  t109(I1)
;;								## 8
	c0    stw 0x14[$r0.1] = $r0.7   ## bblock 11, line 729, t58, t16
;;								## 9
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 7, line 757, t55, t58
;;								## 10
	c0    stw 0x10[$r0.1] = $r0.0   ## bblock 11, line 730, t58, 0(SI32)
;;								## 11
L54?3:
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 7, line 757, t56, t58
;;								## 12
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 7, line 757,  raddr(packFloat64)(P32),  t80,  t54,  t55,  t56
;;								## 13
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t57
;;								## 14
;;								## 15
;;								## 16
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 8, line 757,  t58,  ?2.17?2auto_size(I32),  t57
;;								## 17
.trace 3
L53?3:
	c0    sub $r0.2 = $r0.0, $r0.2   ## bblock 3, line 741,  t19,  0(I32),  t78
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t79
;;								## 0
	c0    zxth $r0.8 = $r0.2   ## bblock 3, line 736,  t91(I16),  t19
	c0    sub $r0.7 = $r0.0, $r0.2   ## bblock 3, line 741,  t24,  0(I32),  t19
	c0    and $r0.2 = $r0.2, 31   ## bblock 3, line 750,  t99,  t19,  31(I32)
;;								## 1
	c0    and $r0.7 = $r0.7, 31   ## bblock 3, line 740,  t70,  t24,  31(I32)
	c0    shru $r0.10 = $r0.6, $r0.8   ## bblock 3, line 747,  t96,  t79,  t91(I16)
	c0    shru $r0.2 = $r0.6, $r0.2   ## bblock 3, line 750,  t100,  t79,  t99
	c0    shru $r0.9 = $r0.0, $r0.8   ## bblock 3, line 746,  t95,  0(SI32),  t91(I16)
	c0    cmpge $b0.1 = $r0.8, 32   ## bblock 3, line 745,  t94(I1),  t91(I16),  32(SI32)
	c0    cmplt $b0.0 = $r0.8, 64   ## bblock 3, line 750,  t110(I1),  t91(I16),  64(SI32)
	c0    cmpeq $b0.3 = $r0.8, $r0.0   ## bblock 3, line 734,  t111(I1),  t91(I16),  0(I32)
	c0    cmpne $b0.2 = $r0.8, $r0.0   ## bblock 3, line 735,  t112(I1),  t91(I16),  0(I32)
;;								## 2
	c0    shl $r0.7 = $r0.6, $r0.7   ## bblock 3, line 746,  t97,  t79,  t70
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.0   ## bblock 3, line 750,  t101,  t110(I1),  t100,  0(SI32)
	c0    slctf $r0.10 = $b0.1, $r0.10, $r0.0   ## bblock 3, line 747,  t103,  t94(I1),  t96,  0(SI32)
;;								## 3
	c0    or $r0.7 = $r0.7, $r0.9   ## bblock 3, line 746,  t98,  t97,  t95
	c0    slct $r0.6 = $b0.3, $r0.6, $r0.10   ## bblock 3, line 734,  t74,  t111(I1),  t79,  t103
;;								## 4
	c0    stw 0x14[$r0.1] = $r0.6   ## bblock 3, line 754, t58, t74
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.7   ## bblock 3, line 746,  t104,  t94(I1),  t101,  t98
;;								## 5
	c0    slct $r0.2 = $b0.2, $r0.2, $r0.0   ## bblock 3, line 735,  t73,  t112(I1),  t104,  0(SI32)
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 7, line 757, t55, t58
;;								## 6
	c0    stw 0x10[$r0.1] = $r0.2   ## bblock 3, line 753, t58, t73
	c0    goto L54?3 ## goto
;;								## 7
.endp
.section .bss
.section .data
.equ ?2.17?2scratch.0, 0x0
.equ _?1PACKET.126, 0x10
.equ _?1PACKET.125, 0x14
.equ ?2.17?2ras_p, 0x18
.equ ?2.17?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.17?2auto_size, 0x40
 ## End _d_ilfloat
 ## Begin _d_ufloat
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
_d_ufloat::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 765,  t97(I1),  t61,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	c0    mov $r0.2 = $r0.3   ## t61
;;								## 0
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t49
;;								## 1
	c0    brf $b0.0, L55?3   ## bblock 0, line 765,  t97(I1)
;;								## 2
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 12, line 766,  raddr(packFloat64)(P32),  0(SI32),  0(SI32),  0(I32),  0(I32)
;;								## 3
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t49
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 13, line 766,  t50,  ?2.18?2auto_size(I32),  t49
;;								## 7
.trace 2
L55?3:
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 1, line 768,  raddr(countLeadingZeros32)(P32),  t61
	c0    mov $r0.3 = $r0.2   ## t61
	c0    stw 0x1c[$r0.1] = $r0.2  ## spill ## t61
;;								## 0
	c0    add $r0.2 = $r0.3, -11   ## bblock 2, line 768,  t70,  t3,  -11(SI32)
	c0    sub $r0.4 = 1053, $r0.3   ## [spec] bblock 7, line 798,  t46,  1053(SI32),  t3
	c0    ldw $r0.7 = 0x1c[$r0.1]  ## restore ## t61
	c0    mov $r0.8 = $r0.3   ## t3
;;								## 1
	c0    cmpge $b0.0 = $r0.2, $r0.0   ## bblock 2, line 769,  t98(I1),  t70,  0(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 2
	c0    shl $r0.7 = $r0.7, $r0.2   ## [spec] bblock 11, line 770,  t9,  t61,  t70
;;								## 3
	c0    brf $b0.0, L56?3   ## bblock 2, line 769,  t98(I1)
;;								## 4
	c0    stw 0x14[$r0.1] = $r0.7   ## bblock 11, line 770, t50, t9
;;								## 5
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 7, line 798, t47, t50
;;								## 6
	c0    stw 0x10[$r0.1] = $r0.0   ## bblock 11, line 771, t50, 0(SI32)
;;								## 7
L57?3:
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 7, line 798, t48, t50
;;								## 8
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 7, line 798,  raddr(packFloat64)(P32),  0(SI32),  t46,  t47,  t48
;;								## 9
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t49
;;								## 10
;;								## 11
;;								## 12
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 8, line 798,  t50,  ?2.18?2auto_size(I32),  t49
;;								## 13
.trace 3
L56?3:
	c0    sub $r0.2 = $r0.0, $r0.2   ## bblock 3, line 782,  t12,  0(I32),  t70
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t61
;;								## 0
	c0    zxth $r0.8 = $r0.2   ## bblock 3, line 777,  t81(I16),  t12
	c0    sub $r0.7 = $r0.0, $r0.2   ## bblock 3, line 782,  t17,  0(I32),  t12
	c0    and $r0.2 = $r0.2, 31   ## bblock 3, line 791,  t89,  t12,  31(I32)
;;								## 1
	c0    and $r0.7 = $r0.7, 31   ## bblock 3, line 781,  t62,  t17,  31(I32)
	c0    shru $r0.10 = $r0.6, $r0.8   ## bblock 3, line 788,  t86,  t61,  t81(I16)
	c0    shru $r0.2 = $r0.6, $r0.2   ## bblock 3, line 791,  t90,  t61,  t89
	c0    shru $r0.9 = $r0.0, $r0.8   ## bblock 3, line 787,  t85,  0(SI32),  t81(I16)
	c0    cmpge $b0.1 = $r0.8, 32   ## bblock 3, line 786,  t84(I1),  t81(I16),  32(SI32)
	c0    cmplt $b0.0 = $r0.8, 64   ## bblock 3, line 791,  t99(I1),  t81(I16),  64(SI32)
	c0    cmpeq $b0.3 = $r0.8, $r0.0   ## bblock 3, line 775,  t100(I1),  t81(I16),  0(I32)
	c0    cmpne $b0.2 = $r0.8, $r0.0   ## bblock 3, line 776,  t101(I1),  t81(I16),  0(I32)
;;								## 2
	c0    shl $r0.7 = $r0.6, $r0.7   ## bblock 3, line 787,  t87,  t61,  t62
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.0   ## bblock 3, line 791,  t91,  t99(I1),  t90,  0(SI32)
	c0    slctf $r0.10 = $b0.1, $r0.10, $r0.0   ## bblock 3, line 788,  t93,  t84(I1),  t86,  0(SI32)
;;								## 3
	c0    or $r0.7 = $r0.7, $r0.9   ## bblock 3, line 787,  t88,  t87,  t85
	c0    slct $r0.6 = $b0.3, $r0.6, $r0.10   ## bblock 3, line 775,  t66,  t100(I1),  t61,  t93
;;								## 4
	c0    stw 0x14[$r0.1] = $r0.6   ## bblock 3, line 795, t50, t66
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.7   ## bblock 3, line 787,  t94,  t84(I1),  t91,  t88
;;								## 5
	c0    slct $r0.2 = $b0.2, $r0.2, $r0.0   ## bblock 3, line 776,  t65,  t101(I1),  t94,  0(SI32)
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 7, line 798, t47, t50
;;								## 6
	c0    stw 0x10[$r0.1] = $r0.2   ## bblock 3, line 794, t50, t65
	c0    goto L57?3 ## goto
;;								## 7
.endp
.section .bss
.section .data
.equ ?2.18?2scratch.0, 0x0
.equ _?1PACKET.137, 0x10
.equ _?1PACKET.136, 0x14
.equ ?2.18?2ras_p, 0x18
.equ ?2.18?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.18?2auto_size, 0x20
 ## End _d_ufloat
 ## Begin float32_to_int32_round_to_zero
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:s32)
float32_to_int32_round_to_zero:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 8388607   ## bblock 0, line 808,  t61,  t58,  8388607(I32)
	c0    shru $r0.6 = $r0.3, 23   ## bblock 0, line 809,  t3(I9),  t58,  23(SI32)
	c0    shru $r0.5 = $r0.3, 31   ## bblock 0, line 810,  t64(I1),  t58,  31(SI32)
	c0    ldw.d $r0.7 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 7, line 825, t25, 0(I32)
;;								## 0
	c0    and $r0.6 = $r0.6, 255   ## bblock 0, line 809,  t63,  t3(I9),  255(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t45
	c0    mov $r0.8 = $r0.3   ## t58
;;								## 1
	c0    add $r0.9 = $r0.6, -158   ## bblock 0, line 811,  t62,  t63,  -158(SI32)
	c0    cmple $b0.0 = $r0.6, 126   ## [spec] bblock 1, line 823,  t66(I1),  t63,  126(SI32)
	c0    or $r0.10 = $r0.2, $r0.6   ## [spec] bblock 5, line 824,  t68,  t61,  t63
	c0    or $r0.7 = $r0.7, 1   ## [spec] bblock 7, line 825,  t26,  t25,  1(I32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 2
	c0    cmpge $b0.1 = $r0.9, $r0.0   ## bblock 0, line 815,  t65(I1),  t62,  0(SI32)
	c0    cmpne $b0.2 = $r0.10, $r0.0   ## [spec] bblock 5, line 824,  t69,  t68,  0(I32)
;;								## 3
;;								## 4
	c0    br $b0.1, L58?3   ## bblock 0, line 815,  t65(I1)
;;								## 5
	c0    brf $b0.0, L59?3   ## bblock 1, line 823,  t66(I1)
;;								## 6
	c0    brf $b0.2, L60?3   ## bblock 5, line 824,  t69
;;								## 7
.return ret($r0.3:s32)
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.7   ## bblock 7, line 825, 0(I32), t26
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 826,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 8
.trace 3
L60?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 826,  t46,  ?2.19?2auto_size(I32),  t45
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 2
L59?3:
	c0    or $r0.2 = $r0.2, 8388608   ## bblock 2, line 828,  t28,  t61,  8388608(I32)
	c0    sub $r0.4 = $r0.0, $r0.9   ## bblock 2, line 829,  t32,  0(I32),  t62
	c0    and $r0.6 = $r0.9, 31   ## bblock 2, line 830,  t36,  t62,  31(I32)
	c0    ldw.d $r0.7 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 4, line 831, t38, 0(I32)
	c0    mtb $b0.0 = $r0.5   ## t64(I1)
;;								## 0
	c0    shl $r0.2 = $r0.2, 8   ## bblock 2, line 828,  t34,  t28,  8(SI32)
;;								## 1
	c0    shru $r0.4 = $r0.2, $r0.4   ## bblock 2, line 829,  t60,  t34,  t32
	c0    shl $r0.6 = $r0.2, $r0.6   ## bblock 2, line 830,  t37,  t34,  t36
	c0    or $r0.7 = $r0.7, 1   ## [spec] bblock 4, line 831,  t39,  t38,  1(I32)
;;								## 2
	c0    cmpne $b0.1 = $r0.6, $r0.0   ## bblock 2, line 830,  t67(I1),  t37,  0(SI32)
	c0    sub $r0.2 = $r0.0, $r0.4   ## [spec] bblock 3, line 833,  t42,  0(I32),  t60
;;								## 3
	c0    slct $r0.3 = $b0.0, $r0.2, $r0.4   ## [spec] bblock 3, line 833,  t44,  t64(I1),  t42,  t60
;;								## 4
	c0    brf $b0.1, L61?3   ## bblock 2, line 830,  t67(I1)
;;								## 5
.return ret($r0.3:s32)
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.7   ## bblock 4, line 831, 0(I32), t39
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 833,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 6
.trace 4
L61?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 833,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 0
.trace 5
L58?3:
	c0    cmpeq $b0.0 = $r0.8, (~0x30ffffff)   ## bblock 8, line 816,  t70(I1),  t58,  (~0x30ffffff)(I32)
	c0    cmpeq $b0.1 = $r0.4, $r0.0   ## [spec] bblock 13, line 817,  t76(I1),  t59,  0(SI32)
;;								## 0
	c0    slct $r0.3 = $b0.1, $r0.0, (~0x7fffffff)   ## [spec] bblock 13, line 817,  t12,  t76(I1),  0(SI32),  (~0x7fffffff)(I32)
;;								## 1
	c0    brf $b0.0, L62?3   ## bblock 8, line 816,  t70(I1)
;;								## 2
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 13, line 817,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 3
.trace 6
L62?3:
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t59
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    stw 0x18[$r0.1] = $r0.5  ## spill ## t64(I1)
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.2  ## spill ## t61
;;								## 2
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 9, line 818,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x20[$r0.1] = $r0.6  ## spill ## t63
;;								## 3
	c0    mov $r0.2 = 2147483647   ## 2147483647(SI32)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t63
;;								## 4
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t61
;;								## 5
	c0    cmpeq $r0.6 = $r0.6, 255   ## bblock 10, line 819,  t15,  t63,  255(SI32)
	c0    ldw $r0.7 = 0x18[$r0.1]  ## restore ## t64(I1)
;;								## 6
	c0    andl $r0.6 = $r0.6, $r0.5   ## bblock 10, line 819,  t17,  t15,  t61
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t59
;;								## 7
	c0    cmpeq $r0.7 = $r0.7, $r0.0   ## bblock 10, line 819,  t73,  t64(I1),  0(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t45
;;								## 8
	c0    orl $b0.0 = $r0.7, $r0.6   ## bblock 10, line 819,  t72(I1),  t73,  t17
	c0    cmpne $b0.1 = $r0.4, $r0.0   ## [spec] bblock 12, line 820,  t75(I1),  t59,  0(SI32)
;;								## 9
	c0    slct $r0.3 = $b0.1, $r0.2, (~0x0)   ## [spec] bblock 12, line 820,  t19,  t75(I1),  2147483647(SI32),  (~0x0)(I32)
;;								## 10
	c0    brf $b0.0, L63?3   ## bblock 10, line 819,  t72(I1)
;;								## 11
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 12, line 820,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 12
.trace 7
L63?3:
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t59
;;								## 0
;;								## 1
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## bblock 11, line 821,  t74(I1),  t59,  0(SI32)
;;								## 2
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.0, (~0x7fffffff)   ## bblock 11, line 821,  t21,  t74(I1),  0(SI32),  (~0x7fffffff)(I32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 11, line 821,  t46,  ?2.19?2auto_size(I32),  t45
;;								## 3
.endp
.section .bss
.section .data
.equ ?2.19?2scratch.0, 0x0
.equ ?2.19?2ras_p, 0x10
.equ ?2.19?2spill_p, 0x14
.section .data
.section .text
.equ ?2.19?2auto_size, 0x40
 ## End float32_to_int32_round_to_zero
 ## Begin _d_r
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32)
_d_r::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 8388607   ## bblock 0, line 842,  t92,  t82,  8388607(I32)
	c0    shru $r0.8 = $r0.3, 23   ## bblock 0, line 843,  t3(I9),  t82,  23(SI32)
	c0    shru $r0.7 = $r0.3, 31   ## bblock 0, line 844,  t94(I1),  t82,  31(SI32)
;;								## 0
	c0    and $r0.8 = $r0.8, 255   ## bblock 0, line 843,  t93,  t3(I9),  255(I32)
	c0    shru $r0.5 = $r0.2, 3   ## [spec] bblock 2, line 880,  t68,  t92,  3(I32)
	c0    shl $r0.6 = $r0.2, 29   ## [spec] bblock 2, line 879,  t69,  t92,  29(I32)
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t70
	c0    mov $r0.9 = $r0.3   ## t82
;;								## 1
	c0    cmpeq $b0.0 = $r0.8, 255   ## bblock 0, line 848,  t107(I1),  t93,  255(SI32)
	c0    cmpeq $b0.1 = $r0.8, $r0.0   ## [spec] bblock 1, line 856,  t108(I1),  t93,  0(SI32)
	c0    add $r0.4 = $r0.8, 896   ## [spec] bblock 2, line 889,  t67,  t93,  896(SI32)
	c0    mov $r0.3 = $r0.7   ## t94(I1)
;;								## 2
;;								## 3
	c0    br $b0.0, L64?3   ## bblock 0, line 848,  t107(I1)
;;								## 4
	c0    br $b0.1, L65?3   ## bblock 1, line 856,  t108(I1)
;;								## 5
L66?3:
	c0    stw 0x14[$r0.1] = $r0.5   ## bblock 2, line 887, t71, t68
;;								## 6
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 2, line 886, t71, t69
	c0    call $l0.0 = packFloat64   ## bblock 2, line 889,  raddr(packFloat64)(P32),  t94(I1),  t67,  t68,  t69
;;								## 7
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t70
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 889,  t71,  ?2.20?2auto_size(I32),  t70
;;								## 11
.trace 3
L65?3:
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 9, line 857,  t109(I1),  t92,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.7   ## t94(I1)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 0
;;								## 1
	c0    brf $b0.0, L67?3   ## bblock 9, line 857,  t109(I1)
;;								## 2
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 12, line 858,  raddr(packFloat64)(P32),  t94(I1),  0(SI32),  0(I32),  0(I32)
;;								## 3
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t70
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 13, line 858,  t71,  ?2.20?2auto_size(I32),  t70
;;								## 7
.trace 5
L67?3:
	c0    stw 0x1c[$r0.1] = $r0.7  ## spill ## t94(I1)
	c0    mov $r0.3 = $r0.2   ## t92
;;								## 0
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 10, line 860,  raddr(countLeadingZeros32)(P32),  t92
	c0    stw 0x20[$r0.1] = $r0.2  ## spill ## t92
;;								## 1
	c0    add $r0.2 = $r0.3, -8   ## bblock 11, line 860,  t29,  t23,  -8(SI32)
	c0    sub $r0.8 = 8, $r0.3   ## bblock 11, line 864,  t93,  8(SI32),  t23
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t92
;;								## 2
	c0    add $r0.4 = $r0.8, 896   ## bblock 2, line 889,  t67,  t93,  896(SI32)
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t94(I1)
;;								## 3
	c0    shl $r0.7 = $r0.7, $r0.2   ## bblock 11, line 861,  t92,  t92,  t29
;;								## 4
	c0    shru $r0.5 = $r0.7, 3   ## bblock 2, line 880,  t68,  t92,  3(I32)
	c0    shl $r0.6 = $r0.7, 29   ## bblock 2, line 879,  t69,  t92,  29(I32)
	c0    goto L66?3 ## goto
;;								## 5
.trace 2
L64?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 14, line 849,  t110(I1),  t92,  0(SI32)
	c0    mov $r0.3 = $r0.9   ## t82
;;								## 0
;;								## 1
	c0    brf $b0.0, L68?3   ## bblock 14, line 849,  t110(I1)
;;								## 2
.call float32ToCommonNaN, caller, arg($r0.3:u32), ret($r0.3:s32,$r0.4:u32,$r0.5:u32)
	c0    call $l0.0 = float32ToCommonNaN   ## bblock 17, line 850,  raddr(float32ToCommonNaN)(P32),  t82
;;								## 3
.call commonNaNToFloat64, caller, arg($r0.3:s32,$r0.4:u32,$r0.5:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = commonNaNToFloat64   ## bblock 18, line 850,  raddr(commonNaNToFloat64)(P32),  t11,  t12,  t13
;;								## 4
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t70
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 19, line 850,  t71,  ?2.20?2auto_size(I32),  t70
;;								## 8
.trace 4
L68?3:
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 15, line 851,  raddr(packFloat64)(P32),  t94(I1),  2047(SI32),  0(I32),  0(I32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.7   ## t94(I1)
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t70
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 16, line 851,  t71,  ?2.20?2auto_size(I32),  t70
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.20?2scratch.0, 0x0
.equ _?1PACKET.155, 0x10
.equ _?1PACKET.154, 0x14
.equ ?2.20?2ras_p, 0x18
.equ ?2.20?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.20?2auto_size, 0x40
 ## End _d_r
 ## Begin addFloat32Sigs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:s32)
addFloat32Sigs:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    and $r0.2 = $r0.3, 8388607   ## bblock 0, line 898,  t13,  t137,  8388607(I32)
	c0    and $r0.6 = $r0.4, 8388607   ## bblock 0, line 900,  t15,  t138,  8388607(I32)
	c0    shru $r0.7 = $r0.3, 23   ## bblock 0, line 899,  t3(I9),  t137,  23(SI32)
	c0    shru $r0.8 = $r0.4, 23   ## bblock 0, line 901,  t8(I9),  t138,  23(SI32)
;;								## 0
	c0    and $r0.7 = $r0.7, 255   ## bblock 0, line 899,  t152,  t3(I9),  255(I32)
	c0    and $r0.8 = $r0.8, 255   ## bblock 0, line 901,  t151,  t8(I9),  255(I32)
	c0    shl $r0.2 = $r0.2, 6   ## bblock 0, line 903,  t14,  t13,  6(SI32)
	c0    shl $r0.6 = $r0.6, 6   ## bblock 0, line 904,  t16,  t15,  6(SI32)
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t123
	c0    mov $r0.9 = $r0.3   ## t137
;;								## 1
	c0    sub $r0.10 = $r0.7, $r0.8   ## bblock 0, line 902,  t148,  t152,  t151
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 0, line 903, t124, t14
	c0    cmpeq $b0.0 = $r0.7, 255   ## [spec] bblock 28, line 909,  t211(I1),  t152,  255(SI32)
	c0    cmpeq $b0.1 = $r0.8, $r0.0   ## [spec] bblock 29, line 914,  t212(I1),  t151,  0(SI32)
	c0    mov $r0.11 = $r0.7   ## [spec] bblock 31, line 936,  t150,  t152
	c0    mov $r0.3 = $r0.5   ## t139
;;								## 2
	c0    cmpgt $b0.2 = $r0.10, $r0.0   ## bblock 0, line 905,  t200(I1),  t148,  0(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 19, line 988, t105, t124
	c0    add $r0.12 = $r0.11, -1   ## [spec] bblock 19, line 990,  t198,  t150,  -1(SI32)
;;								## 3
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 0, line 904, t124, t16
;;								## 4
	c0    ldw.d $r0.6 = 0x10[$r0.1]   ## [spec] bblock 31, line 922, t186, t124
	c0    or $r0.2 = $r0.2, 536870912   ## [spec] bblock 19, line 988,  t108,  t105,  536870912(I32)
	c0    brf $b0.2, L69?3   ## bblock 0, line 905,  t200(I1)
;;								## 5
	c0    br $b0.0, L70?3   ## bblock 28, line 909,  t211(I1)
;;								## 6
	c0    cmpne $r0.8 = $r0.6, $r0.0   ## [spec] bblock 31, line 932,  t194,  t186,  0(I32)
	c0    brf $b0.1, L71?3   ## bblock 29, line 914,  t212(I1)
;;								## 7
	c0    add $r0.10 = $r0.10, -1   ## bblock 37, line 915,  t148,  t148,  -1(SI32)
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 19, line 988, t124, t108
;;								## 8
L72?3:
	c0    sub $r0.7 = $r0.0, $r0.10   ## bblock 31, line 929,  t188,  0(I32),  t148
	c0    shru $r0.9 = $r0.6, $r0.10   ## bblock 31, line 929,  t189,  t186,  t148
	c0    cmpge $b0.0 = $r0.10, 32   ## bblock 31, line 928,  t187(I1),  t148,  32(SI32)
	c0    cmpeq $b0.1 = $r0.10, $r0.0   ## bblock 31, line 922,  t213(I1),  t148,  0(I32)
;;								## 9
	c0    and $r0.7 = $r0.7, 31   ## bblock 31, line 929,  t190,  t188,  31(I32)
;;								## 10
	c0    shl $r0.7 = $r0.6, $r0.7   ## bblock 31, line 929,  t191,  t186,  t190
;;								## 11
	c0    cmpne $r0.7 = $r0.7, $r0.0   ## bblock 31, line 929,  t192,  t191,  0(I32)
;;								## 12
	c0    or $r0.9 = $r0.9, $r0.7   ## bblock 31, line 929,  t193,  t189,  t192
;;								## 13
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.9   ## bblock 31, line 929,  t195,  t187(I1),  t194,  t193
;;								## 14
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.8   ## bblock 31, line 922,  t145,  t213(I1),  t186,  t195
;;								## 15
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 31, line 934, t124, t145
;;								## 16
L73?3:
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 19, line 989, t107, t124
;;								## 17
;;								## 18
	c0    add $r0.2 = $r0.2, $r0.6   ## bblock 19, line 989,  t164,  t108,  t107
;;								## 19
	c0    shl $r0.6 = $r0.2, 1   ## bblock 19, line 989,  t197,  t164,  1(SI32)
;;								## 20
	c0    cmpge $b0.0 = $r0.6, $r0.0   ## bblock 19, line 991,  t163(I1),  t197,  0(SI32)
;;								## 21
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    slct $r0.5 = $b0.0, $r0.6, $r0.2   ## bblock 19, line 989,  t149,  t163(I1),  t197,  t164
	c0    slct $r0.4 = $b0.0, $r0.12, $r0.11   ## bblock 19, line 993,  t154,  t163(I1),  t198,  t150
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 5, line 996,  raddr(roundAndPackFloat32)(P32),  t139,  t154,  t149
;;								## 22
L74?3:
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 23
;;								## 24
;;								## 25
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 6, line 996,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 26
.trace 4
L71?3:
	c0    ldw $r0.4 = 0x10[$r0.1]   ## bblock 30, line 918, t27, t124
	c0    mov $r0.3 = $r0.5   ## t139
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 19, line 988, t124, t108
;;								## 1
	c0    or $r0.4 = $r0.4, 536870912   ## bblock 30, line 918,  t28,  t27,  536870912(I32)
;;								## 2
	c0    stw 0x10[$r0.1] = $r0.4   ## bblock 30, line 918, t124, t28
;;								## 3
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 31, line 922, t186, t124
;;								## 4
;;								## 5
	c0    cmpne $r0.8 = $r0.6, $r0.0   ## bblock 31, line 932,  t194,  t186,  0(I32)
	c0    goto L72?3 ## goto
;;								## 6
.trace 7
L70?3:
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 38, line 910, t19, t124
	c0    mov $r0.3 = $r0.9   ## t137
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 38, line 910,  t214(I1),  t19,  0(SI32)
;;								## 2
;;								## 3
	c0    brf $b0.0, L75?3   ## bblock 38, line 910,  t214(I1)
;;								## 4
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 40, line 911,  raddr(propagateFloat32NaN)(P32),  t137,  t138
;;								## 5
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 41, line 911,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 9
.trace 9
L75?3:
	c0    mov $r0.3 = $r0.9   ## t137
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 39, line 912,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 3
.trace 2
L69?3:
	c0    cmplt $b0.0 = $r0.10, $r0.0   ## bblock 1, line 938,  t201(I1),  t148,  0(SI32)
	c0    cmpeq $b0.1 = $r0.8, 255   ## [spec] bblock 12, line 942,  t207(I1),  t151,  255(SI32)
	c0    cmpeq $b0.2 = $r0.7, $r0.0   ## [spec] bblock 13, line 948,  t208(I1),  t152,  0(SI32)
	c0    ldw.d $r0.13 = 0x14[$r0.1]   ## [spec] bblock 15, line 956, t175, t124
	c0    mov $r0.11 = $r0.8   ## [spec] bblock 15, line 970,  t150,  t151
	c0    mov $r0.3 = $r0.5   ## t139
;;								## 0
	c0    add $r0.12 = $r0.11, -1   ## [spec] bblock 19, line 990,  t198,  t150,  -1(SI32)
;;								## 1
	c0    cmpne $r0.6 = $r0.13, $r0.0   ## [spec] bblock 15, line 966,  t183,  t175,  0(I32)
	c0    brf $b0.0, L76?3   ## bblock 1, line 938,  t201(I1)
;;								## 2
	c0    br $b0.1, L77?3   ## bblock 12, line 942,  t207(I1)
;;								## 3
	c0    brf $b0.2, L78?3   ## bblock 13, line 948,  t208(I1)
;;								## 4
	c0    add $r0.10 = $r0.10, 1   ## bblock 23, line 949,  t148,  t148,  1(SI32)
;;								## 5
L79?3:
	c0    sub $r0.10 = $r0.0, $r0.10   ## bblock 15, line 959,  t174,  0(I32),  t148
;;								## 6
	c0    sub $r0.9 = $r0.0, $r0.10   ## bblock 15, line 963,  t177,  0(I32),  t174
	c0    shru $r0.14 = $r0.13, $r0.10   ## bblock 15, line 963,  t178,  t175,  t174
	c0    cmpge $b0.0 = $r0.10, 32   ## bblock 15, line 962,  t176(I1),  t174,  32(SI32)
	c0    cmpeq $b0.1 = $r0.10, $r0.0   ## bblock 15, line 956,  t209(I1),  t174,  0(I32)
;;								## 7
	c0    and $r0.9 = $r0.9, 31   ## bblock 15, line 963,  t179,  t177,  31(I32)
;;								## 8
	c0    shl $r0.9 = $r0.13, $r0.9   ## bblock 15, line 963,  t180,  t175,  t179
;;								## 9
	c0    cmpne $r0.9 = $r0.9, $r0.0   ## bblock 15, line 963,  t181,  t180,  0(I32)
;;								## 10
	c0    or $r0.14 = $r0.14, $r0.9   ## bblock 15, line 963,  t182,  t178,  t181
;;								## 11
	c0    slct $r0.6 = $b0.0, $r0.6, $r0.14   ## bblock 15, line 963,  t184,  t176(I1),  t183,  t182
;;								## 12
	c0    slct $r0.13 = $b0.1, $r0.13, $r0.6   ## bblock 15, line 956,  t141,  t209(I1),  t175,  t184
;;								## 13
	c0    stw 0x14[$r0.1] = $r0.13   ## bblock 15, line 968, t124, t141
;;								## 14
	c0    ldw $r0.6 = 0x14[$r0.1]   ## bblock 19, line 988, t105, t124
;;								## 15
;;								## 16
	c0    or $r0.2 = $r0.6, 536870912   ## bblock 19, line 988,  t108,  t105,  536870912(I32)
;;								## 17
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 19, line 988, t124, t108
	c0    goto L73?3 ## goto
;;								## 18
.trace 5
L78?3:
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 14, line 952, t62, t124
;;								## 0
;;								## 1
	c0    or $r0.2 = $r0.2, 536870912   ## bblock 14, line 952,  t63,  t62,  536870912(I32)
;;								## 2
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 14, line 952, t124, t63
;;								## 3
	c0    ldw $r0.13 = 0x14[$r0.1]   ## bblock 15, line 956, t175, t124
;;								## 4
;;								## 5
	c0    cmpne $r0.6 = $r0.13, $r0.0   ## bblock 15, line 966,  t183,  t175,  0(I32)
	c0    goto L79?3 ## goto
;;								## 6
.trace 10
L77?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 24, line 943, t52, t124
	c0    mov $r0.3 = $r0.9   ## t137
	c0    mov $r0.5 = $r0.3   ## t139
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 24, line 943,  t210(I1),  t52,  0(SI32)
;;								## 2
;;								## 3
	c0    brf $b0.0, L80?3   ## bblock 24, line 943,  t210(I1)
;;								## 4
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 26, line 944,  raddr(propagateFloat32NaN)(P32),  t137,  t138
;;								## 5
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 27, line 944,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 9
.trace 12
L80?3:
	c0    shl $r0.5 = $r0.5, 31   ## bblock 25, line 945,  t57,  t139,  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 0
	c0    add $r0.3 = $r0.5, 2139095040   ## bblock 25, line 946,  t58,  t57,  2139095040(I32)
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 25, line 946,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 3
.trace 3
L76?3:
	c0    cmpeq $b0.0 = $r0.7, 255   ## bblock 2, line 976,  t202(I1),  t152,  255(SI32)
	c0    cmpeq $b0.1 = $r0.7, $r0.0   ## [spec] bblock 3, line 981,  t203(I1),  t152,  0(SI32)
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 7, line 983, t94, t124
	c0    shl $r0.6 = $r0.3, 31   ## [spec] bblock 7, line 982,  t99,  t139,  31(SI32)
;;								## 0
	c0    ldw.d $r0.8 = 0x14[$r0.1]   ## [spec] bblock 7, line 983, t95, t124
;;								## 1
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
	c0    br $b0.0, L81?3   ## bblock 2, line 976,  t202(I1)
;;								## 2
	c0    add $r0.2 = $r0.2, $r0.8   ## [spec] bblock 7, line 983,  t96,  t94,  t95
	c0    brf $b0.1, L82?3   ## bblock 3, line 981,  t203(I1)
;;								## 3
	c0    shru $r0.2 = $r0.2, 6   ## bblock 7, line 983,  t97(I26),  t96,  6(SI32)
;;								## 4
.return ret($r0.3:u32)
	c0    add $r0.3 = $r0.2, $r0.6   ## bblock 7, line 983,  t100,  t97(I26),  t99
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 7, line 983,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 5
.trace 6
L82?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 4, line 984, t101, t124
	c0    mov $r0.4 = $r0.7   ## bblock 4, line 985,  t154,  t152
;;								## 0
	c0    ldw $r0.6 = 0x14[$r0.1]   ## bblock 4, line 984, t102, t124
;;								## 1
	c0    add $r0.2 = $r0.2, 1073741824   ## bblock 4, line 984,  t204,  t101,  1073741824(SI32)
;;								## 2
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    add $r0.5 = $r0.2, $r0.6   ## bblock 4, line 984,  t149,  t204,  t102
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 5, line 996,  raddr(roundAndPackFloat32)(P32),  t139,  t154,  t149
;;								## 3
	c0    goto L74?3 ## goto
;;								## 4
.trace 8
L81?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 8, line 977, t87, t124
	c0    mov $r0.3 = $r0.9   ## t137
;;								## 0
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 8, line 977, t88, t124
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.5   ## bblock 8, line 977,  t205,  t87,  t88
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 8, line 977,  t206,  t205,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L83?3   ## bblock 8, line 977,  t206
;;								## 6
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 10, line 978,  raddr(propagateFloat32NaN)(P32),  t137,  t138
;;								## 7
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 11, line 978,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 11
.trace 11
L83?3:
	c0    mov $r0.3 = $r0.9   ## t137
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t123
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 9, line 979,  t124,  ?2.21?2auto_size(I32),  t123
;;								## 3
.endp
.section .bss
.section .data
.equ ?2.21?2scratch.0, 0x0
.equ _?1PACKET.169, 0x10
.equ _?1PACKET.168, 0x14
.equ ?2.21?2ras_p, 0x18
.section .data
.section .text
.equ ?2.21?2auto_size, 0x20
 ## End addFloat32Sigs
 ## Begin subFloat32Sigs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:s32)
subFloat32Sigs:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    and $r0.2 = $r0.3, 8388607   ## bblock 0, line 1005,  t13,  t134,  8388607(I32)
	c0    and $r0.6 = $r0.4, 8388607   ## bblock 0, line 1007,  t15,  t135,  8388607(I32)
	c0    shru $r0.7 = $r0.3, 23   ## bblock 0, line 1006,  t3(I9),  t134,  23(SI32)
	c0    shru $r0.8 = $r0.4, 23   ## bblock 0, line 1008,  t8(I9),  t135,  23(SI32)
;;								## 0
	c0    and $r0.7 = $r0.7, 255   ## bblock 0, line 1006,  t149,  t3(I9),  255(I32)
	c0    and $r0.8 = $r0.8, 255   ## bblock 0, line 1008,  t148,  t8(I9),  255(I32)
	c0    shl $r0.2 = $r0.2, 7   ## bblock 0, line 1010,  t14,  t13,  7(SI32)
	c0    shl $r0.6 = $r0.6, 7   ## bblock 0, line 1011,  t16,  t15,  7(SI32)
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t120
	c0    mov $r0.9 = $r0.3   ## t134
;;								## 1
	c0    sub $r0.10 = $r0.7, $r0.8   ## bblock 0, line 1009,  t145,  t149,  t148
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 0, line 1010, t121, t14
	c0    cmpeq $b0.0 = $r0.7, 255   ## [spec] bblock 31, line 1077,  t213(I1),  t149,  255(SI32)
	c0    cmpeq $b0.1 = $r0.8, $r0.0   ## [spec] bblock 32, line 1082,  t214(I1),  t148,  0(SI32)
	c0    mov $r0.11 = $r0.7   ## [spec] bblock 10, line 1107,  t147,  t149
	c0    mov $r0.3 = $r0.5   ## t136
;;								## 2
	c0    cmpgt $b0.2 = $r0.10, $r0.0   ## bblock 0, line 1012,  t200(I1),  t145,  0(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 34, line 1104, t108, t121
	c0    mov $r0.12 = $r0.4   ## t135
;;								## 3
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 0, line 1011, t121, t16
	c0    add $r0.4 = $r0.11, -1   ## [spec] bblock 8, line 1109,  t118,  t147,  -1(SI32)
;;								## 4
	c0    ldw.d $r0.6 = 0x10[$r0.1]   ## [spec] bblock 34, line 1090, t184, t121
	c0    or $r0.2 = $r0.2, 1073741824   ## [spec] bblock 34, line 1104,  t109,  t108,  1073741824(I32)
	c0    brf $b0.2, L84?3   ## bblock 0, line 1012,  t200(I1)
;;								## 5
	c0    br $b0.0, L85?3   ## bblock 31, line 1077,  t213(I1)
;;								## 6
	c0    cmpne $r0.8 = $r0.6, $r0.0   ## [spec] bblock 34, line 1100,  t192,  t184,  0(I32)
	c0    brf $b0.1, L86?3   ## bblock 32, line 1082,  t214(I1)
;;								## 7
	c0    add $r0.10 = $r0.10, -1   ## bblock 40, line 1083,  t145,  t145,  -1(SI32)
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 34, line 1104, t121, t109
;;								## 8
L87?3:
	c0    sub $r0.2 = $r0.0, $r0.10   ## bblock 34, line 1097,  t186,  0(I32),  t145
	c0    shru $r0.7 = $r0.6, $r0.10   ## bblock 34, line 1097,  t187,  t184,  t145
	c0    cmpge $b0.0 = $r0.10, 32   ## bblock 34, line 1096,  t185(I1),  t145,  32(SI32)
	c0    cmpeq $b0.1 = $r0.10, $r0.0   ## bblock 34, line 1090,  t215(I1),  t145,  0(I32)
	c0    ldw $r0.9 = 0x14[$r0.1]   ## bblock 10, line 1106, t111, t121
;;								## 9
	c0    and $r0.2 = $r0.2, 31   ## bblock 34, line 1097,  t188,  t186,  31(I32)
;;								## 10
	c0    shl $r0.2 = $r0.6, $r0.2   ## bblock 34, line 1097,  t189,  t184,  t188
;;								## 11
	c0    cmpne $r0.2 = $r0.2, $r0.0   ## bblock 34, line 1097,  t190,  t189,  0(I32)
;;								## 12
	c0    or $r0.7 = $r0.7, $r0.2   ## bblock 34, line 1097,  t191,  t187,  t190
;;								## 13
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.7   ## bblock 34, line 1097,  t193,  t185(I1),  t192,  t191
;;								## 14
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.8   ## bblock 34, line 1090,  t138,  t215(I1),  t184,  t193
;;								## 15
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 34, line 1102, t121, t138
;;								## 16
L88?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 10, line 1106, t110, t121
;;								## 17
;;								## 18
.call normalizeRoundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    sub $r0.5 = $r0.9, $r0.2   ## bblock 10, line 1106,  t146,  t111,  t110
	c0    call $l0.0 = normalizeRoundAndPackFloat32   ## bblock 8, line 1110,  raddr(normalizeRoundAndPackFloat32)(P32),  t136,  t118,  t146
;;								## 19
L89?3:
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 20
;;								## 21
;;								## 22
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 9, line 1110,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 23
.trace 4
L86?3:
	c0    ldw $r0.7 = 0x10[$r0.1]   ## bblock 33, line 1086, t86, t121
	c0    mov $r0.3 = $r0.5   ## t136
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 34, line 1104, t121, t109
;;								## 1
	c0    or $r0.7 = $r0.7, 1073741824   ## bblock 33, line 1086,  t87,  t86,  1073741824(I32)
;;								## 2
	c0    stw 0x10[$r0.1] = $r0.7   ## bblock 33, line 1086, t121, t87
;;								## 3
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 34, line 1090, t184, t121
;;								## 4
;;								## 5
	c0    cmpne $r0.8 = $r0.6, $r0.0   ## bblock 34, line 1100,  t192,  t184,  0(I32)
	c0    goto L87?3 ## goto
;;								## 6
.trace 8
L85?3:
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 41, line 1078, t78, t121
	c0    mov $r0.4 = $r0.12   ## t135
	c0    mov $r0.3 = $r0.9   ## t134
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 41, line 1078,  t216(I1),  t78,  0(SI32)
;;								## 2
;;								## 3
	c0    brf $b0.0, L90?3   ## bblock 41, line 1078,  t216(I1)
;;								## 4
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 43, line 1079,  raddr(propagateFloat32NaN)(P32),  t134,  t135
;;								## 5
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 44, line 1079,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 9
.trace 10
L90?3:
	c0    mov $r0.3 = $r0.9   ## t134
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 42, line 1080,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 3
.trace 2
L84?3:
	c0    cmplt $b0.0 = $r0.10, $r0.0   ## bblock 1, line 1014,  t201(I1),  t145,  0(SI32)
	c0    cmpeq $b0.1 = $r0.8, 255   ## [spec] bblock 17, line 1039,  t209(I1),  t148,  255(SI32)
	c0    cmpeq $b0.2 = $r0.7, $r0.0   ## [spec] bblock 18, line 1045,  t210(I1),  t149,  0(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 20, line 1053, t173, t121
	c0    mov $r0.11 = $r0.8   ## [spec] bblock 7, line 1070,  t147,  t148
;;								## 0
	c0    ldw.d $r0.6 = 0x10[$r0.1]   ## [spec] bblock 20, line 1067, t69, t121
	c0    add $r0.4 = $r0.11, -1   ## [spec] bblock 8, line 1109,  t118,  t147,  -1(SI32)
;;								## 1
	c0    cmpne $r0.11 = $r0.2, $r0.0   ## [spec] bblock 20, line 1063,  t181,  t173,  0(I32)
	c0    brf $b0.0, L91?3   ## bblock 1, line 1014,  t201(I1)
;;								## 2
	c0    or $r0.6 = $r0.6, 1073741824   ## [spec] bblock 20, line 1067,  t70,  t69,  1073741824(I32)
	c0    br $b0.1, L92?3   ## bblock 17, line 1039,  t209(I1)
;;								## 3
	c0    brf $b0.2, L93?3   ## bblock 18, line 1045,  t210(I1)
;;								## 4
	c0    add $r0.10 = $r0.10, 1   ## bblock 26, line 1046,  t145,  t145,  1(SI32)
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 20, line 1067, t121, t70
	c0    xor $r0.3 = $r0.5, 1   ## bblock 7, line 1071,  t136,  t136,  1(SI32)
;;								## 5
L94?3:
	c0    sub $r0.10 = $r0.0, $r0.10   ## bblock 20, line 1056,  t172,  0(I32),  t145
	c0    ldw $r0.6 = 0x10[$r0.1]   ## bblock 7, line 1069, t72, t121
;;								## 6
	c0    sub $r0.9 = $r0.0, $r0.10   ## bblock 20, line 1060,  t175,  0(I32),  t172
	c0    shru $r0.12 = $r0.2, $r0.10   ## bblock 20, line 1060,  t176,  t173,  t172
	c0    cmpge $b0.0 = $r0.10, 32   ## bblock 20, line 1059,  t174(I1),  t172,  32(SI32)
	c0    cmpeq $b0.1 = $r0.10, $r0.0   ## bblock 20, line 1053,  t211(I1),  t172,  0(I32)
;;								## 7
	c0    and $r0.9 = $r0.9, 31   ## bblock 20, line 1060,  t177,  t175,  31(I32)
;;								## 8
	c0    shl $r0.9 = $r0.2, $r0.9   ## bblock 20, line 1060,  t178,  t173,  t177
;;								## 9
	c0    cmpne $r0.9 = $r0.9, $r0.0   ## bblock 20, line 1060,  t179,  t178,  0(I32)
;;								## 10
	c0    or $r0.12 = $r0.12, $r0.9   ## bblock 20, line 1060,  t180,  t176,  t179
;;								## 11
	c0    slct $r0.11 = $b0.0, $r0.11, $r0.12   ## bblock 20, line 1060,  t182,  t174(I1),  t181,  t180
;;								## 12
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.11   ## bblock 20, line 1053,  t142,  t211(I1),  t173,  t182
;;								## 13
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 20, line 1065, t121, t142
;;								## 14
L95?3:
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 7, line 1069, t71, t121
;;								## 15
;;								## 16
.call normalizeRoundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    sub $r0.5 = $r0.6, $r0.2   ## bblock 7, line 1069,  t146,  t72,  t71
	c0    call $l0.0 = normalizeRoundAndPackFloat32   ## bblock 8, line 1110,  raddr(normalizeRoundAndPackFloat32)(P32),  t136,  t118,  t146
;;								## 17
	c0    goto L89?3 ## goto
;;								## 18
.trace 6
L93?3:
	c0    ldw $r0.7 = 0x14[$r0.1]   ## bblock 19, line 1049, t46, t121
	c0    xor $r0.3 = $r0.5, 1   ## bblock 7, line 1071,  t136,  t136,  1(SI32)
;;								## 0
	c0    stw 0x10[$r0.1] = $r0.6   ## bblock 20, line 1067, t121, t70
;;								## 1
	c0    or $r0.7 = $r0.7, 1073741824   ## bblock 19, line 1049,  t47,  t46,  1073741824(I32)
;;								## 2
	c0    stw 0x14[$r0.1] = $r0.7   ## bblock 19, line 1049, t121, t47
;;								## 3
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 20, line 1053, t173, t121
;;								## 4
;;								## 5
	c0    cmpne $r0.11 = $r0.2, $r0.0   ## bblock 20, line 1063,  t181,  t173,  0(I32)
	c0    goto L94?3 ## goto
;;								## 6
.trace 11
L92?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 27, line 1040, t35, t121
	c0    mov $r0.4 = $r0.12   ## t135
	c0    mov $r0.3 = $r0.9   ## t134
;;								## 0
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 27, line 1040,  t212(I1),  t35,  0(SI32)
;;								## 2
;;								## 3
	c0    brf $b0.0, L96?3   ## bblock 27, line 1040,  t212(I1)
;;								## 4
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 29, line 1041,  raddr(propagateFloat32NaN)(P32),  t134,  t135
;;								## 5
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 30, line 1041,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 9
.trace 12
L96?3:
	c0    xor $r0.5 = $r0.5, 1   ## bblock 28, line 1042,  t40,  t136,  1(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 0
	c0    shl $r0.5 = $r0.5, 31   ## bblock 28, line 1042,  t41,  t40,  31(SI32)
;;								## 1
	c0    add $r0.3 = $r0.5, 2139095040   ## bblock 28, line 1043,  t42,  t41,  2139095040(I32)
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 28, line 1043,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 3
.trace 3
L91?3:
	c0    cmpeq $b0.0 = $r0.7, 255   ## bblock 2, line 1019,  t202(I1),  t149,  255(SI32)
	c0    cmpne $b0.1 = $r0.7, $r0.0   ## [spec] bblock 3, line 1026,  t203(I1),  t149,  0(I32)
	c0    cmpne $b0.2 = $r0.7, $r0.0   ## [spec] bblock 3, line 1026,  t204(I1),  t149,  0(I32)
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 3, line 1029, t26, t121
	c0    mov $r0.3 = $r0.5   ## t136
;;								## 0
	c0    slct $r0.8 = $b0.1, $r0.8, 1   ## [spec] bblock 3, line 1026,  t148,  t203(I1),  t148,  1(SI32)
	c0    slct $r0.7 = $b0.2, $r0.7, 1   ## [spec] bblock 3, line 1026,  t149,  t204(I1),  t149,  1(SI32)
	c0    ldw.d $r0.6 = 0x14[$r0.1]   ## [spec] bblock 3, line 1029, t27, t121
;;								## 1
	c0    ldw.d $r0.10 = 0x14[$r0.1]   ## [spec] bblock 10, line 1106, t111, t121
	c0    mov $r0.11 = $r0.7   ## [spec] bblock 10, line 1107,  t147,  t149
	c0    br $b0.0, L97?3   ## bblock 2, line 1019,  t202(I1)
;;								## 2
	c0    cmpltu $b0.0 = $r0.2, $r0.6   ## bblock 3, line 1029,  t205(I1),  t26,  t27
	c0    add $r0.4 = $r0.11, -1   ## [spec] bblock 8, line 1109,  t118,  t147,  -1(SI32)
;;								## 3
	c0    mov $r0.9 = $r0.10   ## [spec] t111
;;								## 4
	c0    brf $b0.0, L98?3   ## bblock 3, line 1029,  t205(I1)
	      ## goto
;;
	c0    goto L88?3 ## goto
;;								## 5
.trace 5
L98?3:
	c0    cmpltu $b0.0 = $r0.6, $r0.2   ## bblock 5, line 1031,  t206(I1),  t27,  t26
	c0    ldw.d $r0.6 = 0x10[$r0.1]   ## [spec] bblock 7, line 1069, t72, t121
	c0    mov $r0.11 = $r0.8   ## [spec] bblock 7, line 1070,  t147,  t148
	c0    xor $r0.3 = $r0.3, 1   ## [spec] bblock 7, line 1071,  t136,  t136,  1(SI32)
;;								## 0
	c0    add $r0.4 = $r0.11, -1   ## [spec] bblock 8, line 1109,  t118,  t147,  -1(SI32)
;;								## 1
	c0    brf $b0.0, L99?3   ## bblock 5, line 1031,  t206(I1)
	      ## goto
;;
	c0    goto L95?3 ## goto
;;								## 2
.trace 7
L99?3:
	c0    ldw $r0.2 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 6, line 1033, t30, 0(I32)
;;								## 0
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 1   ## bblock 6, line 1033,  t31,  t30,  1(SI32)
;;								## 2
	c0    shl $r0.3 = $r0.2, 31   ## bblock 6, line 1033,  t33,  t31,  31(SI32)
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 6, line 1034,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 4
.trace 9
L97?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 12, line 1020, t20, t121
	c0    mov $r0.4 = $r0.12   ## t135
	c0    mov $r0.3 = $r0.9   ## t134
;;								## 0
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 12, line 1020, t21, t121
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.5   ## bblock 12, line 1020,  t207,  t20,  t21
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 12, line 1020,  t208,  t207,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L100?3   ## bblock 12, line 1020,  t208
;;								## 6
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 15, line 1021,  raddr(propagateFloat32NaN)(P32),  t134,  t135
;;								## 7
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 16, line 1021,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 11
.trace 13
L100?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 13, line 1022,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t120
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 14, line 1023,  t121,  ?2.22?2auto_size(I32),  t120
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.22?2scratch.0, 0x0
.equ _?1PACKET.184, 0x10
.equ _?1PACKET.183, 0x14
.equ ?2.22?2ras_p, 0x18
.section .data
.section .text
.equ ?2.22?2auto_size, 0x20
 ## End subFloat32Sigs
 ## Begin _r_add
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_add::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.5 = $r0.3, 31   ## bblock 0, line 1117,  t30(I1),  t27,  31(SI32)
	c0    shru $r0.2 = $r0.4, 31   ## bblock 0, line 1118,  t5(I1),  t28,  31(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.5, $r0.2   ## bblock 0, line 1119,  t31(I1),  t30(I1),  t5(I1)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t14
;;								## 1
;;								## 2
	c0    brf $b0.0, L101?3   ## bblock 0, line 1119,  t31(I1)
;;								## 3
.call addFloat32Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:u32)
	c0    call $l0.0 = addFloat32Sigs   ## bblock 3, line 1120,  raddr(addFloat32Sigs)(P32),  t27,  t28,  t30(I1)
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 4, line 1120,  t15,  ?2.23?2auto_size(I32),  t14
;;								## 8
.trace 2
L101?3:
.call subFloat32Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:u32)
	c0    call $l0.0 = subFloat32Sigs   ## bblock 1, line 1123,  raddr(subFloat32Sigs)(P32),  t27,  t28,  t30(I1)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1123,  t15,  ?2.23?2auto_size(I32),  t14
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.23?2scratch.0, 0x0
.equ ?2.23?2ras_p, 0x10
.section .data
.section .text
.equ ?2.23?2auto_size, 0x20
 ## End _r_add
 ## Begin _r_sub
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_sub::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.5 = $r0.3, 31   ## bblock 0, line 1131,  t30(I1),  t27,  31(SI32)
	c0    shru $r0.2 = $r0.4, 31   ## bblock 0, line 1132,  t5(I1),  t28,  31(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.5, $r0.2   ## bblock 0, line 1133,  t31(I1),  t30(I1),  t5(I1)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t14
;;								## 1
;;								## 2
	c0    brf $b0.0, L102?3   ## bblock 0, line 1133,  t31(I1)
;;								## 3
.call subFloat32Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:u32)
	c0    call $l0.0 = subFloat32Sigs   ## bblock 3, line 1134,  raddr(subFloat32Sigs)(P32),  t27,  t28,  t30(I1)
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 4, line 1134,  t15,  ?2.24?2auto_size(I32),  t14
;;								## 8
.trace 2
L102?3:
.call addFloat32Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:u32)
	c0    call $l0.0 = addFloat32Sigs   ## bblock 1, line 1137,  raddr(addFloat32Sigs)(P32),  t27,  t28,  t30(I1)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t14
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1137,  t15,  ?2.24?2auto_size(I32),  t14
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.24?2scratch.0, 0x0
.equ ?2.24?2ras_p, 0x10
.section .data
.section .text
.equ ?2.24?2auto_size, 0x20
 ## End _r_sub
 ## Begin _r_mul
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
_r_mul::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.8 = $r0.3, 8388607   ## bblock 0, line 1147,  t177,  t158,  8388607(I32)
	c0    shru $r0.9 = $r0.3, 23   ## bblock 0, line 1148,  t3(I9),  t158,  23(SI32)
	c0    shru $r0.2 = $r0.4, 23   ## bblock 0, line 1151,  t10(I9),  t159,  23(SI32)
	c0    shru $r0.6 = $r0.3, 31   ## bblock 0, line 1149,  t15(I1),  t158,  31(SI32)
	c0    shru $r0.7 = $r0.4, 31   ## bblock 0, line 1152,  t14(I1),  t159,  31(SI32)
;;								## 0
	c0    and $r0.10 = $r0.4, 8388607   ## bblock 0, line 1150,  t176,  t159,  8388607(I32)
	c0    and $r0.9 = $r0.9, 255   ## bblock 0, line 1148,  t180,  t3(I9),  255(I32)
	c0    and $r0.2 = $r0.2, 255   ## bblock 0, line 1151,  t179,  t10(I9),  255(I32)
	c0    or $r0.11 = $r0.8, 8388608   ## [spec] bblock 4, line 1204,  t73,  t177,  8388608(I32)
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t145
	c0    mov $r0.12 = $r0.3   ## t158
;;								## 1
	c0    xor $r0.3 = $r0.6, $r0.7   ## bblock 0, line 1153,  t181,  t15(I1),  t14(I1)
	c0    cmpeq $b0.0 = $r0.9, 255   ## bblock 0, line 1157,  t197(I1),  t180,  255(SI32)
	c0    cmpeq $b0.1 = $r0.2, 255   ## [spec] bblock 1, line 1170,  t198(I1),  t179,  255(SI32)
	c0    cmpeq $b0.2 = $r0.9, $r0.0   ## [spec] bblock 2, line 1182,  t199(I1),  t180,  0(SI32)
	c0    add $r0.14 = $r0.2, $r0.9   ## [spec] bblock 4, line 1203,  t196,  t179,  t180
	c0    shl $r0.11 = $r0.11, 7   ## [spec] bblock 4, line 1204,  t84,  t73,  7(SI32)
	c0    or $r0.13 = $r0.10, 8388608   ## [spec] bblock 4, line 1205,  t76,  t176,  8388608(I32)
;;								## 2
	c0    cmpeq $b0.3 = $r0.2, $r0.0   ## [spec] bblock 3, line 1194,  t200(I1),  t179,  0(SI32)
	c0    add $r0.6 = $r0.14, -127   ## [spec] bblock 4, line 1203,  t192,  t196,  -127(SI32)
	c0    shl $r0.13 = $r0.13, 8   ## [spec] bblock 4, line 1205,  t89,  t76,  8(SI32)
	c0    add $r0.7 = $r0.14, -128   ## [spec] bblock 4, line 1234,  t188,  t196,  -128(SI32)
;;								## 3
	c0    mpyllu $r0.16 = $r0.11, $r0.13   ## [spec] bblock 4, line 1216,  t117,  t84,  t89
	c0    mpylhu $r0.14 = $r0.13, $r0.11   ## [spec] bblock 4, line 1218,  t111,  t89,  t84
	c0    mpylhu $r0.15 = $r0.11, $r0.13   ## [spec] bblock 4, line 1217,  t104,  t84,  t89
	c0    mpyhhu $r0.17 = $r0.11, $r0.13   ## [spec] bblock 4, line 1219,  t107,  t84,  t89
	c0    br $b0.0, L103?3   ## bblock 0, line 1157,  t197(I1)
;;								## 4
	c0    br $b0.1, L104?3   ## bblock 1, line 1170,  t198(I1)
;;								## 5
	c0    add $r0.15 = $r0.14, $r0.15   ## [spec] bblock 4, line 1220,  t115,  t111,  t104
	c0    br $b0.2, L105?3   ## bblock 2, line 1182,  t199(I1)
;;								## 6
L106?3:
	c0    shru $r0.11 = $r0.15, 16   ## [spec] bblock 4, line 1221,  t109(I16),  t115,  16(SI32)
	c0    cmpltu $r0.14 = $r0.15, $r0.14   ## [spec] bblock 4, line 1221,  t112,  t115,  t111
	c0    shl $r0.2 = $r0.15, 16   ## [spec] bblock 4, line 1222,  t122,  t115,  16(SI32)
	c0    br $b0.3, L107?3   ## bblock 3, line 1194,  t200(I1)
;;								## 7
L108?3:
	c0    shl $r0.14 = $r0.14, 16   ## bblock 4, line 1221,  t113,  t112,  16(SI32)
	c0    add $r0.16 = $r0.16, $r0.2   ## bblock 4, line 1223,  t132,  t117,  t122
	c0    add $r0.11 = $r0.11, $r0.17   ## bblock 4, line 1224,  t201,  t109(I16),  t107
;;								## 8
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## bblock 4, line 1224,  t123,  t132,  t122
	c0    stw 0x14[$r0.1] = $r0.16   ## bblock 4, line 1225, t146, t132
	c0    cmpne $r0.8 = $r0.16, $r0.0   ## bblock 4, line 1230,  t133,  t132,  0(I32)
;;								## 9
	c0    add $r0.14 = $r0.14, $r0.2   ## bblock 4, line 1224,  t202,  t113,  t123
;;								## 10
	c0    add $r0.11 = $r0.11, $r0.14   ## bblock 4, line 1224,  t131,  t201,  t202
;;								## 11
	c0    stw 0x10[$r0.1] = $r0.11   ## bblock 4, line 1226, t146, t131
	c0    or $r0.8 = $r0.11, $r0.8   ## bblock 4, line 1230,  t191,  t131,  t133
;;								## 12
	c0    shl $r0.2 = $r0.8, 1   ## bblock 4, line 1232,  t187,  t191,  1(SI32)
;;								## 13
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 4, line 1232,  t186(I1),  t187,  0(SI32)
;;								## 14
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    slct $r0.5 = $b0.0, $r0.8, $r0.2   ## bblock 4, line 1232,  t175,  t186(I1),  t191,  t187
	c0    slct $r0.4 = $b0.0, $r0.6, $r0.7   ## bblock 4, line 1234,  t178,  t186(I1),  t192,  t188
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 4, line 1236,  raddr(roundAndPackFloat32)(P32),  t181,  t178,  t175
;;								## 15
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 16
;;								## 17
;;								## 18
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 6, line 1236,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 19
.trace 5
L107?3:
	c0    cmpeq $b0.0 = $r0.10, $r0.0   ## bblock 8, line 1195,  t203(I1),  t176,  0(SI32)
	c0    shl $r0.2 = $r0.3, 31   ## [spec] bblock 11, line 1196,  t60,  t181,  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 0
	c0    mov $r0.3 = $r0.2   ## [spec] t60
	c0    mov $r0.4 = $r0.3   ## t181
;;								## 1
	c0    brf $b0.0, L109?3   ## bblock 8, line 1195,  t203(I1)
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 11, line 1196,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 3
.trace 9
L109?3:
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t181
	c0    mov $r0.3 = $r0.10   ## t176
;;								## 0
	c0    stw 0x28[$r0.1] = $r0.8  ## spill ## t177
;;								## 1
	c0    stw 0x2c[$r0.1] = $r0.9  ## spill ## t180
;;								## 2
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 9, line 1198,  raddr(countLeadingZeros32)(P32),  t176
	c0    stw 0x20[$r0.1] = $r0.10  ## spill ## t176
;;								## 3
	c0    add $r0.4 = $r0.3, -8   ## bblock 10, line 1198,  t67,  t61,  -8(SI32)
	c0    sub $r0.3 = 9, $r0.3   ## bblock 10, line 1200,  t179,  9(SI32),  t61
	c0    ldw $r0.10 = 0x20[$r0.1]  ## restore ## t176
;;								## 4
	c0    ldw $r0.8 = 0x28[$r0.1]  ## restore ## t177
;;								## 5
	c0    shl $r0.10 = $r0.10, $r0.4   ## bblock 10, line 1199,  t176,  t176,  t67
	c0    ldw $r0.9 = 0x2c[$r0.1]  ## restore ## t180
;;								## 6
	c0    or $r0.8 = $r0.8, 8388608   ## bblock 4, line 1204,  t73,  t177,  8388608(I32)
	c0    or $r0.13 = $r0.10, 8388608   ## bblock 4, line 1205,  t76,  t176,  8388608(I32)
;;								## 7
	c0    add $r0.3 = $r0.3, $r0.9   ## bblock 4, line 1203,  t196,  t179,  t180
	c0    shl $r0.8 = $r0.8, 7   ## bblock 4, line 1204,  t84,  t73,  7(SI32)
	c0    shl $r0.13 = $r0.13, 8   ## bblock 4, line 1205,  t89,  t76,  8(SI32)
;;								## 8
	c0    add $r0.6 = $r0.3, -127   ## bblock 4, line 1203,  t192,  t196,  -127(SI32)
	c0    mpyllu $r0.16 = $r0.8, $r0.13   ## bblock 4, line 1216,  t117,  t84,  t89
	c0    mpylhu $r0.4 = $r0.13, $r0.8   ## bblock 4, line 1218,  t111,  t89,  t84
	c0    mpylhu $r0.15 = $r0.8, $r0.13   ## bblock 4, line 1217,  t104,  t84,  t89
	c0    mpyhhu $r0.17 = $r0.8, $r0.13   ## bblock 4, line 1219,  t107,  t84,  t89
	c0    add $r0.7 = $r0.3, -128   ## bblock 4, line 1234,  t188,  t196,  -128(SI32)
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t181
;;								## 9
;;								## 10
	c0    add $r0.15 = $r0.4, $r0.15   ## bblock 4, line 1220,  t115,  t111,  t104
;;								## 11
	c0    shru $r0.11 = $r0.15, 16   ## bblock 4, line 1221,  t109(I16),  t115,  16(SI32)
	c0    cmpltu $r0.14 = $r0.15, $r0.4   ## bblock 4, line 1221,  t112,  t115,  t111
	c0    shl $r0.2 = $r0.15, 16   ## bblock 4, line 1222,  t122,  t115,  16(SI32)
	c0    goto L108?3 ## goto
;;								## 12
.trace 4
L105?3:
	c0    cmpeq $b0.0 = $r0.8, $r0.0   ## bblock 12, line 1183,  t204(I1),  t177,  0(SI32)
	c0    shl $r0.4 = $r0.3, 31   ## [spec] bblock 15, line 1184,  t47,  t181,  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 0
	c0    mov $r0.3 = $r0.4   ## [spec] t47
	c0    mov $r0.5 = $r0.3   ## t181
;;								## 1
	c0    brf $b0.0, L110?3   ## bblock 12, line 1183,  t204(I1)
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 15, line 1184,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 3
.trace 8
L110?3:
	c0    stw 0x1c[$r0.1] = $r0.5  ## spill ## t181
	c0    mov $r0.3 = $r0.8   ## t177
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.10  ## spill ## t176
;;								## 1
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t179
;;								## 2
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 13, line 1186,  raddr(countLeadingZeros32)(P32),  t177
	c0    stw 0x28[$r0.1] = $r0.8  ## spill ## t177
;;								## 3
	c0    add $r0.2 = $r0.3, -8   ## bblock 14, line 1186,  t54,  t48,  -8(SI32)
	c0    sub $r0.9 = 9, $r0.3   ## bblock 14, line 1188,  t180,  9(SI32),  t48
	c0    ldw $r0.8 = 0x28[$r0.1]  ## restore ## t177
;;								## 4
	c0    ldw $r0.10 = 0x20[$r0.1]  ## restore ## t176
;;								## 5
	c0    shl $r0.8 = $r0.8, $r0.2   ## bblock 14, line 1187,  t177,  t177,  t54
	c0    ldw $r0.2 = 0x24[$r0.1]  ## restore ## t179
;;								## 6
	c0    or $r0.11 = $r0.8, 8388608   ## [spec] bblock 4, line 1204,  t73,  t177,  8388608(I32)
	c0    or $r0.13 = $r0.10, 8388608   ## [spec] bblock 4, line 1205,  t76,  t176,  8388608(I32)
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t181
;;								## 7
	c0    cmpeq $b0.3 = $r0.2, $r0.0   ## bblock 3, line 1194,  t200(I1),  t179,  0(SI32)
	c0    add $r0.4 = $r0.2, $r0.9   ## [spec] bblock 4, line 1203,  t196,  t179,  t180
	c0    shl $r0.11 = $r0.11, 7   ## [spec] bblock 4, line 1204,  t84,  t73,  7(SI32)
	c0    shl $r0.13 = $r0.13, 8   ## [spec] bblock 4, line 1205,  t89,  t76,  8(SI32)
;;								## 8
	c0    add $r0.6 = $r0.4, -127   ## [spec] bblock 4, line 1203,  t192,  t196,  -127(SI32)
	c0    mpyllu $r0.16 = $r0.11, $r0.13   ## [spec] bblock 4, line 1216,  t117,  t84,  t89
	c0    mpylhu $r0.14 = $r0.13, $r0.11   ## [spec] bblock 4, line 1218,  t111,  t89,  t84
	c0    mpylhu $r0.2 = $r0.11, $r0.13   ## [spec] bblock 4, line 1217,  t104,  t84,  t89
	c0    mpyhhu $r0.17 = $r0.11, $r0.13   ## [spec] bblock 4, line 1219,  t107,  t84,  t89
	c0    add $r0.7 = $r0.4, -128   ## [spec] bblock 4, line 1234,  t188,  t196,  -128(SI32)
;;								## 9
;;								## 10
	c0    add $r0.15 = $r0.14, $r0.2   ## [spec] bblock 4, line 1220,  t115,  t111,  t104
	c0    goto L106?3 ## goto
;;								## 11
.trace 3
L104?3:
	c0    cmpne $b0.0 = $r0.10, $r0.0   ## bblock 16, line 1171,  t205(I1),  t176,  0(SI32)
	c0    mov $r0.3 = $r0.12   ## t158
	c0    mov $r0.2 = $r0.3   ## t181
;;								## 0
;;								## 1
	c0    brf $b0.0, L111?3   ## bblock 16, line 1171,  t205(I1)
;;								## 2
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 21, line 1172,  raddr(propagateFloat32NaN)(P32),  t158,  t159
;;								## 3
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 22, line 1172,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 7
.trace 7
L111?3:
	c0    or $r0.8 = $r0.8, $r0.9   ## bblock 17, line 1173,  t39,  t177,  t180
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.8, $r0.0   ## bblock 17, line 1173,  t206(I1),  t39,  0(SI32)
;;								## 1
;;								## 2
	c0    brf $b0.0, L112?3   ## bblock 17, line 1173,  t206(I1)
;;								## 3
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 19, line 1174,  raddr(float_raise)(P32),  16(SI32)
;;								## 4
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 20, line 1175,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 8
.trace 11
L112?3:
	c0    shl $r0.2 = $r0.2, 31   ## bblock 18, line 1177,  t41,  t181,  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 0
	c0    add $r0.3 = $r0.2, 2139095040   ## bblock 18, line 1177,  t42,  t41,  2139095040(I32)
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 18, line 1177,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 3
.trace 2
L103?3:
	c0    cmpeq $r0.5 = $r0.2, 255   ## bblock 23, line 1158,  t20,  t179,  255(SI32)
	c0    mov $r0.3 = $r0.12   ## t158
	c0    mov $r0.6 = $r0.3   ## t181
;;								## 0
	c0    andl $r0.5 = $r0.5, $r0.10   ## bblock 23, line 1158,  t22,  t20,  t176
;;								## 1
	c0    orl $b0.0 = $r0.8, $r0.5   ## bblock 23, line 1158,  t208(I1),  t177,  t22
;;								## 2
;;								## 3
	c0    brf $b0.0, L113?3   ## bblock 23, line 1158,  t208(I1)
;;								## 4
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 28, line 1159,  raddr(propagateFloat32NaN)(P32),  t158,  t159
;;								## 5
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 29, line 1159,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 9
.trace 6
L113?3:
	c0    or $r0.10 = $r0.10, $r0.2   ## bblock 24, line 1161,  t28,  t176,  t179
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.10, $r0.0   ## bblock 24, line 1161,  t209(I1),  t28,  0(SI32)
;;								## 1
;;								## 2
	c0    brf $b0.0, L114?3   ## bblock 24, line 1161,  t209(I1)
;;								## 3
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 26, line 1162,  raddr(float_raise)(P32),  16(SI32)
;;								## 4
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 27, line 1163,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 8
.trace 10
L114?3:
	c0    shl $r0.6 = $r0.6, 31   ## bblock 25, line 1165,  t30,  t181,  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t145
;;								## 0
	c0    add $r0.3 = $r0.6, 2139095040   ## bblock 25, line 1165,  t31,  t30,  2139095040(I32)
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 25, line 1165,  t146,  ?2.25?2auto_size(I32),  t145
;;								## 3
.endp
.section .bss
.section .data
.equ ?2.25?2scratch.0, 0x0
.equ _?1PACKET.209, 0x10
.equ _?1PACKET.210, 0x14
.equ ?2.25?2ras_p, 0x18
.equ ?2.25?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.25?2auto_size, 0x40
 ## End _r_mul
 ## Begin _r_div
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-96, arg($r0.3:u32,$r0.4:u32)
_r_div::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x60)
	c0    and $r0.12 = $r0.3, 8388607   ## bblock 0, line 1247,  t228,  t197,  8388607(I32)
	c0    shru $r0.13 = $r0.3, 23   ## bblock 0, line 1248,  t3(I9),  t197,  23(SI32)
	c0    shru $r0.2 = $r0.4, 23   ## bblock 0, line 1251,  t10(I9),  t198,  23(SI32)
	c0    shru $r0.10 = $r0.3, 31   ## bblock 0, line 1249,  t15(I1),  t197,  31(SI32)
	c0    shru $r0.11 = $r0.4, 31   ## bblock 0, line 1252,  t14(I1),  t198,  31(SI32)
;;								## 0
	c0    and $r0.14 = $r0.4, 8388607   ## bblock 0, line 1250,  t227,  t198,  8388607(I32)
	c0    and $r0.2 = $r0.2, 255   ## bblock 0, line 1251,  t230,  t10(I9),  255(I32)
	c0    or $r0.16 = $r0.12, 8388608   ## [spec] bblock 4, line 1308,  t71,  t228,  8388608(I32)
	c0    stw 0x20[$r0.1] = $l0.0  ## spill ## t184
	c0    mov $r0.15 = $r0.13   ## t3(I9)
	c0    mov $r0.17 = $r0.4   ## t198
;;								## 1
	c0    and $r0.15 = $r0.15, 255   ## bblock 0, line 1248,  t231,  t3(I9),  255(I32)
	c0    xor $r0.13 = $r0.10, $r0.11   ## bblock 0, line 1253,  t232,  t15(I1),  t14(I1)
	c0    cmpeq $b0.0 = $r0.2, 255   ## [spec] bblock 1, line 1271,  t288(I1),  t230,  255(SI32)
	c0    cmpeq $b0.1 = $r0.2, $r0.0   ## [spec] bblock 2, line 1279,  t289(I1),  t230,  0(SI32)
	c0    shl $r0.16 = $r0.16, 7   ## [spec] bblock 4, line 1308,  t248,  t71,  7(SI32)
	c0    or $r0.18 = $r0.14, 8388608   ## [spec] bblock 4, line 1309,  t74,  t227,  8388608(I32)
	c0    mov $r0.4 = $r0.0   ## 0(I32)
;;								## 2
	c0    cmpeq $b0.2 = $r0.15, 255   ## bblock 0, line 1257,  t287(I1),  t231,  255(SI32)
	c0    cmpeq $b0.3 = $r0.15, $r0.0   ## [spec] bblock 3, line 1298,  t290(I1),  t231,  0(SI32)
	c0    sub $r0.20 = $r0.15, $r0.2   ## [spec] bblock 4, line 1307,  t284,  t231,  t230
	c0    add $r0.10 = $r0.16, $r0.16   ## [spec] bblock 4, line 1310,  t79,  t248,  t248
	c0    shl $r0.11 = $r0.18, 8   ## [spec] bblock 4, line 1309,  t240,  t74,  8(SI32)
	c0    shru $r0.19 = $r0.16, 1   ## [spec] bblock 4, line 1311,  t243(I31),  t248,  1(SI32)
	c0    stw 0x24[$r0.1] = $r0.13  ## spill ## t232
;;								## 3
	c0    add $r0.18 = $r0.20, 125   ## [spec] bblock 4, line 1307,  t249,  t284,  125(SI32)
	c0    cmpgtu $b0.4 = $r0.11, $r0.10   ## [spec] bblock 4, line 1310,  t242(I1),  t240,  t79
	c0    add $r0.21 = $r0.20, 126   ## [spec] bblock 4, line 1312,  t244,  t284,  126(SI32)
	c0    stw 0x28[$r0.1] = $r0.11  ## spill ## [spec] t240
	c0    mov $r0.5 = $r0.11   ## [spec] t240
;;								## 4
	c0    slct $r0.10 = $b0.4, $r0.16, $r0.19   ## [spec] bblock 4, line 1311,  t241,  t242(I1),  t248,  t243(I31)
	c0    mov $r0.11 = $r0.14   ## t227
	c0    br $b0.2, L115?3   ## bblock 0, line 1257,  t287(I1)
;;								## 5
	c0    slct $r0.14 = $b0.4, $r0.18, $r0.21   ## [spec] bblock 4, line 1312,  t229,  t242(I1),  t249,  t244
	c0    stw 0x2c[$r0.1] = $r0.10  ## spill ## [spec] t241
	c0    br $b0.0, L116?3   ## bblock 1, line 1271,  t288(I1)
;;								## 6
	c0    mov $r0.3 = $r0.10   ## [spec] t241
	c0    stw 0x30[$r0.1] = $r0.14  ## spill ## [spec] t229
	c0    br $b0.1, L117?3   ## bblock 2, line 1279,  t289(I1)
;;								## 7
L118?3:
	c0    br $b0.3, L119?3   ## bblock 3, line 1298,  t290(I1)
;;								## 8
L120?3:
.call estimateDiv64To32, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = estimateDiv64To32   ## bblock 4, line 1314,  raddr(estimateDiv64To32)(P32),  t241,  0(I32),  t240
;;								## 9
	c0    and $r0.10 = $r0.3, 63   ## bblock 6, line 1315,  t88,  t84,  63(I32)
	c0    mov $r0.7 = $r0.3   ## bblock 6, line 1314,  t253,  t84
	c0    add $r0.4 = $r0.1, 0x14   ## [spec] bblock 9, line 1339,  t175,  t185,  offset(rem0?1.190)=0x14(P32)
	c0    add $r0.5 = $r0.1, 0x10   ## [spec] bblock 9, line 1340,  t168,  t185,  offset(rem1?1.190)=0x10(P32)
	c0    mov $r0.9 = $r0.0   ## [spec] bblock 9, line 0,  t252,  0(I32)
	c0    add $r0.6 = $r0.3, (~0x0)   ## [spec] bblock 9, line 0,  t274,  t84,  (~0x0)(I32)
	c0    mov $r0.8 = (~0x0)   ## [spec] bblock 9, line 0,  t273,  (~0x0)(I32)
	c0    ldw $r0.2 = 0x28[$r0.1]  ## restore ## [spec] t240
;;								## 10
	c0    cmpleu $b0.0 = $r0.10, 2   ## bblock 6, line 1315,  t291(I1),  t88,  2(SI32)
	c0    ldw $r0.11 = 0x2c[$r0.1]  ## restore ## [spec] t241
;;								## 11
	c0    mpyllu $r0.16 = $r0.2, $r0.3   ## [spec] bblock 9, line 1325,  t128,  t240,  t84
	c0    mpylhu $r0.12 = $r0.3, $r0.2   ## [spec] bblock 9, line 1327,  t122,  t84,  t240
	c0    mpylhu $r0.15 = $r0.2, $r0.3   ## [spec] bblock 9, line 1326,  t115,  t240,  t84
	c0    mpyhhu $r0.17 = $r0.2, $r0.3   ## [spec] bblock 9, line 1328,  t118,  t240,  t84
	c0    ldw $r0.13 = 0x24[$r0.1]  ## restore ## t232
;;								## 12
	c0    ldw $r0.14 = 0x30[$r0.1]  ## restore ## [spec] t229
	c0    brf $b0.0, L121?3   ## bblock 6, line 1315,  t291(I1)
;;								## 13
	c0    add $r0.15 = $r0.12, $r0.15   ## bblock 9, line 1329,  t126,  t122,  t115
	c0    mov $r0.3 = $r0.2   ## [spec] t240
;;								## 14
	c0    shru $r0.10 = $r0.15, 16   ## bblock 9, line 1331,  t120(I16),  t126,  16(SI32)
	c0    cmpltu $r0.12 = $r0.15, $r0.12   ## bblock 9, line 1331,  t123,  t126,  t122
	c0    shl $r0.2 = $r0.15, 16   ## bblock 9, line 1332,  t133,  t126,  16(SI32)
;;								## 15
	c0    shl $r0.12 = $r0.12, 16   ## bblock 9, line 1331,  t124,  t123,  16(SI32)
	c0    add $r0.16 = $r0.16, $r0.2   ## bblock 9, line 1333,  t150,  t128,  t133
	c0    add $r0.10 = $r0.10, $r0.17   ## bblock 9, line 1334,  t292,  t120(I16),  t118
;;								## 16
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## bblock 9, line 1334,  t134,  t150,  t133
	c0    stw 0x1c[$r0.1] = $r0.16   ## bblock 9, line 1335, t185, t150
	c0    sub $r0.17 = $r0.0, $r0.16   ## bblock 9, line 1345,  t147,  0(I32),  t150
	c0    cmpgtu $r0.15 = $r0.16, $r0.0   ## bblock 9, line 1346,  t151,  t150,  0(SI32)
;;								## 17
	c0    add $r0.12 = $r0.12, $r0.2   ## bblock 9, line 1334,  t293,  t124,  t134
	c0    stw 0x10[$r0.1] = $r0.17   ## bblock 9, line 1345, t185, t147
;;								## 18
	c0    add $r0.10 = $r0.10, $r0.12   ## bblock 9, line 1334,  t152,  t292,  t293
;;								## 19
	c0    sub $r0.11 = $r0.11, $r0.10   ## bblock 9, line 1346,  t294,  t241,  t152
	c0    ldw $r0.12 = 0x20[$r0.1]  ## restore ## t184
;;								## 20
	c0    stw 0x18[$r0.1] = $r0.10   ## bblock 9, line 1336, t185, t152
	c0    sub $r0.11 = $r0.11, $r0.15   ## bblock 9, line 1346,  t154,  t294,  t151
;;								## 21
	c0    stw 0x14[$r0.1] = $r0.11   ## bblock 9, line 1346, t185, t154
;;								## 22
.trace 1
L122?3:
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 12, line 1354, t266, t185
;;								## 0
	c0    ldw $r0.10 = 0x14[$r0.1]   ## bblock 10, line 1348, t257, t185
;;								## 1
	c0    add $r0.11 = $r0.2, $r0.3   ## [spec] bblock 12, line 1357,  t267,  t266,  t240
;;								## 2
	c0    cmplt $b0.0 = $r0.10, $r0.0   ## bblock 10, line 1348,  t295(I1),  t257,  0(SI32)
	c0    cmpltu $r0.2 = $r0.11, $r0.2   ## [spec] bblock 12, line 1359,  t268,  t267,  t266
;;								## 3
	c0    add $r0.10 = $r0.10, $r0.2   ## [spec] bblock 12, line 1359,  t269,  t257,  t268
;;								## 4
	c0    brf $b0.0, L123?3   ## bblock 10, line 1348,  t295(I1)
;;								## 5
	c0    stw 0[$r0.4] = $r0.10   ## bblock 12, line 1359, t175, t269
	c0    add $r0.7 = $r0.7, -2   ## [spec] bblock 42, line 1349-2,  t253,  t253,  -2(SI32)
;;								## 6
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 12, line 1348-1, t261, t185
;;								## 7
	c0    stw 0[$r0.5] = $r0.11   ## bblock 12, line 1358, t168, t267
;;								## 8
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 12, line 1348-1,  t296(I1),  t261,  0(SI32)
	c0    ldw.d $r0.10 = 0x10[$r0.1]   ## [spec] bblock 45, line 1354-1, t260, t185
;;								## 9
;;								## 10
	c0    add $r0.11 = $r0.3, $r0.10   ## [spec] bblock 45, line 1357-1,  t258,  t240,  t260
	c0    brf $b0.0, L124?3   ## bblock 12, line 1348-1,  t296(I1)
;;								## 11
	c0    cmpltu $r0.10 = $r0.11, $r0.10   ## bblock 45, line 1359-1,  t259,  t258,  t260
	c0    stw 0[$r0.5] = $r0.11   ## bblock 45, line 1358-1, t168, t258
	c0    add $r0.9 = $r0.9, -2   ## [spec] bblock 13, line 1349-3,  t252,  t252,  -2(SI32)
;;								## 12
	c0    add $r0.2 = $r0.2, $r0.10   ## bblock 45, line 1359-1,  t272,  t261,  t259
	c0    ldw.d $r0.10 = 0x10[$r0.1]   ## [spec] bblock 42, line 1354-2, t262, t185
;;								## 13
	c0    stw 0[$r0.4] = $r0.2   ## bblock 45, line 1359-1, t175, t272
;;								## 14
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 45, line 1348-2, t271, t185
	c0    add $r0.11 = $r0.3, $r0.10   ## [spec] bblock 42, line 1357-2,  t265,  t240,  t262
;;								## 15
	c0    cmpltu $r0.10 = $r0.11, $r0.10   ## [spec] bblock 42, line 1359-2,  t264,  t265,  t262
;;								## 16
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 45, line 1348-2,  t305(I1),  t271,  0(SI32)
	c0    add $r0.2 = $r0.2, $r0.10   ## [spec] bblock 42, line 1359-2,  t263,  t271,  t264
;;								## 17
;;								## 18
	c0    brf $b0.0, L125?3   ## bblock 45, line 1348-2,  t305(I1)
;;								## 19
	c0    stw 0[$r0.5] = $r0.11   ## bblock 42, line 1358-2, t168, t265
	c0    add $r0.6 = $r0.6, (~0x1)   ## bblock 42, line 0,  t274,  t274,  (~0x1)(I32)
;;								## 20
	c0    ldw.d $r0.10 = 0x10[$r0.1]   ## [spec] bblock 13, line 1354-3, t170, t185
;;								## 21
	c0    stw 0[$r0.4] = $r0.2   ## bblock 42, line 1359-2, t175, t263
;;								## 22
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 42, line 1348-3, t156, t185
	c0    add $r0.11 = $r0.3, $r0.10   ## [spec] bblock 13, line 1357-3,  t169,  t240,  t170
;;								## 23
	c0    cmpltu $r0.10 = $r0.11, $r0.10   ## [spec] bblock 13, line 1359-3,  t171,  t169,  t170
;;								## 24
	c0    cmplt $b0.0 = $r0.2, $r0.0   ## bblock 42, line 1348-3,  t304(I1),  t156,  0(SI32)
	c0    add $r0.2 = $r0.2, $r0.10   ## [spec] bblock 13, line 1359-3,  t174,  t156,  t171
;;								## 25
;;								## 26
	c0    brf $b0.0, L126?3   ## bblock 42, line 1348-3,  t304(I1)
;;								## 27
	c0    stw 0[$r0.5] = $r0.11   ## bblock 13, line 1358-3, t168, t169
	c0    add $r0.8 = $r0.8, (~0x1)   ## bblock 13, line 0,  t273,  t273,  (~0x1)(I32)
;;								## 28
	c0    stw 0[$r0.4] = $r0.2   ## bblock 13, line 1359-3, t175, t174
	c0    goto L122?3 ## goto
;;								## 29
.trace 8
L126?3:
	c0    mov $r0.9 = $r0.8   ## bblock 40, line 0,  t254,  t273
	   ## bblock 40, line 0,  t255,  t253## $r0.7(skipped)
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t184
	c0    mov $r0.3 = $r0.13   ## t232
	c0    goto L127?3 ## goto
;;								## 0
.trace 7
L125?3:
	c0    mov $r0.9 = $r0.8   ## bblock 43, line 0,  t254,  t273
	c0    mov $r0.7 = $r0.6   ## bblock 43, line 0,  t255,  t274
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t184
	c0    mov $r0.3 = $r0.13   ## t232
	c0    goto L127?3 ## goto
;;								## 0
.trace 6
L124?3:
	   ## bblock 46, line 0,  t254,  t252## $r0.9(skipped)
	c0    mov $r0.7 = $r0.6   ## bblock 46, line 0,  t255,  t274
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t184
	c0    mov $r0.3 = $r0.13   ## t232
	c0    goto L127?3 ## goto
;;								## 0
.trace 5
L123?3:
	   ## bblock 47, line 0,  t254,  t252## $r0.9(skipped)
	   ## bblock 47, line 0,  t255,  t253## $r0.7(skipped)
	c0    mov $r0.3 = $r0.13   ## t232
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t184
;;								## 0
L127?3:
	c0    add $r0.7 = $r0.7, $r0.9   ## bblock 11, line 0,  t226,  t255,  t254
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 11, line 1362, t177, t185
;;								## 1
;;								## 2
	c0    cmpne $r0.2 = $r0.2, $r0.0   ## bblock 11, line 1362,  t178,  t177,  0(I32)
;;								## 3
	c0    or $r0.5 = $r0.7, $r0.2   ## bblock 11, line 1362,  t253,  t226,  t178
	c0    goto L128?3 ## goto
;;								## 4
.trace 4
L121?3:
	c0    mov $r0.5 = $r0.7   ## t253
	c0    mov $r0.3 = $r0.13   ## t232
;;								## 0
L128?3:
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 7, line 1364,  raddr(roundAndPackFloat32)(P32),  t232,  t229,  t253
	c0    mov $r0.4 = $r0.14   ## t229
;;								## 1
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 8, line 1364,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 5
.trace 12
L119?3:
	c0    cmpeq $b0.0 = $r0.12, $r0.0   ## bblock 14, line 1299,  t297(I1),  t228,  0(SI32)
	c0    ldw $r0.13 = 0x24[$r0.1]  ## restore ## t232
;;								## 0
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 1
	c0    shl $r0.3 = $r0.13, 31   ## [spec] bblock 17, line 1300,  t58,  t232,  31(SI32)
	c0    brf $b0.0, L129?3   ## bblock 14, line 1299,  t297(I1)
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 17, line 1300,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 4
.trace 16
L129?3:
	c0    stw 0x3c[$r0.1] = $r0.11  ## spill ## t227
	c0    mov $r0.3 = $r0.12   ## t228
;;								## 0
	c0    stw 0x40[$r0.1] = $r0.2  ## spill ## t230
;;								## 1
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 15, line 1302,  raddr(countLeadingZeros32)(P32),  t228
	c0    stw 0x34[$r0.1] = $r0.12  ## spill ## t228
;;								## 2
	c0    add $r0.2 = $r0.3, -8   ## bblock 16, line 1302,  t65,  t59,  -8(SI32)
	c0    sub $r0.15 = 9, $r0.3   ## bblock 16, line 1304,  t231,  9(SI32),  t59
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.12 = 0x34[$r0.1]  ## restore ## t228
;;								## 3
	c0    ldw $r0.14 = 0x3c[$r0.1]  ## restore ## t227
;;								## 4
	c0    shl $r0.12 = $r0.12, $r0.2   ## bblock 16, line 1303,  t228,  t228,  t65
	c0    ldw $r0.2 = 0x40[$r0.1]  ## restore ## t230
;;								## 5
	c0    or $r0.16 = $r0.12, 8388608   ## bblock 4, line 1308,  t71,  t228,  8388608(I32)
	c0    or $r0.18 = $r0.14, 8388608   ## bblock 4, line 1309,  t74,  t227,  8388608(I32)
;;								## 6
	c0    sub $r0.20 = $r0.15, $r0.2   ## bblock 4, line 1307,  t284,  t231,  t230
	c0    shl $r0.16 = $r0.16, 7   ## bblock 4, line 1308,  t248,  t71,  7(SI32)
	c0    shl $r0.5 = $r0.18, 8   ## bblock 4, line 1309,  t240,  t74,  8(SI32)
;;								## 7
	c0    add $r0.18 = $r0.20, 125   ## bblock 4, line 1307,  t249,  t284,  125(SI32)
	c0    add $r0.10 = $r0.16, $r0.16   ## bblock 4, line 1310,  t79,  t248,  t248
	c0    shru $r0.19 = $r0.16, 1   ## bblock 4, line 1311,  t243(I31),  t248,  1(SI32)
	c0    add $r0.21 = $r0.20, 126   ## bblock 4, line 1312,  t244,  t284,  126(SI32)
	c0    stw 0x28[$r0.1] = $r0.5  ## spill ## t240
;;								## 8
	c0    cmpgtu $b0.0 = $r0.5, $r0.10   ## bblock 4, line 1310,  t242(I1),  t240,  t79
;;								## 9
	c0    slct $r0.3 = $b0.0, $r0.16, $r0.19   ## bblock 4, line 1311,  t241,  t242(I1),  t248,  t243(I31)
	c0    slct $r0.14 = $b0.0, $r0.18, $r0.21   ## bblock 4, line 1312,  t229,  t242(I1),  t249,  t244
;;								## 10
	c0    stw 0x2c[$r0.1] = $r0.3  ## spill ## t241
;;								## 11
	c0    stw 0x30[$r0.1] = $r0.14  ## spill ## t229
	c0    goto L120?3 ## goto
;;								## 12
.trace 11
L117?3:
	c0    cmpeq $b0.0 = $r0.11, $r0.0   ## bblock 18, line 1280,  t298(I1),  t227,  0(SI32)
	c0    or $r0.2 = $r0.12, $r0.15   ## [spec] bblock 21, line 1281,  t42,  t228,  t231
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    cmpeq $b0.1 = $r0.2, $r0.0   ## [spec] bblock 21, line 1281,  t299(I1),  t42,  0(SI32)
;;								## 1
	c0    brf $b0.0, L130?3   ## bblock 18, line 1280,  t298(I1)
;;								## 2
	c0    brf $b0.1, L131?3   ## bblock 21, line 1281,  t299(I1)
;;								## 3
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 24, line 1282,  raddr(float_raise)(P32),  16(SI32)
;;								## 4
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 25, line 1283,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 8
.trace 18
L131?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 22, line 1285,  raddr(float_raise)(P32),  128(SI32)
	c0    mov $r0.3 = 128   ## 128(SI32)
;;								## 0
	c0    ldw $r0.13 = 0x24[$r0.1]  ## restore ## t232
;;								## 1
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 2
	c0    shl $r0.13 = $r0.13, 31   ## bblock 23, line 1286,  t44,  t232,  31(SI32)
;;								## 3
	c0    add $r0.3 = $r0.13, 2139095040   ## bblock 23, line 1287,  t45,  t44,  2139095040(I32)
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 23, line 1287,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 5
.trace 15
L130?3:
	c0    stw 0x34[$r0.1] = $r0.12  ## spill ## t228
	c0    mov $r0.3 = $r0.11   ## t227
;;								## 0
	c0    stw 0x38[$r0.1] = $r0.15  ## spill ## t231
;;								## 1
.call countLeadingZeros32, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = countLeadingZeros32   ## bblock 19, line 1290,  raddr(countLeadingZeros32)(P32),  t227
	c0    stw 0x3c[$r0.1] = $r0.11  ## spill ## t227
;;								## 2
	c0    add $r0.6 = $r0.3, -8   ## bblock 20, line 1290,  t52,  t46,  -8(SI32)
	c0    sub $r0.2 = 9, $r0.3   ## bblock 20, line 1292,  t230,  9(SI32),  t46
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.11 = 0x3c[$r0.1]  ## restore ## t227
;;								## 3
	c0    ldw $r0.12 = 0x34[$r0.1]  ## restore ## t228
;;								## 4
	c0    shl $r0.11 = $r0.11, $r0.6   ## bblock 20, line 1291,  t227,  t227,  t52
	c0    ldw $r0.15 = 0x38[$r0.1]  ## restore ## t231
;;								## 5
	c0    or $r0.16 = $r0.12, 8388608   ## [spec] bblock 4, line 1308,  t71,  t228,  8388608(I32)
	c0    or $r0.18 = $r0.11, 8388608   ## [spec] bblock 4, line 1309,  t74,  t227,  8388608(I32)
;;								## 6
	c0    cmpeq $b0.3 = $r0.15, $r0.0   ## bblock 3, line 1298,  t290(I1),  t231,  0(SI32)
	c0    sub $r0.20 = $r0.15, $r0.2   ## [spec] bblock 4, line 1307,  t284,  t231,  t230
	c0    shl $r0.16 = $r0.16, 7   ## [spec] bblock 4, line 1308,  t248,  t71,  7(SI32)
	c0    shl $r0.5 = $r0.18, 8   ## [spec] bblock 4, line 1309,  t240,  t74,  8(SI32)
;;								## 7
	c0    add $r0.18 = $r0.20, 125   ## [spec] bblock 4, line 1307,  t249,  t284,  125(SI32)
	c0    add $r0.10 = $r0.16, $r0.16   ## [spec] bblock 4, line 1310,  t79,  t248,  t248
	c0    shru $r0.19 = $r0.16, 1   ## [spec] bblock 4, line 1311,  t243(I31),  t248,  1(SI32)
	c0    add $r0.21 = $r0.20, 126   ## [spec] bblock 4, line 1312,  t244,  t284,  126(SI32)
	c0    stw 0x28[$r0.1] = $r0.5  ## spill ## [spec] t240
;;								## 8
	c0    cmpgtu $b0.0 = $r0.5, $r0.10   ## [spec] bblock 4, line 1310,  t242(I1),  t240,  t79
;;								## 9
	c0    slct $r0.3 = $b0.0, $r0.16, $r0.19   ## [spec] bblock 4, line 1311,  t241,  t242(I1),  t248,  t243(I31)
	c0    slct $r0.14 = $b0.0, $r0.18, $r0.21   ## [spec] bblock 4, line 1312,  t229,  t242(I1),  t249,  t244
;;								## 10
	c0    stw 0x2c[$r0.1] = $r0.3  ## spill ## [spec] t241
;;								## 11
	c0    stw 0x30[$r0.1] = $r0.14  ## spill ## [spec] t229
	c0    goto L118?3 ## goto
;;								## 12
.trace 10
L116?3:
	c0    cmpne $b0.0 = $r0.11, $r0.0   ## bblock 26, line 1272,  t300(I1),  t227,  0(SI32)
	c0    mov $r0.4 = $r0.17   ## t198
;;								## 0
;;								## 1
	c0    brf $b0.0, L132?3   ## bblock 26, line 1272,  t300(I1)
;;								## 2
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 28, line 1273,  raddr(propagateFloat32NaN)(P32),  t197,  t198
;;								## 3
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 29, line 1273,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 7
.trace 14
L132?3:
	c0    ldw $r0.13 = 0x24[$r0.1]  ## restore ## t232
;;								## 0
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 1
	c0    shl $r0.3 = $r0.13, 31   ## bblock 27, line 1274,  t37,  t232,  31(SI32)
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 27, line 1274,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 4
.trace 9
L115?3:
	c0    cmpne $b0.0 = $r0.12, $r0.0   ## bblock 30, line 1258,  t301(I1),  t228,  0(SI32)
	c0    mov $r0.4 = $r0.17   ## t198
;;								## 0
;;								## 1
	c0    brf $b0.0, L133?3   ## bblock 30, line 1258,  t301(I1)
;;								## 2
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 38, line 1259,  raddr(propagateFloat32NaN)(P32),  t197,  t198
;;								## 3
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 4
;;								## 5
;;								## 6
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 39, line 1259,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 7
.trace 13
L133?3:
	c0    cmpeq $b0.0 = $r0.2, 255   ## bblock 31, line 1260,  t302(I1),  t230,  255(SI32)
	c0    cmpne $b0.1 = $r0.11, $r0.0   ## [spec] bblock 33, line 1261,  t303(I1),  t227,  0(SI32)
	c0    mov $r0.4 = $r0.17   ## t198
;;								## 0
;;								## 1
	c0    brf $b0.0, L134?3   ## bblock 31, line 1260,  t302(I1)
;;								## 2
	c0    brf $b0.1, L135?3   ## bblock 33, line 1261,  t303(I1)
;;								## 3
.call propagateFloat32NaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = propagateFloat32NaN   ## bblock 36, line 1262,  raddr(propagateFloat32NaN)(P32),  t197,  t198
;;								## 4
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 37, line 1262,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 8
.trace 19
L135?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 34, line 1263,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 35, line 1264,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 4
.trace 17
L134?3:
	c0    ldw $r0.13 = 0x24[$r0.1]  ## restore ## t232
;;								## 0
	c0    ldw $l0.0 = 0x20[$r0.1]  ## restore ## t184
;;								## 1
	c0    shl $r0.13 = $r0.13, 31   ## bblock 32, line 1266,  t28,  t232,  31(SI32)
;;								## 2
	c0    add $r0.3 = $r0.13, 2139095040   ## bblock 32, line 1266,  t29,  t28,  2139095040(I32)
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 32, line 1266,  t185,  ?2.26?2auto_size(I32),  t184
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.26?2scratch.0, 0x0
.equ _?1PACKET.235, 0x10
.equ _?1PACKET.234, 0x14
.equ _?1PACKET.236, 0x18
.equ _?1PACKET.237, 0x1c
.equ ?2.26?2ras_p, 0x20
.equ ?2.26?2spill_p, 0x24
.section .data
.section .text
.equ ?2.26?2auto_size, 0x60
 ## End _r_div
 ## Begin _r_eq
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_eq::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 23   ## bblock 0, line 1372,  t1(I9),  t50,  23(SI32)
	c0    shru $r0.6 = $r0.4, 23   ## bblock 0, line 1373,  t8(I9),  t51,  23(SI32)
	c0    and $r0.5 = $r0.3, 8388607   ## bblock 0, line 1372,  t5,  t50,  8388607(I32)
	c0    and $r0.7 = $r0.4, 8388607   ## bblock 0, line 1373,  t12,  t51,  8388607(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 255   ## bblock 0, line 1372,  t2,  t1(I9),  255(I32)
	c0    and $r0.6 = $r0.6, 255   ## bblock 0, line 1373,  t9,  t8(I9),  255(I32)
	c0    cmpeq $r0.9 = $r0.3, $r0.4   ## [spec] bblock 1, line 1381,  t30,  t50,  t51
	c0    or $r0.8 = $r0.3, $r0.4   ## [spec] bblock 1, line 1381,  t33,  t50,  t51
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t37
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 255   ## bblock 0, line 1372,  t3,  t2,  255(SI32)
	c0    cmpeq $r0.6 = $r0.6, 255   ## bblock 0, line 1373,  t10,  t9,  255(SI32)
	c0    shl $r0.8 = $r0.8, 1   ## [spec] bblock 1, line 1381,  t34,  t33,  1(SI32)
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.5   ## bblock 0, line 1372,  t6,  t3,  t5
	c0    andl $r0.6 = $r0.6, $r0.7   ## bblock 0, line 1373,  t13,  t10,  t12
	c0    cmpeq $r0.8 = $r0.8, $r0.0   ## [spec] bblock 1, line 1381,  t56,  t34,  0(I32)
;;								## 3
	c0    orl $b0.0 = $r0.2, $r0.6   ## bblock 0, line 1374,  t54(I1),  t6,  t13
	c0    orl $r0.3 = $r0.9, $r0.8   ## [spec] bblock 1, line 1381,  t36,  t30,  t56
	c0    mov $r0.2 = $r0.3   ## t50
;;								## 4
;;								## 5
	c0    br $b0.0, L136?3   ## bblock 0, line 1374,  t54(I1)
;;								## 6
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 1381,  t38,  ?2.27?2auto_size(I32),  t37
;;								## 7
.trace 2
L136?3:
	c0    shru $r0.5 = $r0.2, 22   ## bblock 2, line 1375,  t15(I10),  t50,  22(SI32)
	c0    and $r0.6 = $r0.2, 4194303   ## bblock 2, line 1375,  t19,  t50,  4194303(I32)
	c0    shru $r0.7 = $r0.4, 22   ## bblock 2, line 1376,  t22(I10),  t51,  22(SI32)
	c0    and $r0.8 = $r0.4, 4194303   ## bblock 2, line 1376,  t26,  t51,  4194303(I32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    and $r0.5 = $r0.5, 511   ## bblock 2, line 1375,  t16,  t15(I10),  511(I32)
	c0    and $r0.7 = $r0.7, 511   ## bblock 2, line 1376,  t23,  t22(I10),  511(I32)
;;								## 1
	c0    cmpeq $r0.5 = $r0.5, 510   ## bblock 2, line 1375,  t17,  t16,  510(SI32)
	c0    cmpeq $r0.7 = $r0.7, 510   ## bblock 2, line 1376,  t24,  t23,  510(SI32)
;;								## 2
	c0    andl $r0.5 = $r0.5, $r0.6   ## bblock 2, line 1375,  t20,  t17,  t19
	c0    andl $r0.7 = $r0.7, $r0.8   ## bblock 2, line 1376,  t27,  t24,  t26
;;								## 3
	c0    orl $b0.0 = $r0.5, $r0.7   ## bblock 2, line 1376,  t59(I1),  t20,  t27
;;								## 4
;;								## 5
	c0    brf $b0.0, L137?3   ## bblock 2, line 1376,  t59(I1)
;;								## 6
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 1377,  raddr(float_raise)(P32),  16(SI32)
;;								## 7
L137?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t37
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 1379,  t38,  ?2.27?2auto_size(I32),  t37
;;								## 11
.endp
.section .bss
.section .data
.equ ?2.27?2scratch.0, 0x0
.equ ?2.27?2ras_p, 0x10
.section .data
.section .text
.equ ?2.27?2auto_size, 0x20
 ## End _r_eq
 ## Begin _r_le
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_le::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 23   ## bblock 0, line 1390,  t1(I9),  t49,  23(SI32)
	c0    shru $r0.6 = $r0.4, 23   ## bblock 0, line 1391,  t8(I9),  t50,  23(SI32)
	c0    and $r0.5 = $r0.3, 8388607   ## bblock 0, line 1390,  t5,  t49,  8388607(I32)
	c0    and $r0.7 = $r0.4, 8388607   ## bblock 0, line 1391,  t12,  t50,  8388607(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 255   ## bblock 0, line 1390,  t2,  t1(I9),  255(I32)
	c0    and $r0.6 = $r0.6, 255   ## bblock 0, line 1391,  t9,  t8(I9),  255(I32)
	c0    shru $r0.8 = $r0.3, 31   ## [spec] bblock 1, line 1396,  t52(I1),  t49,  31(SI32)
	c0    shru $r0.9 = $r0.4, 31   ## [spec] bblock 1, line 1397,  t19(I1),  t50,  31(SI32)
	c0    or $r0.10 = $r0.3, $r0.4   ## [spec] bblock 3, line 1399,  t23,  t49,  t50
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t36
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 255   ## bblock 0, line 1390,  t3,  t2,  255(SI32)
	c0    cmpeq $r0.6 = $r0.6, 255   ## bblock 0, line 1391,  t10,  t9,  255(SI32)
	c0    cmpne $b0.0 = $r0.8, $r0.9   ## [spec] bblock 1, line 1398,  t56(I1),  t52(I1),  t19(I1)
	c0    shl $r0.10 = $r0.10, 1   ## [spec] bblock 3, line 1399,  t24,  t23,  1(SI32)
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.5   ## bblock 0, line 1390,  t6,  t3,  t5
	c0    andl $r0.6 = $r0.6, $r0.7   ## bblock 0, line 1391,  t13,  t10,  t12
	c0    cmpeq $r0.10 = $r0.10, $r0.0   ## [spec] bblock 3, line 1399,  t59,  t24,  0(I32)
;;								## 3
	c0    orl $b0.1 = $r0.2, $r0.6   ## bblock 0, line 1392,  t55(I1),  t6,  t13
	c0    orl $r0.3 = $r0.8, $r0.10   ## [spec] bblock 3, line 1399,  t26,  t52(I1),  t59
	c0    mov $r0.2 = $r0.3   ## t49
;;								## 4
;;								## 5
	c0    br $b0.1, L138?3   ## bblock 0, line 1392,  t55(I1)
;;								## 6
	c0    brf $b0.0, L139?3   ## bblock 1, line 1398,  t56(I1)
;;								## 7
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 1399,  t37,  ?2.28?2auto_size(I32),  t36
;;								## 8
.trace 2
L139?3:
	c0    cmpeq $r0.2 = $r0.2, $r0.4   ## bblock 2, line 1400,  t29,  t49,  t50
	c0    cmpltu $r0.5 = $r0.2, $r0.4   ## bblock 2, line 1400,  t32,  t49,  t50
;;								## 0
	c0    xor $r0.5 = $r0.5, $r0.8   ## bblock 2, line 1400,  t34,  t32,  t52(I1)
;;								## 1
.return ret($r0.3:s32)
	c0    orl $r0.3 = $r0.2, $r0.5   ## bblock 2, line 1400,  t35,  t29,  t34
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1400,  t37,  ?2.28?2auto_size(I32),  t36
;;								## 2
.trace 3
L138?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 1393,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t36
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 1394,  t37,  ?2.28?2auto_size(I32),  t36
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.28?2scratch.0, 0x0
.equ ?2.28?2ras_p, 0x10
.section .data
.section .text
.equ ?2.28?2auto_size, 0x20
 ## End _r_le
 ## Begin _r_lt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_lt::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 23   ## bblock 0, line 1409,  t1(I9),  t49,  23(SI32)
	c0    shru $r0.6 = $r0.4, 23   ## bblock 0, line 1410,  t8(I9),  t50,  23(SI32)
	c0    and $r0.5 = $r0.3, 8388607   ## bblock 0, line 1409,  t5,  t49,  8388607(I32)
	c0    and $r0.7 = $r0.4, 8388607   ## bblock 0, line 1410,  t12,  t50,  8388607(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 255   ## bblock 0, line 1409,  t2,  t1(I9),  255(I32)
	c0    and $r0.6 = $r0.6, 255   ## bblock 0, line 1410,  t9,  t8(I9),  255(I32)
	c0    shru $r0.8 = $r0.3, 31   ## [spec] bblock 1, line 1415,  t52(I1),  t49,  31(SI32)
	c0    shru $r0.9 = $r0.4, 31   ## [spec] bblock 1, line 1416,  t19(I1),  t50,  31(SI32)
	c0    or $r0.10 = $r0.3, $r0.4   ## [spec] bblock 3, line 1418,  t23,  t49,  t50
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t36
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 255   ## bblock 0, line 1409,  t3,  t2,  255(SI32)
	c0    cmpeq $r0.6 = $r0.6, 255   ## bblock 0, line 1410,  t10,  t9,  255(SI32)
	c0    cmpne $b0.0 = $r0.8, $r0.9   ## [spec] bblock 1, line 1417,  t56(I1),  t52(I1),  t19(I1)
	c0    shl $r0.10 = $r0.10, 1   ## [spec] bblock 3, line 1418,  t24,  t23,  1(SI32)
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.5   ## bblock 0, line 1409,  t6,  t3,  t5
	c0    andl $r0.6 = $r0.6, $r0.7   ## bblock 0, line 1410,  t13,  t10,  t12
	c0    andl $r0.3 = $r0.8, $r0.10   ## [spec] bblock 3, line 1418,  t26,  t52(I1),  t24
	c0    mov $r0.5 = $r0.3   ## t49
;;								## 3
	c0    orl $b0.1 = $r0.2, $r0.6   ## bblock 0, line 1411,  t55(I1),  t6,  t13
;;								## 4
;;								## 5
	c0    br $b0.1, L140?3   ## bblock 0, line 1411,  t55(I1)
;;								## 6
	c0    brf $b0.0, L141?3   ## bblock 1, line 1417,  t56(I1)
;;								## 7
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 1418,  t37,  ?2.29?2auto_size(I32),  t36
;;								## 8
.trace 2
L141?3:
	c0    cmpne $r0.5 = $r0.5, $r0.4   ## bblock 2, line 1419,  t29,  t49,  t50
	c0    cmpltu $r0.2 = $r0.5, $r0.4   ## bblock 2, line 1419,  t32,  t49,  t50
;;								## 0
	c0    xor $r0.2 = $r0.2, $r0.8   ## bblock 2, line 1419,  t34,  t32,  t52(I1)
;;								## 1
.return ret($r0.3:s32)
	c0    andl $r0.3 = $r0.5, $r0.2   ## bblock 2, line 1419,  t35,  t29,  t34
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1419,  t37,  ?2.29?2auto_size(I32),  t36
;;								## 2
.trace 3
L140?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 1412,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t36
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 1413,  t37,  ?2.29?2auto_size(I32),  t36
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.29?2scratch.0, 0x0
.equ ?2.29?2ras_p, 0x10
.section .data
.section .text
.equ ?2.29?2auto_size, 0x20
 ## End _r_lt
 ## Begin float64_to_int32_round_to_zero
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32,$r0.5:s32)
float64_to_int32_round_to_zero:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 1048575   ## bblock 0, line 1431,  t104,  t6,  1048575(I32)
	c0    shru $r0.7 = $r0.3, 20   ## bblock 0, line 1432,  t4(I12),  t6,  20(SI32)
	c0    shru $r0.6 = $r0.3, 31   ## bblock 0, line 1433,  t107(I1),  t6,  31(SI32)
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## [spec] bblock 15, line 1439,  t123(I1),  t96,  0(SI32)
;;								## 0
	c0    and $r0.7 = $r0.7, 2047   ## bblock 0, line 1432,  t106,  t4(I12),  2047(I32)
	c0    or $r0.9 = $r0.4, $r0.2   ## [spec] bblock 15, line 1437,  t16,  t103,  t104
	c0    mov $r0.8 = (~0x3fffffff)   ## (~0x3fffffff)(I32)
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t80
;;								## 1
	c0    add $r0.10 = $r0.7, -1043   ## bblock 0, line 1434,  t105,  t106,  -1043(SI32)
	c0    cmpeq $r0.11 = $r0.7, 2047   ## [spec] bblock 15, line 1437,  t13,  t106,  2047(SI32)
	c0    slct $r0.8 = $b0.0, $r0.8, (~0x0)   ## [spec] bblock 15, line 1439,  t18,  t123(I1),  (~0x3fffffff)(I32),  (~0x0)(I32)
	c0    ldw.d $r0.12 = 0x14[$r0.1]   ## [spec] bblock 4, line 1479, t76, t81
;;								## 2
	c0    cmpge $b0.0 = $r0.10, $r0.0   ## bblock 0, line 1435,  t112(I1),  t105,  0(SI32)
	c0    cmpgt $b0.1 = $r0.10, 11   ## [spec] bblock 13, line 1436,  t120(I1),  t105,  11(SI32)
	c0    andl $b0.2 = $r0.11, $r0.9   ## [spec] bblock 15, line 1437,  t110(I1),  t13,  t16
	c0    ldw.d $r0.13 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 1480, t77, 0(I32)
;;								## 3
	c0    cmpne $b0.3 = $r0.12, $r0.0   ## [spec] bblock 4, line 1479,  t117(I1),  t76,  0(SI32)
;;								## 4
	c0    or $r0.13 = $r0.13, 1   ## [spec] bblock 6, line 1480,  t78,  t77,  1(I32)
	c0    brf $b0.0, L142?3   ## bblock 0, line 1435,  t112(I1)
;;								## 5
	c0    brf $b0.1, L143?3   ## bblock 13, line 1436,  t120(I1)
;;								## 6
	c0    slctf $r0.6 = $b0.2, $r0.6, $r0.0   ## bblock 15, line 1438,  t107(I1),  t110(I1),  t107(I1),  0(SI32)
	c0    stw 0x10[$r0.1] = $r0.8   ## bblock 15, line 1439, t81, t18
;;								## 7
L144?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 3, line 1466, t62, t81
	c0    orl $r0.4 = $r0.6, $r0.5   ## bblock 3, line 1471,  t109(I1),  t107(I1),  t96
	c0    mtb $b0.0 = $r0.6   ## t107(I1)
;;								## 8
;;								## 9
	c0    sub $r0.7 = $r0.0, $r0.2   ## bblock 3, line 1466,  t61,  0(I32),  t62
;;								## 10
	c0    slct $r0.3 = $b0.0, $r0.7, $r0.2   ## bblock 3, line 1466,  t102,  t107(I1),  t61,  t62
;;								## 11
	c0    cmplt $r0.2 = $r0.3, $r0.0   ## bblock 3, line 1470,  t65,  t102,  0(SI32)
	c0    andl $r0.4 = $r0.3, $r0.4   ## bblock 3, line 1470,  t115,  t102,  t109(I1)
;;								## 12
	c0    xor $r0.2 = $r0.6, $r0.2   ## bblock 3, line 1470,  t67,  t107(I1),  t65
;;								## 13
	c0    andl $b0.0 = $r0.4, $r0.2   ## bblock 3, line 1470,  t116(I1),  t115,  t67
;;								## 14
;;								## 15
	c0    br $b0.0, L145?3   ## bblock 3, line 1470,  t116(I1)
;;								## 16
	c0    brf $b0.3, L146?3   ## bblock 4, line 1479,  t117(I1)
;;								## 17
.return ret($r0.3:s32)
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.13   ## bblock 6, line 1480, 0(I32), t78
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 5, line 1481,  t81,  ?2.30?2auto_size(I32),  t80
;;								## 18
.trace 3
L146?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 5, line 1481,  t81,  ?2.30?2auto_size(I32),  t80
;;								## 0
.trace 6
L145?3:
	c0    stw 0x1c[$r0.1] = $r0.6  ## spill ## t107(I1)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 8, line 1472,  raddr(float_raise)(P32),  16(SI32)
	c0    stw 0x20[$r0.1] = $r0.5  ## spill ## t96
;;								## 1
	c0    mov $r0.2 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t96
;;								## 2
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t107(I1)
;;								## 3
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## bblock 9, line 1473,  t118(I1),  t96,  0(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t80
;;								## 4
	c0    mtb $b0.1 = $r0.6   ## t107(I1)
;;								## 5
	c0    brf $b0.0, L147?3   ## bblock 9, line 1473,  t118(I1)
;;								## 6
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.1, $r0.2, 2147483647   ## bblock 11, line 1474,  t73,  t107(I1),  (~0x7fffffff)(I32),  2147483647(SI32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 11, line 1474,  t81,  ?2.30?2auto_size(I32),  t80
;;								## 7
.trace 7
L147?3:
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.1, $r0.0, (~0x0)   ## bblock 10, line 1476,  t75,  t107(I1),  0(SI32),  (~0x0)(I32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 10, line 1476,  t81,  ?2.30?2auto_size(I32),  t80
;;								## 0
.trace 4
L143?3:
	c0    or $r0.2 = $r0.2, 1048576   ## bblock 14, line 1445,  t36,  t104,  1048576(I32)
	c0    shl $r0.7 = $r0.4, $r0.10   ## bblock 14, line 1448,  t27,  t103,  t105
	c0    sub $r0.3 = $r0.0, $r0.10   ## bblock 14, line 1451,  t33,  0(I32),  t105
	c0    cmpeq $b0.0 = $r0.10, $r0.0   ## bblock 14, line 1451,  t121(I1),  t105,  0(SI32)
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.7   ## bblock 14, line 1448, t81, t27
	c0    shl $r0.10 = $r0.2, $r0.10   ## bblock 14, line 1451,  t38,  t36,  t105
	c0    and $r0.3 = $r0.3, 31   ## bblock 14, line 1451,  t34,  t33,  31(I32)
;;								## 1
	c0    shru $r0.4 = $r0.4, $r0.3   ## bblock 14, line 1451,  t35,  t103,  t34
	c0    ldw.d $r0.12 = 0x14[$r0.1]   ## [spec] bblock 4, line 1479, t76, t81
;;								## 2
	c0    or $r0.10 = $r0.10, $r0.4   ## bblock 14, line 1451,  t39,  t38,  t35
;;								## 3
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.10   ## bblock 14, line 1451,  t40,  t121(I1),  t36,  t39
	c0    cmpne $b0.3 = $r0.12, $r0.0   ## [spec] bblock 4, line 1479,  t117(I1),  t76,  0(SI32)
;;								## 4
	c0    stw 0x10[$r0.1] = $r0.2   ## bblock 14, line 1449, t81, t40
;;								## 5
	c0    ldw.d $r0.2 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 1480, t77, 0(I32)
;;								## 6
;;								## 7
	c0    or $r0.13 = $r0.2, 1   ## [spec] bblock 6, line 1480,  t78,  t77,  1(I32)
	c0    goto L144?3 ## goto
;;								## 8
.trace 2
L142?3:
	c0    cmplt $b0.0 = $r0.7, 1022   ## bblock 1, line 1456,  t113(I1),  t106,  1022(SI32)
	c0    or $r0.3 = $r0.7, $r0.2   ## [spec] bblock 12, line 1457,  t119,  t106,  t104
;;								## 0
	c0    or $r0.3 = $r0.3, $r0.4   ## [spec] bblock 12, line 1457,  t46,  t119,  t103
;;								## 1
	c0    brf $b0.0, L148?3   ## bblock 1, line 1456,  t113(I1)
;;								## 2
	c0    stw 0x14[$r0.1] = $r0.3   ## bblock 12, line 1457, t81, t46
;;								## 3
	c0    ldw.d $r0.12 = 0x14[$r0.1]   ## [spec] bblock 4, line 1479, t76, t81
;;								## 4
	c0    stw 0x10[$r0.1] = $r0.0   ## bblock 12, line 1458, t81, 0(SI32)
;;								## 5
	c0    cmpne $b0.3 = $r0.12, $r0.0   ## [spec] bblock 4, line 1479,  t117(I1),  t76,  0(SI32)
;;								## 6
	c0    goto L144?3 ## goto
;;								## 7
.trace 5
L148?3:
	c0    or $r0.2 = $r0.2, 1048576   ## bblock 2, line 1461,  t55,  t104,  1048576(I32)
	c0    sub $r0.10 = $r0.0, $r0.10   ## bblock 2, line 1463,  t57,  0(I32),  t105
	c0    and $r0.3 = $r0.10, 31   ## bblock 2, line 1462,  t52,  t105,  31(I32)
;;								## 0
	c0    shru $r0.2 = $r0.2, $r0.10   ## bblock 2, line 1463,  t58,  t55,  t57
	c0    shl $r0.3 = $r0.2, $r0.3   ## bblock 2, line 1462,  t53,  t55,  t52
;;								## 1
	c0    or $r0.3 = $r0.3, $r0.4   ## bblock 2, line 1462,  t54,  t53,  t103
	c0    stw 0x10[$r0.1] = $r0.2   ## bblock 2, line 1463, t81, t58
;;								## 2
	c0    stw 0x14[$r0.1] = $r0.3   ## bblock 2, line 1462, t81, t54
;;								## 3
	c0    ldw.d $r0.12 = 0x14[$r0.1]   ## [spec] bblock 4, line 1479, t76, t81
;;								## 4
;;								## 5
	c0    cmpne $b0.3 = $r0.12, $r0.0   ## [spec] bblock 4, line 1479,  t117(I1),  t76,  0(SI32)
;;								## 6
	c0    goto L144?3 ## goto
;;								## 7
.endp
.section .bss
.section .data
.equ ?2.30?2scratch.0, 0x0
.equ _?1PACKET.274, 0x10
.equ _?1PACKET.275, 0x14
.equ ?2.30?2ras_p, 0x18
.equ ?2.30?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.30?2auto_size, 0x40
 ## End float64_to_int32_round_to_zero
 ## Begin _r_d
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
_r_d::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 1048575   ## bblock 0, line 1492,  t117,  t100,  1048575(I32)
	c0    shru $r0.6 = $r0.3, 20   ## bblock 0, line 1493,  t4(I12),  t100,  20(SI32)
	c0    shru $r0.5 = $r0.3, 31   ## bblock 0, line 1494,  t119(I1),  t100,  31(SI32)
;;								## 0
	c0    and $r0.6 = $r0.6, 2047   ## bblock 0, line 1493,  t118,  t4(I12),  2047(I32)
	c0    or $r0.7 = $r0.4, $r0.2   ## [spec] bblock 15, line 1496,  t150,  t101,  t117
	c0    stw 0x18[$r0.1] = $l0.0  ## spill ## t87
;;								## 1
	c0    cmpeq $b0.0 = $r0.6, 2047   ## bblock 0, line 1495,  t147(I1),  t118,  2047(SI32)
	c0    cmpne $b0.1 = $r0.7, $r0.0   ## [spec] bblock 15, line 1496,  t151,  t150,  0(I32)
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t101
;;								## 2
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t100
;;								## 3
	c0    brf $b0.0, L149?3   ## bblock 0, line 1495,  t147(I1)
;;								## 4
	c0    brf $b0.1, L150?3   ## bblock 15, line 1496,  t151
;;								## 5
.call float64ToCommonNaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32,$r0.4:u32,$r0.5:u32)
	c0    call $l0.0 = float64ToCommonNaN   ## bblock 17, line 1498,  raddr(float64ToCommonNaN)(P32),  t100,  t101
;;								## 6
	c0    shru $r0.2 = $r0.4, 9   ## bblock 18, line 1499,  t17(I23),  t12,  9(SI32)
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t101
;;								## 7
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t17(I23)
;;								## 8
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t100
;;								## 9
.call float64ToCommonNaN, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32,$r0.4:u32,$r0.5:u32)
	c0    call $l0.0 = float64ToCommonNaN   ## bblock 18, line 1497,  raddr(float64ToCommonNaN)(P32),  t100,  t101
;;								## 10
	c0    shl $r0.3 = $r0.3, 31   ## bblock 19, line 1498,  t24,  t18,  31(SI32)
	c0    ldw $r0.2 = 0x24[$r0.1]  ## restore ## t17(I23)
;;								## 11
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t87
;;								## 12
	c0    or $r0.2 = $r0.2, 2143289344   ## bblock 19, line 1499,  t152,  t17(I23),  2143289344(I32)
;;								## 13
	c0    or $r0.3 = $r0.2, $r0.3   ## bblock 19, line 1499,  t25,  t152,  t24
;;								## 14
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 19, line 1499,  t88,  ?2.31?2auto_size(I32),  t87
;;								## 15
.trace 3
L150?3:
	c0    shl $r0.5 = $r0.5, 31   ## bblock 16, line 1501,  t27,  t119(I1),  31(SI32)
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t87
;;								## 0
	c0    add $r0.3 = $r0.5, 2139095040   ## bblock 16, line 1501,  t28,  t27,  2139095040(I32)
;;								## 1
;;								## 2
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 16, line 1501,  t88,  ?2.31?2auto_size(I32),  t87
;;								## 3
.trace 2
L149?3:
	c0    shl $r0.7 = $r0.4, 10   ## bblock 1, line 1517,  t130,  t101,  10(I32)
	c0    shru $r0.9 = $r0.4, 22   ## bblock 1, line 1517,  t132(I10),  t101,  22(SI32)
	c0    shl $r0.8 = $r0.2, 10   ## bblock 1, line 1517,  t137,  t117,  10(I32)
	c0    shru $r0.10 = $r0.2, 22   ## bblock 1, line 1518,  t106(I10),  t117,  22(SI32)
	c0    cmpne $b0.0 = $r0.6, $r0.0   ## bblock 1, line 1535,  t149(I1),  t118,  0(SI32)
	c0    mov $r0.3 = $r0.5   ## t119(I1)
;;								## 0
	c0    cmpne $r0.7 = $r0.7, $r0.0   ## bblock 1, line 1517,  t131,  t130,  0(I32)
	c0    stw 0x10[$r0.1] = $r0.10   ## bblock 1, line 1533, t88, t106(I10)
	c0    add $r0.4 = $r0.6, -897   ## [spec] bblock 8, line 1537,  t85,  t118,  -897(SI32)
;;								## 1
	c0    or $r0.7 = $r0.7, $r0.8   ## bblock 1, line 1517,  t148,  t131,  t137
;;								## 2
	c0    or $r0.7 = $r0.7, $r0.9   ## bblock 1, line 1517,  t105,  t148,  t132(I10)
;;								## 3
	c0    stw 0x14[$r0.1] = $r0.7   ## bblock 1, line 1532, t88, t105
	c0    or $r0.2 = $r0.7, 1073741824   ## [spec] bblock 10, line 1536,  t81,  t105,  1073741824(I32)
	c0    brf $b0.0, L151?3   ## bblock 1, line 1535,  t149(I1)
;;								## 4
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 10, line 1536, t88, t81
;;								## 5
L152?3:
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 8, line 1537, t86, t88
;;								## 6
.call roundAndPackFloat32, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = roundAndPackFloat32   ## bblock 8, line 1537,  raddr(roundAndPackFloat32)(P32),  t119(I1),  t85,  t86
;;								## 7
	c0    ldw $l0.0 = 0x18[$r0.1]  ## restore ## t87
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 9, line 1537,  t88,  ?2.31?2auto_size(I32),  t87
;;								## 11
.trace 4
L151?3:
	c0    mov $r0.3 = $r0.5   ## t119(I1)
	c0    goto L152?3 ## goto
;;								## 0
.endp
.section .bss
.section .data
.equ ?2.31?2scratch.0, 0x0
.equ _?1PACKET.288, 0x10
.equ _?1PACKET.287, 0x14
.equ ?2.31?2ras_p, 0x18
.equ ?2.31?2spill_p, 0x1c
.section .data
.section .text
.equ ?2.31?2auto_size, 0x40
 ## End _r_d
 ## Begin addFloat64Sigs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32)
addFloat64Sigs:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 1048575   ## bblock 0, line 1547,  t2,  t309,  1048575(I32)
	c0    and $r0.8 = $r0.5, 1048575   ## bblock 0, line 1550,  t8,  t311,  1048575(I32)
	c0    shru $r0.9 = $r0.3, 20   ## bblock 0, line 1548,  t4(I12),  t309,  20(SI32)
	c0    shru $r0.10 = $r0.5, 20   ## bblock 0, line 1551,  t10(I12),  t311,  20(SI32)
;;								## 0
	c0    and $r0.9 = $r0.9, 2047   ## bblock 0, line 1548,  t364,  t4(I12),  2047(I32)
	c0    and $r0.10 = $r0.10, 2047   ## bblock 0, line 1551,  t363,  t10(I12),  2047(I32)
	c0    or $r0.11 = $r0.4, $r0.2   ## [spec] bblock 64, line 1555,  t481,  t310,  t2
	c0    stw 0x2c[$r0.1] = $l0.0  ## spill ## t293
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.4   ## bblock 0, line 1546, t294, t310
	c0    sub $r0.12 = $r0.9, $r0.10   ## bblock 0, line 1552,  t361,  t364,  t363
	c0    cmpeq $b0.0 = $r0.9, 2047   ## [spec] bblock 48, line 1554,  t476(I1),  t364,  2047(SI32)
	c0    cmpne $b0.1 = $r0.11, $r0.0   ## [spec] bblock 64, line 1555,  t482,  t481,  0(I32)
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.2   ## bblock 0, line 1547, t294, t2
	c0    cmpgt $b0.2 = $r0.12, $r0.0   ## bblock 0, line 1553,  t459(I1),  t361,  0(SI32)
;;								## 3
	c0    stw 0x14[$r0.1] = $r0.6   ## bblock 0, line 1549, t294, t312
;;								## 4
	c0    stw 0x10[$r0.1] = $r0.8   ## bblock 0, line 1550, t294, t8
	c0    brf $b0.2, L153?3   ## bblock 0, line 1553,  t459(I1)
;;								## 5
	c0    brf $b0.0, L154?3   ## bblock 48, line 1554,  t476(I1)
;;								## 6
	c0    brf $b0.1, L155?3   ## bblock 64, line 1555,  t482
;;								## 7
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 66, line 1556,  raddr(propagateFloat64NaN)(P32),  t309,  t310,  t311,  t312
;;								## 8
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 9
;;								## 10
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 67, line 1556,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 12
.trace 10
L155?3:
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 65, line 1557,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 3
.trace 3
L154?3:
	c0    cmpeq $b0.0 = $r0.10, $r0.0   ## bblock 49, line 1559,  t477(I1),  t363,  0(SI32)
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 51, line 1566, t360, t294
	c0    add $r0.8 = $r0.1, 0x10   ## [spec] bblock 51, line 1572,  t352,  t294,  offset(bSig0?1.239)=0x10(P32)
	c0    add $r0.11 = $r0.1, 0x14   ## [spec] bblock 51, line 1573,  t351,  t294,  offset(bSig1?1.239)=0x14(P32)
	c0    mov $r0.13 = $r0.0   ## [spec] bblock 51, line 1568,  t358,  0(SI32)
	c0    add $r0.14 = $r0.1, 0x20   ## [spec] bblock 51, line 1574,  t350,  t294,  offset(zSig2?1.239)=0x20(P32)
	c0    mov $r0.15 = $r0.0   ## [spec] bblock 62, line 1568,  t353,  0(SI32)
	c0    mov $r0.16 = $r0.9   ## [spec] bblock 58, line 1610,  t362,  t364
;;								## 0
	c0    ldw.d $r0.17 = 0x14[$r0.1]   ## [spec] bblock 51, line 1567, t359, t294
	c0    add $r0.18 = $r0.16, -1   ## [spec] bblock 36, line 1708,  t368,  t362,  -1(SI32)
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 1
	c0    mov $r0.19 = $r0.2   ## [spec] bblock 62, line 1566,  t355,  t360
	c0    ldw.d $r0.10 = 0x1c[$r0.1]   ## [spec] bblock 36, line 1701, t219, t294
	c0    brf $b0.0, L156?3   ## bblock 49, line 1559,  t477(I1)
;;								## 2
	c0    add $r0.12 = $r0.12, -1   ## bblock 63, line 1560,  t361,  t361,  -1(SI32)
	c0    mov $r0.20 = $r0.17   ## [spec] bblock 62, line 1567,  t354,  t359
	c0    ldw.d $r0.21 = 0x18[$r0.1]   ## [spec] bblock 36, line 1696, t205, t294
;;								## 3
L157?3:
	c0    sub $r0.22 = $r0.0, $r0.12   ## bblock 51, line 1575,  t36,  0(I32),  t361
	c0    cmpeq $b0.0 = $r0.12, $r0.0   ## bblock 51, line 1575,  t478(I1),  t361,  0(SI32)
;;								## 4
	c0    and $r0.22 = $r0.22, 31   ## bblock 51, line 1570,  t356,  t36,  31(I32)
	c0    or $r0.21 = $r0.21, 1048576   ## [spec] bblock 36, line 1696,  t222,  t205,  1048576(I32)
;;								## 5
	c0    brf $b0.0, L158?3   ## bblock 51, line 1575,  t478(I1)
;;								## 6
L159?3:
	c0    stw 0[$r0.11] = $r0.20   ## bblock 58, line 1607, t351, t354
;;								## 7
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 36, line 1703, t213, t294
;;								## 8
	c0    stw 0[$r0.8] = $r0.19   ## bblock 58, line 1608, t352, t355
;;								## 9
	c0    ldw $r0.8 = 0x10[$r0.1]   ## bblock 36, line 1702, t221, t294
	c0    add $r0.2 = $r0.10, $r0.2   ## bblock 36, line 1704,  t218,  t219,  t213
;;								## 10
	c0    cmpltu $r0.10 = $r0.2, $r0.10   ## bblock 36, line 1706,  t220,  t218,  t219
	c0    stw 0x24[$r0.1] = $r0.2   ## bblock 36, line 1705, t294, t218
;;								## 11
	c0    add $r0.10 = $r0.21, $r0.10   ## bblock 36, line 1706,  t472,  t222,  t220
	c0    ldw.d $r0.2 = 0x24[$r0.1]   ## [spec] bblock 5, line 1715, t323, t294
;;								## 12
	c0    stw 0[$r0.14] = $r0.15   ## bblock 58, line 1606, t350, t353
	c0    add $r0.10 = $r0.10, $r0.8   ## bblock 36, line 1706,  t227,  t472,  t221
;;								## 13
L160?3:
	c0    cmpltu $b0.0 = $r0.10, 2097152   ## bblock 36, line 1709,  t473(I1),  t227,  2097152(SI32)
	c0    ldw.d $r0.13 = 0x20[$r0.1]   ## [spec] bblock 5, line 1716, t322, t294
	c0    shl $r0.11 = $r0.2, 31   ## [spec] bblock 5, line 1730,  t317,  t323,  31(I32)
	c0    shru $r0.8 = $r0.2, 1   ## [spec] bblock 5, line 1731,  t393(I31),  t323,  1(SI32)
;;								## 14
	c0    stw 0x28[$r0.1] = $r0.10   ## bblock 36, line 1706, t294, t227
;;								## 15
	c0    ldw.d $r0.2 = 0x28[$r0.1]   ## [spec] bblock 5, line 1714, t324, t294
	c0    cmpne $r0.13 = $r0.13, $r0.0   ## [spec] bblock 5, line 1752,  t278,  t322,  0(I32)
;;								## 16
	c0    stw 0x18[$r0.1] = $r0.21   ## bblock 36, line 1696, t294, t222
	c0    or $r0.11 = $r0.11, $r0.13   ## [spec] bblock 5, line 1752,  t369,  t317,  t278
	c0    br $b0.0, L161?3   ## bblock 36, line 1709,  t473(I1)
;;								## 17
	c0    mov $r0.4 = $r0.16   ## bblock 37, line 1711,  t368,  t362
	c0    stw 0x20[$r0.1] = $r0.11   ## bblock 5, line 1754, t294, t369
	c0    shl $r0.13 = $r0.2, 31   ## bblock 5, line 1731,  t405,  t324,  31(I32)
	c0    shru $r0.10 = $r0.2, 1   ## bblock 5, line 1732,  t319(I31),  t324,  1(SI32)
;;								## 18
L162?3:
	c0    or $r0.13 = $r0.13, $r0.8   ## bblock 5, line 1731,  t318,  t405,  t393(I31)
	c0    ldw $r0.7 = 0x20[$r0.1]   ## bblock 13, line 1759, t292, t294
;;								## 19
	c0    stw 0x28[$r0.1] = $r0.10   ## bblock 5, line 1756, t294, t319(I31)
;;								## 20
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 13, line 1759, t290, t294
;;								## 21
	c0    stw 0x24[$r0.1] = $r0.13   ## bblock 5, line 1755, t294, t318
;;								## 22
L163?3:
	c0    ldw $r0.6 = 0x24[$r0.1]   ## bblock 13, line 1759, t291, t294
;;								## 23
.call roundAndPackFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = roundAndPackFloat64   ## bblock 13, line 1759,  raddr(roundAndPackFloat64)(P32),  t313,  t368,  t290,  t291,  t292
;;								## 24
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 25
;;								## 26
;;								## 27
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 14, line 1759,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 28
.trace 5
L161?3:
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 13, line 1759, t290, t294
	c0    mov $r0.3 = $r0.7   ## t313
	c0    mov $r0.4 = $r0.18   ## t368
;;								## 0
	c0    ldw $r0.7 = 0x20[$r0.1]   ## bblock 13, line 1759, t292, t294
;;								## 1
	c0    goto L163?3 ## goto
;;								## 2
.trace 9
L158?3:
	c0    cmplt $b0.0 = $r0.12, 32   ## bblock 52, line 1581,  t479(I1),  t361,  32(SI32)
	c0    shl $r0.4 = $r0.17, $r0.22   ## [spec] bblock 61, line 1582,  t366,  t359,  t356
	c0    shru $r0.5 = $r0.17, $r0.12   ## [spec] bblock 61, line 1583,  t51,  t359,  t361
	c0    shl $r0.6 = $r0.2, $r0.22   ## [spec] bblock 61, line 1583,  t54,  t360,  t356
	c0    shru $r0.19 = $r0.2, $r0.12   ## [spec] bblock 61, line 1584,  t355,  t360,  t361
	c0    cmpne $r0.13 = $r0.13, $r0.0   ## [spec] bblock 57, line 1604,  t80,  t358,  0(I32)
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
	c0    or $r0.20 = $r0.5, $r0.6   ## [spec] bblock 61, line 1583,  t354,  t51,  t54
	c0    or $r0.15 = $r0.13, $r0.4   ## [spec] bblock 57, line 1604,  t353,  t80,  t366
;;								## 1
	c0    brf $b0.0, L164?3   ## bblock 52, line 1581,  t479(I1)
	      ## goto
;;
	c0    goto L159?3 ## goto
;;								## 2
.trace 11
L164?3:
	c0    cmpeq $b0.2 = $r0.12, 32   ## bblock 53, line 1587,  t421(I1),  t361,  32(SI32)
	c0    cmpge $b0.1 = $r0.12, 64   ## bblock 53, line 1593,  t425(I1),  t361,  64(SI32)
	c0    cmpne $r0.4 = $r0.2, $r0.0   ## bblock 53, line 1598,  t429,  t360,  0(I32)
	c0    cmpeq $b0.0 = $r0.12, 64   ## bblock 53, line 1598,  t480(I1),  t361,  64(SI32)
	c0    shl $r0.22 = $r0.2, $r0.22   ## bblock 53, line 1594,  t426,  t360,  t356
	c0    and $r0.12 = $r0.12, 31   ## bblock 53, line 1595,  t427,  t361,  31(I32)
	c0    mov $r0.19 = $r0.0   ## bblock 53, line 1599,  t355,  0(SI32)
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
	c0    slct $r0.4 = $b0.0, $r0.2, $r0.4   ## bblock 53, line 1598,  t431,  t480(I1),  t360,  t429
	c0    shru $r0.12 = $r0.2, $r0.12   ## bblock 53, line 1595,  t428,  t360,  t427
	c0    slctf $r0.13 = $b0.2, $r0.17, $r0.0   ## bblock 53, line 1592,  t358,  t421(I1),  t359,  0(SI32)
;;								## 1
	c0    slct $r0.4 = $b0.1, $r0.4, $r0.22   ## bblock 53, line 1594,  t432,  t425(I1),  t431,  t426
	c0    slctf $r0.12 = $b0.1, $r0.12, $r0.0   ## bblock 53, line 1595,  t433,  t425(I1),  t428,  0(SI32)
	c0    cmpne $r0.13 = $r0.13, $r0.0   ## bblock 57, line 1604,  t80,  t358,  0(I32)
;;								## 2
	c0    slct $r0.20 = $b0.2, $r0.2, $r0.12   ## bblock 53, line 1589,  t354,  t421(I1),  t360,  t433
	c0    slct $r0.4 = $b0.2, $r0.17, $r0.4   ## bblock 53, line 1588,  t366,  t421(I1),  t359,  t432
;;								## 3
	c0    or $r0.15 = $r0.13, $r0.4   ## bblock 57, line 1604,  t353,  t80,  t366
	c0    goto L159?3 ## goto
;;								## 4
.trace 6
L156?3:
	c0    ldw $r0.4 = 0x10[$r0.1]   ## bblock 50, line 1563, t30, t294
	c0    mov $r0.20 = $r0.17   ## [spec] bblock 62, line 1567,  t354,  t359
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
;;								## 1
	c0    or $r0.4 = $r0.4, 1048576   ## bblock 50, line 1563,  t31,  t30,  1048576(I32)
;;								## 2
	c0    stw 0x10[$r0.1] = $r0.4   ## bblock 50, line 1563, t294, t31
;;								## 3
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 51, line 1566, t360, t294
;;								## 4
;;								## 5
	c0    mov $r0.19 = $r0.2   ## [spec] bblock 62, line 1566,  t355,  t360
	c0    ldw.d $r0.21 = 0x18[$r0.1]   ## [spec] bblock 36, line 1696, t205, t294
	c0    goto L157?3 ## goto
;;								## 6
.trace 2
L153?3:
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 1, line 1612,  t460(I1),  t361,  0(SI32)
	c0    cmpeq $b0.1 = $r0.10, 2047   ## [spec] bblock 25, line 1613,  t468(I1),  t363,  2047(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 43, line 1614, t91, t294
;;								## 0
	c0    ldw.d $r0.8 = 0x10[$r0.1]   ## [spec] bblock 43, line 1614, t92, t294
;;								## 1
	c0    brf $b0.0, L165?3   ## bblock 1, line 1612,  t460(I1)
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.8   ## [spec] bblock 43, line 1614,  t474,  t91,  t92
	c0    brf $b0.1, L166?3   ## bblock 25, line 1613,  t468(I1)
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 43, line 1614,  t475,  t474,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L167?3   ## bblock 43, line 1614,  t475
;;								## 6
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 46, line 1615,  raddr(propagateFloat64NaN)(P32),  t309,  t310,  t311,  t312
;;								## 7
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 47, line 1615,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 11
.trace 16
L167?3:
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 44, line 1616,  raddr(packFloat64)(P32),  t313,  2047(SI32),  0(I32),  0(I32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.7   ## t313
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 45, line 1616,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 4
.trace 7
L166?3:
	c0    cmpeq $b0.0 = $r0.9, $r0.0   ## bblock 26, line 1618,  t469(I1),  t364,  0(SI32)
	c0    ldw.d $r0.4 = 0x18[$r0.1]   ## [spec] bblock 28, line 1625, t349, t294
	c0    add $r0.5 = $r0.1, 0x18   ## [spec] bblock 28, line 1631,  t341,  t294,  offset(aSig0?1.239)=0x18(P32)
	c0    add $r0.6 = $r0.1, 0x1c   ## [spec] bblock 28, line 1632,  t340,  t294,  offset(aSig1?1.239)=0x1c(P32)
	c0    add $r0.8 = $r0.1, 0x20   ## [spec] bblock 28, line 1633,  t339,  t294,  offset(zSig2?1.239)=0x20(P32)
	c0    mov $r0.11 = $r0.0   ## [spec] bblock 41, line 1627,  t342,  0(SI32)
	c0    mov $r0.16 = $r0.10   ## [spec] bblock 35, line 1669,  t362,  t363
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
	c0    ldw.d $r0.13 = 0x1c[$r0.1]   ## [spec] bblock 28, line 1626, t348, t294
	c0    add $r0.18 = $r0.16, -1   ## [spec] bblock 36, line 1708,  t368,  t362,  -1(SI32)
;;								## 1
	c0    mov $r0.14 = $r0.4   ## [spec] bblock 41, line 1625,  t344,  t349
	c0    ldw.d $r0.9 = 0x14[$r0.1]   ## [spec] bblock 36, line 1703, t213, t294
	c0    brf $b0.0, L168?3   ## bblock 26, line 1618,  t469(I1)
;;								## 2
	c0    add $r0.12 = $r0.12, 1   ## bblock 42, line 1619,  t361,  t361,  1(SI32)
	c0    mov $r0.15 = $r0.13   ## [spec] bblock 41, line 1626,  t343,  t348
	c0    ldw.d $r0.17 = 0x10[$r0.1]   ## [spec] bblock 36, line 1702, t221, t294
;;								## 3
L169?3:
	c0    sub $r0.12 = $r0.0, $r0.12   ## bblock 28, line 1634,  t346,  0(I32),  t361
;;								## 4
	c0    sub $r0.19 = $r0.0, $r0.12   ## bblock 28, line 1634,  t112,  0(I32),  t346
	c0    cmpeq $b0.0 = $r0.12, $r0.0   ## bblock 28, line 1634,  t470(I1),  t346,  0(SI32)
;;								## 5
	c0    and $r0.19 = $r0.19, 31   ## bblock 28, line 1629,  t345,  t112,  31(I32)
;;								## 6
	c0    brf $b0.0, L170?3   ## bblock 28, line 1634,  t470(I1)
;;								## 7
L171?3:
	c0    stw 0[$r0.6] = $r0.15   ## bblock 35, line 1666, t340, t343
;;								## 8
	c0    ldw $r0.4 = 0x1c[$r0.1]   ## bblock 36, line 1701, t219, t294
;;								## 9
	c0    stw 0[$r0.8] = $r0.11   ## bblock 35, line 1665, t339, t342
;;								## 10
	c0    stw 0[$r0.5] = $r0.14   ## bblock 35, line 1667, t341, t344
	c0    add $r0.9 = $r0.4, $r0.9   ## bblock 36, line 1704,  t218,  t219,  t213
;;								## 11
	c0    ldw $r0.5 = 0x18[$r0.1]   ## bblock 36, line 1696, t205, t294
	c0    cmpltu $r0.4 = $r0.9, $r0.4   ## bblock 36, line 1706,  t220,  t218,  t219
;;								## 12
	c0    stw 0x24[$r0.1] = $r0.9   ## bblock 36, line 1705, t294, t218
;;								## 13
	c0    or $r0.21 = $r0.5, 1048576   ## bblock 36, line 1696,  t222,  t205,  1048576(I32)
	c0    ldw.d $r0.2 = 0x24[$r0.1]   ## [spec] bblock 5, line 1715, t323, t294
;;								## 14
	c0    add $r0.4 = $r0.21, $r0.4   ## bblock 36, line 1706,  t472,  t222,  t220
;;								## 15
	c0    add $r0.10 = $r0.4, $r0.17   ## bblock 36, line 1706,  t227,  t472,  t221
	c0    goto L160?3 ## goto
;;								## 16
.trace 13
L170?3:
	c0    cmpge $b0.3 = $r0.12, 32   ## bblock 29, line 1640,  t434(I1),  t346,  32(SI32)
	c0    cmpeq $b0.2 = $r0.12, 32   ## bblock 29, line 1646,  t440(I1),  t346,  32(SI32)
	c0    shl $r0.19 = $r0.13, $r0.19   ## bblock 29, line 1641,  t435,  t348,  t345
	c0    shl $r0.10 = $r0.4, $r0.19   ## bblock 29, line 1642,  t445,  t349,  t345
	c0    cmpne $r0.2 = $r0.4, $r0.0   ## bblock 29, line 1657,  t448,  t349,  0(I32)
	c0    cmpge $b0.1 = $r0.12, 64   ## bblock 29, line 1652,  t444(I1),  t346,  64(SI32)
	c0    cmpeq $b0.0 = $r0.12, 64   ## bblock 29, line 1657,  t471(I1),  t346,  64(SI32)
	c0    and $r0.20 = $r0.12, 31   ## bblock 29, line 1654,  t446,  t346,  31(I32)
;;								## 0
	c0    shru $r0.22 = $r0.13, $r0.12   ## bblock 29, line 1642,  t436,  t348,  t346
	c0    shru $r0.12 = $r0.4, $r0.12   ## bblock 29, line 1643,  t439,  t349,  t346
	c0    slct $r0.2 = $b0.0, $r0.4, $r0.2   ## bblock 29, line 1657,  t450,  t471(I1),  t349,  t448
	c0    shru $r0.20 = $r0.4, $r0.20   ## bblock 29, line 1654,  t447,  t349,  t446
	c0    slctf $r0.21 = $b0.2, $r0.13, $r0.0   ## bblock 29, line 1651,  t455,  t440(I1),  t348,  0(SI32)
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 1
	c0    or $r0.22 = $r0.22, $r0.10   ## bblock 29, line 1642,  t438,  t436,  t445
	c0    slct $r0.2 = $b0.1, $r0.2, $r0.10   ## bblock 29, line 1653,  t451,  t444(I1),  t450,  t445
	c0    slctf $r0.20 = $b0.1, $r0.20, $r0.0   ## bblock 29, line 1654,  t452,  t444(I1),  t447,  0(SI32)
	c0    slctf $r0.14 = $b0.3, $r0.12, $r0.0   ## bblock 29, line 1643,  t344,  t434(I1),  t439,  0(SI32)
	c0    slct $r0.21 = $b0.3, $r0.21, $r0.0   ## bblock 29, line 1651,  t347,  t434(I1),  t455,  0(SI32)
;;								## 2
	c0    slct $r0.13 = $b0.2, $r0.13, $r0.2   ## bblock 29, line 1647,  t454,  t440(I1),  t348,  t451
	c0    slct $r0.4 = $b0.2, $r0.4, $r0.20   ## bblock 29, line 1648,  t453,  t440(I1),  t349,  t452
	c0    cmpne $r0.21 = $r0.21, $r0.0   ## bblock 29, line 1663,  t156,  t347,  0(I32)
;;								## 3
	c0    slct $r0.13 = $b0.3, $r0.13, $r0.19   ## bblock 29, line 1641,  t367,  t434(I1),  t454,  t435
	c0    slct $r0.15 = $b0.3, $r0.4, $r0.22   ## bblock 29, line 1642,  t343,  t434(I1),  t453,  t438
;;								## 4
	c0    or $r0.11 = $r0.13, $r0.21   ## bblock 29, line 1663,  t342,  t367,  t156
	c0    goto L171?3 ## goto
;;								## 5
.trace 14
L168?3:
	c0    ldw $r0.2 = 0x18[$r0.1]   ## bblock 27, line 1622, t105, t294
	c0    mov $r0.15 = $r0.13   ## [spec] bblock 41, line 1626,  t343,  t348
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
;;								## 1
	c0    or $r0.2 = $r0.2, 1048576   ## bblock 27, line 1622,  t106,  t105,  1048576(I32)
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.2   ## bblock 27, line 1622, t294, t106
;;								## 3
	c0    ldw $r0.4 = 0x18[$r0.1]   ## bblock 28, line 1625, t349, t294
;;								## 4
;;								## 5
	c0    mov $r0.14 = $r0.4   ## [spec] bblock 41, line 1625,  t344,  t349
	c0    ldw.d $r0.17 = 0x10[$r0.1]   ## [spec] bblock 36, line 1702, t221, t294
	c0    goto L169?3 ## goto
;;								## 6
.trace 4
L165?3:
	c0    cmpeq $b0.0 = $r0.9, 2047   ## bblock 2, line 1672,  t461(I1),  t364,  2047(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 21, line 1673, t166, t294
;;								## 0
	c0    ldw.d $r0.8 = 0x18[$r0.1]   ## [spec] bblock 21, line 1673, t169, t294
;;								## 1
	c0    ldw.d $r0.10 = 0x10[$r0.1]   ## [spec] bblock 21, line 1673, t167, t294
	c0    brf $b0.0, L172?3   ## bblock 2, line 1672,  t461(I1)
;;								## 2
	c0    ldw $r0.8 = 0x1c[$r0.1]   ## bblock 21, line 1673, t168, t294
	c0    or $r0.2 = $r0.2, $r0.8   ## bblock 21, line 1673,  t464,  t166,  t169
;;								## 3
;;								## 4
	c0    or $r0.10 = $r0.10, $r0.8   ## bblock 21, line 1673,  t465,  t167,  t168
;;								## 5
	c0    or $r0.2 = $r0.2, $r0.10   ## bblock 21, line 1673,  t466,  t464,  t465
;;								## 6
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 21, line 1673,  t467,  t466,  0(I32)
;;								## 7
;;								## 8
	c0    brf $b0.0, L173?3   ## bblock 21, line 1673,  t467
;;								## 9
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 23, line 1674,  raddr(propagateFloat64NaN)(P32),  t309,  t310,  t311,  t312
;;								## 10
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 11
;;								## 12
;;								## 13
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 24, line 1674,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 14
.trace 15
L173?3:
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 22, line 1676,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 3
.trace 8
L172?3:
	c0    ldw $r0.2 = 0x1c[$r0.1]   ## bblock 3, line 1682, t190, t294
	c0    cmpeq $b0.0 = $r0.9, $r0.0   ## bblock 3, line 1689,  t463(I1),  t364,  0(SI32)
	c0    mov $r0.3 = $r0.7   ## t313
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 0
	c0    ldw $r0.8 = 0x14[$r0.1]   ## bblock 3, line 1684, t184, t294
;;								## 1
	c0    ldw $r0.10 = 0x18[$r0.1]   ## bblock 3, line 1681, t193, t294
;;								## 2
	c0    ldw $r0.8 = 0x10[$r0.1]   ## bblock 3, line 1683, t192, t294
	c0    add $r0.6 = $r0.2, $r0.8   ## bblock 3, line 1685,  t189,  t190,  t184
;;								## 3
	c0    cmpltu $r0.2 = $r0.6, $r0.2   ## bblock 3, line 1687,  t191,  t189,  t190
	c0    stw 0x24[$r0.1] = $r0.6   ## bblock 3, line 1686, t294, t189
;;								## 4
	c0    add $r0.10 = $r0.10, $r0.2   ## bblock 3, line 1687,  t462,  t193,  t191
;;								## 5
	c0    add $r0.5 = $r0.10, $r0.8   ## bblock 3, line 1687,  t194,  t462,  t192
;;								## 6
	c0    stw 0x28[$r0.1] = $r0.5   ## bblock 3, line 1687, t294, t194
	c0    brf $b0.0, L174?3   ## bblock 3, line 1689,  t463(I1)
;;								## 7
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 19, line 1690,  raddr(packFloat64)(P32),  t313,  0(SI32),  t194,  t189
;;								## 8
	c0    ldw $l0.0 = 0x2c[$r0.1]  ## restore ## t293
;;								## 9
;;								## 10
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 20, line 1690,  t294,  ?2.32?2auto_size(I32),  t293
;;								## 12
.trace 12
L174?3:
	c0    mov $r0.4 = $r0.9   ## bblock 4, line 1693,  t368,  t364
	c0    ldw $r0.2 = 0x24[$r0.1]   ## bblock 5, line 1715, t323, t294
	c0    mov $r0.3 = $r0.7   ## t313
;;								## 0
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 4, line 1692, t202, t294
;;								## 1
	c0    stw 0x20[$r0.1] = $r0.0   ## bblock 4, line 1691, t294, 0(SI32)
	c0    shl $r0.11 = $r0.2, 31   ## bblock 5, line 1730,  t317,  t323,  31(I32)
	c0    shru $r0.8 = $r0.2, 1   ## bblock 5, line 1731,  t393(I31),  t323,  1(SI32)
;;								## 2
	c0    or $r0.5 = $r0.5, 2097152   ## bblock 4, line 1692,  t203,  t202,  2097152(I32)
	c0    ldw $r0.2 = 0x20[$r0.1]   ## bblock 5, line 1716, t322, t294
;;								## 3
	c0    stw 0x28[$r0.1] = $r0.5   ## bblock 4, line 1692, t294, t203
;;								## 4
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 5, line 1714, t324, t294
	c0    cmpne $r0.2 = $r0.2, $r0.0   ## bblock 5, line 1752,  t278,  t322,  0(I32)
;;								## 5
	c0    or $r0.11 = $r0.11, $r0.2   ## bblock 5, line 1752,  t369,  t317,  t278
;;								## 6
	c0    stw 0x20[$r0.1] = $r0.11   ## bblock 5, line 1754, t294, t369
	c0    shl $r0.13 = $r0.5, 31   ## bblock 5, line 1731,  t405,  t324,  31(I32)
	c0    shru $r0.10 = $r0.5, 1   ## bblock 5, line 1732,  t319(I31),  t324,  1(SI32)
	c0    goto L162?3 ## goto
;;								## 7
.endp
.section .bss
.section .data
.equ ?2.32?2scratch.0, 0x0
.equ _?1PACKET.302, 0x10
.equ _?1PACKET.303, 0x14
.equ _?1PACKET.300, 0x18
.equ _?1PACKET.301, 0x1c
.equ _?1PACKET.306, 0x20
.equ _?1PACKET.305, 0x24
.equ _?1PACKET.304, 0x28
.equ ?2.32?2ras_p, 0x2c
.section .data
.section .text
.equ ?2.32?2auto_size, 0x40
 ## End addFloat64Sigs
 ## Begin subFloat64Sigs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32)
subFloat64Sigs:
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    and $r0.2 = $r0.3, 1048575   ## bblock 0, line 1770,  t30,  t289,  1048575(I32)
	c0    and $r0.9 = $r0.5, 1048575   ## bblock 0, line 1773,  t51,  t291,  1048575(I32)
	c0    shru $r0.8 = $r0.4, 22   ## bblock 0, line 1784,  t29(I10),  t290,  22(I32)
	c0    shru $r0.10 = $r0.6, 22   ## bblock 0, line 1794,  t50(I10),  t292,  22(I32)
;;								## 0
	c0    shru $r0.13 = $r0.3, 20   ## bblock 0, line 1771,  t4(I12),  t289,  20(SI32)
	c0    shru $r0.14 = $r0.5, 20   ## bblock 0, line 1774,  t10(I12),  t291,  20(SI32)
	c0    shl $r0.11 = $r0.4, 10   ## bblock 0, line 1782,  t21,  t290,  10(SI32)
	c0    shl $r0.2 = $r0.2, 10   ## bblock 0, line 1784,  t32,  t30,  10(SI32)
	c0    shl $r0.9 = $r0.9, 10   ## bblock 0, line 1794,  t53,  t51,  10(SI32)
	c0    shl $r0.12 = $r0.6, 10   ## bblock 0, line 1792,  t42,  t292,  10(SI32)
	c0    stw 0x28[$r0.1] = $l0.0  ## spill ## t273
;;								## 1
	c0    and $r0.13 = $r0.13, 2047   ## bblock 0, line 1771,  t337,  t4(I12),  2047(I32)
	c0    and $r0.14 = $r0.14, 2047   ## bblock 0, line 1774,  t336,  t10(I12),  2047(I32)
	c0    stw 0x1c[$r0.1] = $r0.11   ## bblock 0, line 1782, t274, t21
	c0    or $r0.2 = $r0.2, $r0.8   ## bblock 0, line 1784,  t34,  t32,  t29(I10)
	c0    or $r0.9 = $r0.9, $r0.10   ## bblock 0, line 1794,  t55,  t53,  t50(I10)
;;								## 2
	c0    sub $r0.8 = $r0.13, $r0.14   ## bblock 0, line 1775,  t334,  t337,  t336
	c0    stw 0x14[$r0.1] = $r0.2   ## bblock 0, line 1783, t274, t34
	c0    cmpeq $b0.0 = $r0.13, 2047   ## [spec] bblock 40, line 1885,  t471(I1),  t337,  2047(SI32)
	c0    or $r0.11 = $r0.11, $r0.2   ## [spec] bblock 55, line 1886,  t475,  t21,  t34
;;								## 3
	c0    stw 0x10[$r0.1] = $r0.9   ## bblock 0, line 1793, t274, t55
	c0    cmpgt $b0.1 = $r0.8, $r0.0   ## bblock 0, line 1796,  t450(I1),  t334,  0(SI32)
	c0    cmpne $b0.2 = $r0.11, $r0.0   ## [spec] bblock 55, line 1886,  t476,  t475,  0(I32)
;;								## 4
	c0    stw 0x18[$r0.1] = $r0.12   ## bblock 0, line 1792, t274, t42
;;								## 5
	c0    brf $b0.1, L175?3   ## bblock 0, line 1796,  t450(I1)
;;								## 6
	c0    brf $b0.0, L176?3   ## bblock 40, line 1885,  t471(I1)
;;								## 7
	c0    brf $b0.2, L177?3   ## bblock 55, line 1886,  t476
;;								## 8
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 57, line 1887,  raddr(propagateFloat64NaN)(P32),  t289,  t290,  t291,  t292
;;								## 9
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 10
;;								## 11
;;								## 12
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 58, line 1887,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 13
.trace 8
L177?3:
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 0
;;								## 1
;;								## 2
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 56, line 1888,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 3
.trace 2
L176?3:
	c0    cmpeq $b0.0 = $r0.14, $r0.0   ## bblock 41, line 1890,  t472(I1),  t336,  0(SI32)
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 43, line 1897, t307, t274
	c0    add $r0.9 = $r0.1, 0x10   ## [spec] bblock 43, line 1902,  t301,  t274,  offset(bSig0?1.281)=0x10(P32)
	c0    add $r0.10 = $r0.1, 0x18   ## [spec] bblock 43, line 1903,  t300,  t274,  offset(bSig1?1.281)=0x18(P32)
	c0    mov $r0.11 = $r0.13   ## [spec] bblock 13, line 1940,  t335,  t337
	c0    mov $r0.3 = $r0.7   ## t293
;;								## 0
	c0    ldw.d $r0.12 = 0x18[$r0.1]   ## [spec] bblock 43, line 1898, t306, t274
	c0    add $r0.4 = $r0.11, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 1
	c0    mov $r0.14 = $r0.2   ## [spec] bblock 53, line 1897,  t304,  t307
	c0    ldw.d $r0.11 = 0x14[$r0.1]   ## [spec] bblock 49, line 1928, t244, t274
	c0    brf $b0.0, L178?3   ## bblock 41, line 1890,  t472(I1)
;;								## 2
	c0    add $r0.8 = $r0.8, -1   ## bblock 54, line 1891,  t334,  t334,  -1(SI32)
	c0    mov $r0.15 = $r0.12   ## [spec] bblock 53, line 1898,  t303,  t306
	c0    ldw.d $r0.16 = 0x1c[$r0.1]   ## [spec] bblock 13, line 1934, t256, t274
;;								## 3
L179?3:
	c0    sub $r0.17 = $r0.0, $r0.8   ## bblock 43, line 1904,  t197,  0(I32),  t334
	c0    cmpeq $b0.0 = $r0.8, $r0.0   ## bblock 43, line 1904,  t473(I1),  t334,  0(SI32)
	c0    or $r0.11 = $r0.11, 1073741824   ## [spec] bblock 49, line 1928,  t245,  t244,  1073741824(I32)
;;								## 4
	c0    and $r0.17 = $r0.17, 31   ## bblock 43, line 1901,  t302,  t197,  31(I32)
;;								## 5
	c0    brf $b0.0, L180?3   ## bblock 43, line 1904,  t473(I1)
;;								## 6
L181?3:
	c0    stw 0x14[$r0.1] = $r0.11   ## bblock 49, line 1928, t274, t245
;;								## 7
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 13, line 1933, t260, t274
;;								## 8
	c0    stw 0[$r0.9] = $r0.14   ## bblock 49, line 1926, t301, t304
;;								## 9
	c0    ldw $r0.9 = 0x10[$r0.1]   ## bblock 13, line 1935, t259, t274
;;								## 10
	c0    stw 0[$r0.10] = $r0.15   ## bblock 49, line 1925, t300, t303
;;								## 11
L182?3:
	c0    ldw $r0.10 = 0x18[$r0.1]   ## bblock 13, line 1936, t257, t274
	c0    sub $r0.2 = $r0.2, $r0.9   ## bblock 13, line 1938,  t460,  t260,  t259
;;								## 12
;;								## 13
	c0    sub $r0.11 = $r0.16, $r0.10   ## bblock 13, line 1937,  t254,  t256,  t257
	c0    cmpltu $r0.9 = $r0.16, $r0.10   ## bblock 13, line 1938,  t258,  t256,  t257
;;								## 14
	c0    stw 0x24[$r0.1] = $r0.11   ## bblock 13, line 1937, t274, t254
	c0    sub $r0.2 = $r0.2, $r0.9   ## bblock 13, line 1938,  t261,  t460,  t258
;;								## 15
	c0    ldw $r0.6 = 0x24[$r0.1]   ## bblock 11, line 1943, t272, t274
;;								## 16
	c0    stw 0x20[$r0.1] = $r0.2   ## bblock 13, line 1938, t274, t261
;;								## 17
L183?3:
	c0    ldw $r0.5 = 0x20[$r0.1]   ## bblock 11, line 1943, t271, t274
;;								## 18
.call normalizeRoundAndPackFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = normalizeRoundAndPackFloat64   ## bblock 11, line 1943,  raddr(normalizeRoundAndPackFloat64)(P32),  t293,  t270,  t271,  t272
;;								## 19
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 20
;;								## 21
;;								## 22
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 12, line 1943,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 23
.trace 7
L180?3:
	c0    cmpeq $b0.1 = $r0.8, 32   ## bblock 44, line 1914,  t421(I1),  t334,  32(SI32)
	c0    shru $r0.19 = $r0.12, $r0.8   ## bblock 44, line 1910,  t417,  t306,  t334
	c0    cmpne $r0.18 = $r0.12, $r0.0   ## bblock 44, line 1915,  t422,  t306,  0(I32)
	c0    shl $r0.17 = $r0.12, $r0.17   ## bblock 44, line 1910,  t415,  t306,  t302
	c0    shl $r0.5 = $r0.2, $r0.17   ## bblock 44, line 1910,  t425,  t307,  t302
	c0    or $r0.13 = $r0.12, $r0.2   ## bblock 44, line 1921,  t431,  t306,  t307
	c0    cmpge $b0.0 = $r0.8, 64   ## bblock 44, line 1917,  t424(I1),  t334,  64(SI32)
	c0    and $r0.6 = $r0.8, 31   ## bblock 44, line 1918,  t428,  t334,  31(I32)
;;								## 0
	c0    cmpge $b0.2 = $r0.8, 32   ## bblock 44, line 1908,  t414(I1),  t334,  32(SI32)
	c0    cmpne $r0.17 = $r0.17, $r0.0   ## bblock 44, line 1910,  t416,  t415,  0(I32)
	c0    or $r0.19 = $r0.19, $r0.5   ## bblock 44, line 1910,  t474,  t417,  t425
	c0    or $r0.12 = $r0.12, $r0.5   ## bblock 44, line 1918,  t426,  t306,  t425
	c0    shru $r0.2 = $r0.2, $r0.8   ## bblock 44, line 1911,  t420,  t307,  t334
	c0    or $r0.18 = $r0.18, $r0.2   ## bblock 44, line 1915,  t423,  t422,  t307
	c0    cmpne $r0.13 = $r0.13, $r0.0   ## bblock 44, line 1921,  t432,  t431,  0(I32)
	c0    shru $r0.6 = $r0.2, $r0.6   ## bblock 44, line 1918,  t429,  t307,  t428
;;								## 1
	c0    or $r0.19 = $r0.19, $r0.17   ## bblock 44, line 1910,  t419,  t474,  t416
	c0    cmpne $r0.12 = $r0.12, $r0.0   ## bblock 44, line 1918,  t427,  t426,  0(I32)
	c0    slctf $r0.14 = $b0.2, $r0.2, $r0.0   ## bblock 44, line 1911,  t304,  t414(I1),  t420,  0(SI32)
	c0    mov $r0.3 = $r0.7   ## t293
;;								## 2
	c0    or $r0.12 = $r0.12, $r0.6   ## bblock 44, line 1918,  t430,  t427,  t429
;;								## 3
	c0    slct $r0.13 = $b0.0, $r0.13, $r0.12   ## bblock 44, line 1918,  t433,  t424(I1),  t432,  t430
;;								## 4
	c0    slct $r0.18 = $b0.1, $r0.18, $r0.13   ## bblock 44, line 1915,  t434,  t421(I1),  t423,  t433
;;								## 5
	c0    slct $r0.15 = $b0.2, $r0.18, $r0.19   ## bblock 44, line 1910,  t303,  t414(I1),  t434,  t419
	c0    goto L181?3 ## goto
;;								## 6
.trace 6
L178?3:
	c0    ldw $r0.5 = 0x10[$r0.1]   ## bblock 42, line 1894, t191, t274
	c0    mov $r0.15 = $r0.12   ## [spec] bblock 53, line 1898,  t303,  t306
	c0    mov $r0.3 = $r0.7   ## t293
;;								## 0
;;								## 1
	c0    or $r0.5 = $r0.5, 1073741824   ## bblock 42, line 1894,  t192,  t191,  1073741824(I32)
;;								## 2
	c0    stw 0x10[$r0.1] = $r0.5   ## bblock 42, line 1894, t274, t192
;;								## 3
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 43, line 1897, t307, t274
;;								## 4
;;								## 5
	c0    mov $r0.14 = $r0.2   ## [spec] bblock 53, line 1897,  t304,  t307
	c0    ldw.d $r0.16 = 0x1c[$r0.1]   ## [spec] bblock 13, line 1934, t256, t274
	c0    goto L179?3 ## goto
;;								## 6
.trace 3
L175?3:
	c0    cmplt $b0.0 = $r0.8, $r0.0   ## bblock 1, line 1798,  t451(I1),  t334,  0(SI32)
	c0    cmpeq $b0.1 = $r0.14, 2047   ## [spec] bblock 20, line 1826,  t465(I1),  t336,  2047(SI32)
	c0    ldw.d $r0.2 = 0x18[$r0.1]   ## [spec] bblock 35, line 1827, t86, t274
;;								## 0
	c0    ldw.d $r0.9 = 0x10[$r0.1]   ## [spec] bblock 35, line 1827, t87, t274
;;								## 1
	c0    brf $b0.0, L184?3   ## bblock 1, line 1798,  t451(I1)
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.9   ## [spec] bblock 35, line 1827,  t469,  t86,  t87
	c0    brf $b0.1, L185?3   ## bblock 20, line 1826,  t465(I1)
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 35, line 1827,  t470,  t469,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L186?3   ## bblock 35, line 1827,  t470
;;								## 6
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 38, line 1828,  raddr(propagateFloat64NaN)(P32),  t289,  t290,  t291,  t292
;;								## 7
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 39, line 1828,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 11
.trace 12
L186?3:
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    xor $r0.3 = $r0.7, 1   ## bblock 36, line 1829,  t97,  t293,  1(SI32)
	c0    call $l0.0 = packFloat64   ## bblock 36, line 1829,  raddr(packFloat64)(P32),  t97,  2047(SI32),  0(I32),  0(I32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 37, line 1829,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 4
.trace 5
L185?3:
	c0    cmpeq $b0.0 = $r0.13, $r0.0   ## bblock 21, line 1831,  t466(I1),  t337,  0(SI32)
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 23, line 1838, t321, t274
	c0    add $r0.5 = $r0.1, 0x14   ## [spec] bblock 23, line 1843,  t315,  t274,  offset(aSig0?1.281)=0x14(P32)
	c0    add $r0.9 = $r0.1, 0x1c   ## [spec] bblock 23, line 1844,  t314,  t274,  offset(aSig1?1.281)=0x1c(P32)
	c0    mov $r0.11 = $r0.14   ## [spec] bblock 10, line 1881,  t335,  t336
;;								## 0
	c0    ldw.d $r0.10 = 0x1c[$r0.1]   ## [spec] bblock 23, line 1839, t320, t274
	c0    add $r0.4 = $r0.11, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 1
	c0    mov $r0.12 = $r0.2   ## [spec] bblock 33, line 1838,  t318,  t321
	c0    ldw.d $r0.11 = 0x10[$r0.1]   ## [spec] bblock 29, line 1869, t155, t274
	c0    brf $b0.0, L187?3   ## bblock 21, line 1831,  t466(I1)
;;								## 2
	c0    add $r0.8 = $r0.8, 1   ## bblock 34, line 1832,  t334,  t334,  1(SI32)
	c0    mov $r0.13 = $r0.10   ## [spec] bblock 33, line 1839,  t317,  t320
	c0    ldw.d $r0.15 = 0x18[$r0.1]   ## [spec] bblock 10, line 1875, t167, t274
;;								## 3
L188?3:
	c0    sub $r0.8 = $r0.0, $r0.8   ## bblock 23, line 1845,  t319,  0(I32),  t334
	c0    or $r0.11 = $r0.11, 1073741824   ## [spec] bblock 29, line 1869,  t156,  t155,  1073741824(I32)
;;								## 4
	c0    sub $r0.16 = $r0.0, $r0.8   ## bblock 23, line 1845,  t108,  0(I32),  t319
	c0    cmpeq $b0.0 = $r0.8, $r0.0   ## bblock 23, line 1845,  t467(I1),  t319,  0(SI32)
;;								## 5
	c0    and $r0.16 = $r0.16, 31   ## bblock 23, line 1842,  t316,  t108,  31(I32)
;;								## 6
	c0    brf $b0.0, L189?3   ## bblock 23, line 1845,  t467(I1)
;;								## 7
L190?3:
	c0    stw 0x10[$r0.1] = $r0.11   ## bblock 29, line 1869, t274, t156
	c0    xor $r0.3 = $r0.7, 1   ## bblock 10, line 1882,  t293,  t293,  1(SI32)
;;								## 8
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 10, line 1874, t171, t274
;;								## 9
	c0    stw 0[$r0.5] = $r0.12   ## bblock 29, line 1867, t315, t318
;;								## 10
	c0    ldw $r0.5 = 0x14[$r0.1]   ## bblock 10, line 1876, t170, t274
;;								## 11
	c0    stw 0[$r0.9] = $r0.13   ## bblock 29, line 1866, t314, t317
;;								## 12
L191?3:
	c0    ldw $r0.9 = 0x1c[$r0.1]   ## bblock 10, line 1877, t168, t274
	c0    sub $r0.2 = $r0.2, $r0.5   ## bblock 10, line 1879,  t459,  t171,  t170
;;								## 13
;;								## 14
	c0    sub $r0.10 = $r0.15, $r0.9   ## bblock 10, line 1878,  t165,  t167,  t168
	c0    cmpltu $r0.5 = $r0.15, $r0.9   ## bblock 10, line 1879,  t169,  t167,  t168
;;								## 15
	c0    stw 0x24[$r0.1] = $r0.10   ## bblock 10, line 1878, t274, t165
	c0    sub $r0.2 = $r0.2, $r0.5   ## bblock 10, line 1879,  t172,  t459,  t169
;;								## 16
	c0    ldw $r0.6 = 0x24[$r0.1]   ## bblock 11, line 1943, t272, t274
;;								## 17
	c0    stw 0x20[$r0.1] = $r0.2   ## bblock 10, line 1879, t274, t172
	c0    goto L183?3 ## goto
;;								## 18
.trace 11
L189?3:
	c0    cmpeq $b0.1 = $r0.8, 32   ## bblock 24, line 1855,  t399(I1),  t319,  32(SI32)
	c0    shru $r0.18 = $r0.10, $r0.8   ## bblock 24, line 1851,  t395,  t320,  t319
	c0    cmpne $r0.17 = $r0.10, $r0.0   ## bblock 24, line 1856,  t400,  t320,  0(I32)
	c0    shl $r0.16 = $r0.10, $r0.16   ## bblock 24, line 1851,  t393,  t320,  t316
	c0    shl $r0.3 = $r0.2, $r0.16   ## bblock 24, line 1851,  t403,  t321,  t316
	c0    or $r0.14 = $r0.10, $r0.2   ## bblock 24, line 1862,  t409,  t320,  t321
	c0    cmpge $b0.0 = $r0.8, 64   ## bblock 24, line 1858,  t402(I1),  t319,  64(SI32)
	c0    and $r0.6 = $r0.8, 31   ## bblock 24, line 1859,  t406,  t319,  31(I32)
;;								## 0
	c0    cmpge $b0.2 = $r0.8, 32   ## bblock 24, line 1849,  t392(I1),  t319,  32(SI32)
	c0    cmpne $r0.16 = $r0.16, $r0.0   ## bblock 24, line 1851,  t394,  t393,  0(I32)
	c0    or $r0.18 = $r0.18, $r0.3   ## bblock 24, line 1851,  t468,  t395,  t403
	c0    or $r0.10 = $r0.10, $r0.3   ## bblock 24, line 1859,  t404,  t320,  t403
	c0    shru $r0.2 = $r0.2, $r0.8   ## bblock 24, line 1852,  t398,  t321,  t319
	c0    or $r0.17 = $r0.17, $r0.2   ## bblock 24, line 1856,  t401,  t400,  t321
	c0    cmpne $r0.14 = $r0.14, $r0.0   ## bblock 24, line 1862,  t410,  t409,  0(I32)
	c0    shru $r0.6 = $r0.2, $r0.6   ## bblock 24, line 1859,  t407,  t321,  t406
;;								## 1
	c0    or $r0.18 = $r0.18, $r0.16   ## bblock 24, line 1851,  t397,  t468,  t394
	c0    cmpne $r0.10 = $r0.10, $r0.0   ## bblock 24, line 1859,  t405,  t404,  0(I32)
	c0    slctf $r0.12 = $b0.2, $r0.2, $r0.0   ## bblock 24, line 1852,  t318,  t392(I1),  t398,  0(SI32)
;;								## 2
	c0    or $r0.10 = $r0.10, $r0.6   ## bblock 24, line 1859,  t408,  t405,  t407
;;								## 3
	c0    slct $r0.14 = $b0.0, $r0.14, $r0.10   ## bblock 24, line 1859,  t411,  t402(I1),  t410,  t408
;;								## 4
	c0    slct $r0.17 = $b0.1, $r0.17, $r0.14   ## bblock 24, line 1856,  t412,  t399(I1),  t401,  t411
;;								## 5
	c0    slct $r0.13 = $b0.2, $r0.17, $r0.18   ## bblock 24, line 1851,  t317,  t392(I1),  t412,  t397
	c0    goto L190?3 ## goto
;;								## 6
.trace 10
L187?3:
	c0    ldw $r0.3 = 0x14[$r0.1]   ## bblock 22, line 1835, t101, t274
	c0    mov $r0.13 = $r0.10   ## [spec] bblock 33, line 1839,  t317,  t320
;;								## 0
;;								## 1
	c0    or $r0.3 = $r0.3, 1073741824   ## bblock 22, line 1835,  t102,  t101,  1073741824(I32)
;;								## 2
	c0    stw 0x14[$r0.1] = $r0.3   ## bblock 22, line 1835, t274, t102
;;								## 3
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 23, line 1838, t321, t274
;;								## 4
;;								## 5
	c0    mov $r0.12 = $r0.2   ## [spec] bblock 33, line 1838,  t318,  t321
	c0    ldw.d $r0.15 = 0x18[$r0.1]   ## [spec] bblock 10, line 1875, t167, t274
	c0    goto L188?3 ## goto
;;								## 6
.trace 4
L184?3:
	c0    cmpeq $b0.0 = $r0.13, 2047   ## bblock 2, line 1803,  t452(I1),  t337,  2047(SI32)
	c0    cmpne $b0.1 = $r0.13, $r0.0   ## [spec] bblock 3, line 1813,  t453(I1),  t337,  0(I32)
	c0    cmpne $b0.2 = $r0.13, $r0.0   ## [spec] bblock 3, line 1813,  t454(I1),  t337,  0(I32)
	c0    ldw.d $r0.8 = 0x10[$r0.1]   ## [spec] bblock 3, line 1816, t73, t274
	c0    mov $r0.3 = $r0.7   ## t293
	c0    mov $r0.10 = $r0.3   ## t289
;;								## 0
	c0    slct $r0.14 = $b0.1, $r0.14, 1   ## [spec] bblock 3, line 1813,  t336,  t453(I1),  t336,  1(SI32)
	c0    slct $r0.13 = $b0.2, $r0.13, 1   ## [spec] bblock 3, line 1813,  t337,  t454(I1),  t337,  1(SI32)
	c0    ldw.d $r0.11 = 0x14[$r0.1]   ## [spec] bblock 3, line 1816, t74, t274
;;								## 1
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 13, line 1933, t260, t274
	c0    mov $r0.12 = $r0.13   ## [spec] bblock 13, line 1940,  t335,  t337
	c0    br $b0.0, L192?3   ## bblock 2, line 1803,  t452(I1)
;;								## 2
	c0    cmpltu $b0.0 = $r0.8, $r0.11   ## bblock 3, line 1816,  t455(I1),  t73,  t74
	c0    ldw.d $r0.16 = 0x1c[$r0.1]   ## [spec] bblock 13, line 1934, t256, t274
	c0    add $r0.4 = $r0.12, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 3
	c0    ldw.d $r0.9 = 0x10[$r0.1]   ## [spec] bblock 13, line 1935, t259, t274
;;								## 4
	c0    brf $b0.0, L193?3   ## bblock 3, line 1816,  t455(I1)
	      ## goto
;;
	c0    goto L182?3 ## goto
;;								## 5
.trace 9
L193?3:
	c0    cmpltu $b0.0 = $r0.11, $r0.8   ## bblock 5, line 1818,  t456(I1),  t74,  t73
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 10, line 1874, t171, t274
	c0    mov $r0.11 = $r0.14   ## [spec] bblock 10, line 1881,  t335,  t336
;;								## 0
	c0    ldw.d $r0.15 = 0x18[$r0.1]   ## [spec] bblock 10, line 1875, t167, t274
	c0    add $r0.4 = $r0.11, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 1
	c0    ldw.d $r0.5 = 0x14[$r0.1]   ## [spec] bblock 10, line 1876, t170, t274
	c0    brf $b0.0, L194?3   ## bblock 5, line 1818,  t456(I1)
;;								## 2
	c0    xor $r0.3 = $r0.3, 1   ## bblock 10, line 1882,  t293,  t293,  1(SI32)
	c0    goto L191?3 ## goto
;;								## 3
.trace 13
L194?3:
	c0    ldw $r0.6 = 0x18[$r0.1]   ## bblock 6, line 1820, t77, t274
	c0    mov $r0.11 = $r0.13   ## [spec] bblock 13, line 1940,  t335,  t337
;;								## 0
	c0    ldw $r0.5 = 0x1c[$r0.1]   ## bblock 6, line 1820, t78, t274
	c0    add $r0.4 = $r0.11, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 1
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 13, line 1933, t260, t274
;;								## 2
	c0    cmpltu $b0.0 = $r0.6, $r0.5   ## bblock 6, line 1820,  t457(I1),  t77,  t78
	c0    ldw.d $r0.16 = 0x1c[$r0.1]   ## [spec] bblock 13, line 1934, t256, t274
;;								## 3
	c0    ldw.d $r0.9 = 0x10[$r0.1]   ## [spec] bblock 13, line 1935, t259, t274
;;								## 4
	c0    brf $b0.0, L195?3   ## bblock 6, line 1820,  t457(I1)
	      ## goto
;;
	c0    goto L182?3 ## goto
;;								## 5
.trace 14
L195?3:
	c0    cmpltu $b0.0 = $r0.5, $r0.6   ## bblock 7, line 1822,  t458(I1),  t78,  t77
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 10, line 1874, t171, t274
	c0    mov $r0.11 = $r0.14   ## [spec] bblock 10, line 1881,  t335,  t336
	c0    xor $r0.3 = $r0.3, 1   ## [spec] bblock 10, line 1882,  t293,  t293,  1(SI32)
;;								## 0
	c0    ldw.d $r0.15 = 0x18[$r0.1]   ## [spec] bblock 10, line 1875, t167, t274
	c0    add $r0.4 = $r0.11, -11   ## [spec] bblock 11, line 1943,  t270,  t335,  -11(SI32)
;;								## 1
	c0    ldw.d $r0.5 = 0x14[$r0.1]   ## [spec] bblock 10, line 1876, t170, t274
	c0    brf $b0.0, L196?3   ## bblock 7, line 1822,  t458(I1)
;;								## 2
	c0    goto L191?3 ## goto
;;								## 3
.trace 15
L196?3:
	c0    ldw $r0.2 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 8, line 1824, t83, 0(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
;;								## 0
	c0    mov $r0.5 = $r0.0   ## 0(I32)
;;								## 1
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    cmpeq $r0.3 = $r0.2, 1   ## bblock 8, line 1824,  t84,  t83,  1(SI32)
	c0    call $l0.0 = packFloat64   ## bblock 8, line 1824,  raddr(packFloat64)(P32),  t84,  0(SI32),  0(I32),  0(I32)
;;								## 2
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 3
;;								## 4
;;								## 5
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 9, line 1824,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 6
.trace 16
L192?3:
	c0    ldw $r0.7 = 0x18[$r0.1]   ## bblock 15, line 1804, t60, t274
	c0    mov $r0.3 = $r0.10   ## t289
;;								## 0
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 15, line 1804, t63, t274
;;								## 1
	c0    ldw $r0.8 = 0x10[$r0.1]   ## bblock 15, line 1804, t61, t274
;;								## 2
	c0    ldw $r0.2 = 0x1c[$r0.1]   ## bblock 15, line 1804, t62, t274
	c0    or $r0.7 = $r0.7, $r0.2   ## bblock 15, line 1804,  t461,  t60,  t63
;;								## 3
;;								## 4
	c0    or $r0.8 = $r0.8, $r0.2   ## bblock 15, line 1804,  t462,  t61,  t62
;;								## 5
	c0    or $r0.7 = $r0.7, $r0.8   ## bblock 15, line 1804,  t463,  t461,  t462
;;								## 6
	c0    cmpne $b0.0 = $r0.7, $r0.0   ## bblock 15, line 1804,  t464,  t463,  0(I32)
;;								## 7
;;								## 8
	c0    brf $b0.0, L197?3   ## bblock 15, line 1804,  t464
;;								## 9
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 18, line 1805,  raddr(propagateFloat64NaN)(P32),  t289,  t290,  t291,  t292
;;								## 10
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
;;								## 11
;;								## 12
;;								## 13
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 19, line 1805,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 14
.trace 17
L197?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 16, line 1807,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.4 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $l0.0 = 0x28[$r0.1]  ## restore ## t273
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 17, line 1810,  t274,  ?2.33?2auto_size(I32),  t273
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.33?2scratch.0, 0x0
.equ _?1PACKET.360, 0x10
.equ _?1PACKET.358, 0x14
.equ _?1PACKET.361, 0x18
.equ _?1PACKET.359, 0x1c
.equ _?1PACKET.362, 0x20
.equ _?1PACKET.363, 0x24
.equ ?2.33?2ras_p, 0x28
.section .data
.section .text
.equ ?2.33?2auto_size, 0x40
 ## End subFloat64Sigs
 ## Begin _d_add
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_add::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.7 = $r0.3, 31   ## bblock 0, line 1950,  t40(I1),  t35,  31(SI32)
	c0    shru $r0.2 = $r0.5, 31   ## bblock 0, line 1951,  t5(I1),  t37,  31(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.7, $r0.2   ## bblock 0, line 1952,  t41(I1),  t40(I1),  t5(I1)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t20
;;								## 1
;;								## 2
	c0    brf $b0.0, L198?3   ## bblock 0, line 1952,  t41(I1)
;;								## 3
.call addFloat64Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = addFloat64Sigs   ## bblock 3, line 1952,  raddr(addFloat64Sigs)(P32),  t35,  t36,  t37,  t38,  t40(I1)
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t20
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 4, line 1952,  t21,  ?2.34?2auto_size(I32),  t20
;;								## 8
.trace 2
L198?3:
.call subFloat64Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = subFloat64Sigs   ## bblock 1, line 1952,  raddr(subFloat64Sigs)(P32),  t35,  t36,  t37,  t38,  t40(I1)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t20
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1952,  t21,  ?2.34?2auto_size(I32),  t20
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.34?2scratch.0, 0x0
.equ ?2.34?2ras_p, 0x10
.section .data
.section .text
.equ ?2.34?2auto_size, 0x20
 ## End _d_add
 ## Begin _d_sub
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_sub::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.7 = $r0.3, 31   ## bblock 0, line 1959,  t40(I1),  t35,  31(SI32)
	c0    shru $r0.2 = $r0.5, 31   ## bblock 0, line 1960,  t5(I1),  t37,  31(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.7, $r0.2   ## bblock 0, line 1961,  t41(I1),  t40(I1),  t5(I1)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t20
;;								## 1
;;								## 2
	c0    brf $b0.0, L199?3   ## bblock 0, line 1961,  t41(I1)
;;								## 3
.call subFloat64Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = subFloat64Sigs   ## bblock 3, line 1961,  raddr(subFloat64Sigs)(P32),  t35,  t36,  t37,  t38,  t40(I1)
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t20
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 4, line 1961,  t21,  ?2.35?2auto_size(I32),  t20
;;								## 8
.trace 2
L199?3:
.call addFloat64Sigs, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = addFloat64Sigs   ## bblock 1, line 1961,  raddr(addFloat64Sigs)(P32),  t35,  t36,  t37,  t38,  t40(I1)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t20
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 1961,  t21,  ?2.35?2auto_size(I32),  t20
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.35?2scratch.0, 0x0
.equ ?2.35?2ras_p, 0x10
.section .data
.section .text
.equ ?2.35?2auto_size, 0x20
 ## End _d_sub
 ## Begin _d_mul
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-96, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_mul::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x60)
	c0    and $r0.9 = $r0.3, 1048575   ## bblock 0, line 1972,  t2,  t501,  1048575(I32)
	c0    shru $r0.2 = $r0.3, 20   ## bblock 0, line 1973,  t4(I12),  t501,  20(SI32)
	c0    shru $r0.8 = $r0.5, 20   ## bblock 0, line 1977,  t12(I12),  t503,  20(SI32)
	c0    shru $r0.10 = $r0.3, 31   ## bblock 0, line 1974,  t17(I1),  t501,  31(SI32)
	c0    shru $r0.11 = $r0.5, 31   ## bblock 0, line 1978,  t16(I1),  t503,  31(SI32)
;;								## 0
	c0    and $r0.12 = $r0.5, 1048575   ## bblock 0, line 1976,  t10,  t503,  1048575(I32)
	c0    and $r0.2 = $r0.2, 2047   ## bblock 0, line 1973,  t19,  t4(I12),  2047(I32)
	c0    and $r0.8 = $r0.8, 2047   ## bblock 0, line 1977,  t13,  t12(I12),  2047(I32)
	c0    stw 0x50[$r0.1] = $l0.0  ## spill ## t486
	c0    mov $r0.13 = $r0.3   ## t501
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.2   ## bblock 0, line 1973, t487, t19
	c0    xor $r0.3 = $r0.10, $r0.11   ## bblock 0, line 1979,  t615,  t17(I1),  t16(I1)
	c0    cmpeq $b0.0 = $r0.2, 2047   ## bblock 0, line 1983,  t643(I1),  t19,  2047(SI32)
	c0    cmpeq $b0.1 = $r0.8, 2047   ## [spec] bblock 1, line 1995,  t644(I1),  t13,  2047(SI32)
	c0    cmpeq $b0.2 = $r0.2, $r0.0   ## [spec] bblock 2, line 2010,  t645(I1),  t19,  0(SI32)
;;								## 2
	c0    ldw.d $r0.10 = 0x1c[$r0.1]   ## [spec] bblock 4, line 2023, t85, t487
;;								## 3
	c0    stw 0x10[$r0.1] = $r0.8   ## bblock 0, line 1977, t487, t13
;;								## 4
	c0    ldw.d $r0.2 = 0x10[$r0.1]   ## [spec] bblock 3, line 2018, t72, t487
;;								## 5
	c0    ldw.d $r0.8 = 0x10[$r0.1]   ## [spec] bblock 4, line 2023, t84, t487
;;								## 6
	c0    stw 0x24[$r0.1] = $r0.4   ## bblock 0, line 1971, t487, t502
	c0    cmpeq $b0.3 = $r0.2, $r0.0   ## [spec] bblock 3, line 2018,  t646(I1),  t72,  0(SI32)
;;								## 7
	c0    add $r0.8 = $r0.8, -1024   ## [spec] bblock 4, line 2023,  t647,  t84,  -1024(SI32)
	c0    ldw.d $r0.11 = 0x24[$r0.1]   ## [spec] bblock 4, line 2041, t404, t487
;;								## 8
	c0    stw 0x20[$r0.1] = $r0.9   ## bblock 0, line 1972, t487, t2
	c0    add $r0.8 = $r0.8, $r0.10   ## [spec] bblock 4, line 2023,  t614,  t647,  t85
;;								## 9
	c0    ldw.d $r0.2 = 0x20[$r0.1]   ## [spec] bblock 4, line 2024, t87, t487
;;								## 10
	c0    stw 0x18[$r0.1] = $r0.6   ## bblock 0, line 1975, t487, t504
;;								## 11
	c0    or $r0.2 = $r0.2, 1048576   ## [spec] bblock 4, line 2024,  t412,  t87,  1048576(I32)
	c0    ldw.d $r0.10 = 0x18[$r0.1]   ## [spec] bblock 4, line 2029, t99, t487
;;								## 12
	c0    stw 0x14[$r0.1] = $r0.12   ## bblock 0, line 1976, t487, t10
	c0    br $b0.0, L200?3   ## bblock 0, line 1983,  t643(I1)
;;								## 13
	c0    ldw.d $r0.14 = 0x14[$r0.1]   ## [spec] bblock 4, line 2028, t104, t487
	c0    shl $r0.12 = $r0.10, 12   ## [spec] bblock 4, line 2031,  t316,  t99,  12(SI32)
	c0    shru $r0.15 = $r0.10, 20   ## [spec] bblock 4, line 2033,  t103(I12),  t99,  20(I32)
	c0    br $b0.1, L201?3   ## bblock 1, line 1995,  t644(I1)
;;								## 14
	c0    mpyllu $r0.16 = $r0.11, $r0.12   ## [spec] bblock 4, line 2054,  t157,  t404,  t316
	c0    mpylhu $r0.10 = $r0.12, $r0.11   ## [spec] bblock 4, line 2056,  t151,  t316,  t404
	c0    mpylhu $r0.13 = $r0.11, $r0.12   ## [spec] bblock 4, line 2055,  t144,  t404,  t316
	c0    mpyhhu $r0.17 = $r0.11, $r0.12   ## [spec] bblock 4, line 2057,  t147,  t404,  t316
	c0    br $b0.2, L202?3   ## bblock 2, line 2010,  t645(I1)
;;								## 15
L203?3:
	c0    shl $r0.14 = $r0.14, 12   ## [spec] bblock 4, line 2033,  t106,  t104,  12(SI32)
	c0    mpyllu $r0.19 = $r0.12, $r0.2   ## [spec] bblock 4, line 2137,  t344,  t316,  t412
	c0    mpylhu $r0.9 = $r0.2, $r0.12   ## [spec] bblock 4, line 2138,  t331,  t412,  t316
	c0    mpylhu $r0.18 = $r0.12, $r0.2   ## [spec] bblock 4, line 2139,  t338,  t316,  t412
	c0    mpyhhu $r0.20 = $r0.12, $r0.2   ## [spec] bblock 4, line 2140,  t334,  t316,  t412
	c0    br $b0.3, L204?3   ## bblock 3, line 2018,  t646(I1)
;;								## 16
L205?3:
	c0    stw 0x20[$r0.1] = $r0.2   ## bblock 4, line 2024, t487, t412
	c0    or $r0.14 = $r0.14, $r0.15   ## bblock 4, line 2033,  t248,  t106,  t103(I12)
	c0    add $r0.13 = $r0.10, $r0.13   ## bblock 4, line 2058,  t155,  t151,  t144
;;								## 17
	c0    mpyllu $r0.24 = $r0.11, $r0.14   ## bblock 4, line 2075,  t208,  t404,  t248
	c0    mpylhu $r0.22 = $r0.14, $r0.11   ## bblock 4, line 2077,  t202,  t248,  t404
	c0    shru $r0.21 = $r0.13, 16   ## bblock 4, line 2060,  t149(I16),  t155,  16(SI32)
	c0    cmpltu $r0.10 = $r0.13, $r0.10   ## bblock 4, line 2060,  t152,  t155,  t151
	c0    shl $r0.15 = $r0.13, 16   ## bblock 4, line 2061,  t162,  t155,  16(SI32)
	c0    mpylhu $r0.23 = $r0.11, $r0.14   ## bblock 4, line 2076,  t195,  t404,  t248
	c0    mpyhhu $r0.25 = $r0.11, $r0.14   ## bblock 4, line 2078,  t198,  t404,  t248
	c0    add $r0.9 = $r0.9, $r0.18   ## bblock 4, line 2141,  t342,  t331,  t338
;;								## 18
	c0    mpyllu $r0.27 = $r0.14, $r0.2   ## bblock 4, line 2106,  t276,  t248,  t412
	c0    shl $r0.10 = $r0.10, 16   ## bblock 4, line 2060,  t153,  t152,  16(SI32)
	c0    add $r0.16 = $r0.16, $r0.15   ## bblock 4, line 2062,  t417,  t157,  t162
	c0    add $r0.21 = $r0.21, $r0.17   ## bblock 4, line 2063,  t648,  t149(I16),  t147
	c0    mpylhu $r0.13 = $r0.2, $r0.14   ## bblock 4, line 2107,  t263,  t412,  t248
	c0    mpylhu $r0.26 = $r0.14, $r0.2   ## bblock 4, line 2108,  t270,  t248,  t412
	c0    cmpltu $r0.18 = $r0.9, $r0.18   ## bblock 4, line 2143,  t339,  t342,  t338
	c0    shl $r0.28 = $r0.9, 16   ## bblock 4, line 2144,  t349,  t342,  16(SI32)
;;								## 19
	c0    cmpltu $r0.15 = $r0.16, $r0.15   ## bblock 4, line 2063,  t163,  t417,  t162
	c0    stw 0x4c[$r0.1] = $r0.16   ## bblock 4, line 2064, t487, t417
	c0    cmpne $r0.29 = $r0.16, $r0.0   ## bblock 4, line 2186,  t418,  t417,  0(I32)
	c0    add $r0.23 = $r0.22, $r0.23   ## bblock 4, line 2079,  t206,  t202,  t195
	c0    mpyhhu $r0.17 = $r0.14, $r0.2   ## bblock 4, line 2109,  t266,  t248,  t412
	c0    shru $r0.9 = $r0.9, 16   ## bblock 4, line 2143,  t336(I16),  t342,  16(SI32)
	c0    shl $r0.18 = $r0.18, 16   ## bblock 4, line 2143,  t340,  t339,  16(SI32)
	c0    add $r0.19 = $r0.19, $r0.28   ## bblock 4, line 2145,  t367,  t344,  t349
;;								## 20
	c0    stw 0x48[$r0.1] = $r0.16   ## bblock 4, line 2170, t487, t417
	c0    add $r0.10 = $r0.10, $r0.15   ## bblock 4, line 2063,  t649,  t153,  t163
	c0    shru $r0.31 = $r0.23, 16   ## bblock 4, line 2081,  t200(I16),  t206,  16(SI32)
	c0    cmpltu $r0.22 = $r0.23, $r0.22   ## bblock 4, line 2081,  t203,  t206,  t202
	c0    shl $r0.30 = $r0.23, 16   ## bblock 4, line 2082,  t213,  t206,  16(SI32)
	c0    add $r0.13 = $r0.13, $r0.26   ## bblock 4, line 2110,  t274,  t263,  t270
	c0    cmpltu $r0.28 = $r0.19, $r0.28   ## bblock 4, line 2146,  t350,  t367,  t349
	c0    add $r0.9 = $r0.9, $r0.20   ## bblock 4, line 2146,  t654,  t336(I16),  t334
;;								## 21
	c0    add $r0.21 = $r0.21, $r0.10   ## bblock 4, line 2063,  t225,  t648,  t649
	c0    shl $r0.22 = $r0.22, 16   ## bblock 4, line 2081,  t204,  t203,  16(SI32)
	c0    add $r0.24 = $r0.24, $r0.30   ## bblock 4, line 2083,  t231,  t208,  t213
	c0    add $r0.31 = $r0.31, $r0.25   ## bblock 4, line 2084,  t650,  t200(I16),  t198
	c0    shru $r0.16 = $r0.13, 16   ## bblock 4, line 2112,  t268(I16),  t274,  16(SI32)
	c0    cmpltu $r0.26 = $r0.13, $r0.26   ## bblock 4, line 2112,  t271,  t274,  t270
	c0    shl $r0.15 = $r0.13, 16   ## bblock 4, line 2113,  t281,  t274,  16(SI32)
	c0    add $r0.18 = $r0.18, $r0.28   ## bblock 4, line 2146,  t655,  t340,  t350
;;								## 22
	c0    cmpltu $r0.30 = $r0.24, $r0.30   ## bblock 4, line 2084,  t214,  t231,  t213
	c0    add $r0.21 = $r0.21, $r0.24   ## bblock 4, line 2094,  t361,  t225,  t231
	c0    shl $r0.26 = $r0.26, 16   ## bblock 4, line 2112,  t272,  t271,  16(SI32)
	c0    add $r0.27 = $r0.27, $r0.15   ## bblock 4, line 2114,  t299,  t276,  t281
	c0    add $r0.16 = $r0.16, $r0.17   ## bblock 4, line 2115,  t652,  t268(I16),  t266
	c0    add $r0.9 = $r0.9, $r0.18   ## bblock 4, line 2146,  t370,  t654,  t655
	c0    stw 0x34[$r0.1] = $r0.19   ## bblock 4, line 2147, t487, t367
;;								## 23
	c0    stw 0x18[$r0.1] = $r0.12   ## bblock 4, line 2031, t487, t316
	c0    cmpltu $r0.24 = $r0.21, $r0.24   ## bblock 4, line 2096,  t232,  t361,  t231
	c0    add $r0.22 = $r0.22, $r0.30   ## bblock 4, line 2084,  t651,  t204,  t214
	c0    cmpltu $r0.15 = $r0.27, $r0.15   ## bblock 4, line 2115,  t282,  t299,  t281
	c0    add $r0.10 = $r0.19, $r0.21   ## bblock 4, line 2156,  t416,  t367,  t361
;;								## 24
	c0    add $r0.31 = $r0.31, $r0.22   ## bblock 4, line 2084,  t234,  t650,  t651
	c0    add $r0.26 = $r0.26, $r0.15   ## bblock 4, line 2115,  t653,  t272,  t282
	c0    stw 0x44[$r0.1] = $r0.10   ## bblock 4, line 2157, t487, t416
	c0    cmpltu $r0.19 = $r0.10, $r0.19   ## bblock 4, line 2158,  t368,  t416,  t367
	c0    or $r0.29 = $r0.10, $r0.29   ## bblock 4, line 2186,  t419,  t416,  t418
;;								## 25
	c0    add $r0.31 = $r0.31, $r0.24   ## bblock 4, line 2096,  t293,  t234,  t232
	c0    add $r0.16 = $r0.16, $r0.26   ## bblock 4, line 2115,  t302,  t652,  t653
	c0    stw 0x40[$r0.1] = $r0.29   ## bblock 4, line 2186, t487, t419
	c0    add $r0.9 = $r0.9, $r0.19   ## bblock 4, line 2158,  t378,  t370,  t368
	c0    cmpne $r0.10 = $r0.29, $r0.0   ## [spec] bblock 7, line 2227,  t469,  t419,  0(I32)
;;								## 26
	c0    add $r0.31 = $r0.27, $r0.31   ## bblock 4, line 2125,  t384,  t299,  t293
	c0    stw 0x2c[$r0.1] = $r0.9   ## bblock 4, line 2158, t487, t378
;;								## 27
	c0    stw 0x14[$r0.1] = $r0.14   ## bblock 4, line 2032, t487, t248
	c0    cmpltu $r0.27 = $r0.31, $r0.27   ## bblock 4, line 2127,  t300,  t384,  t299
	c0    add $r0.9 = $r0.31, $r0.9   ## bblock 4, line 2166,  t410,  t384,  t378
;;								## 28
	c0    add $r0.16 = $r0.16, $r0.27   ## bblock 4, line 2127,  t387,  t302,  t300
	c0    cmpltu $r0.31 = $r0.9, $r0.31   ## bblock 4, line 2168,  t385,  t410,  t384
	c0    add $r0.11 = $r0.11, $r0.9   ## bblock 4, line 2182,  t409,  t404,  t410
	c0    stw 0x38[$r0.1] = $r0.9   ## bblock 4, line 2167, t487, t410
;;								## 29
	c0    add $r0.16 = $r0.16, $r0.31   ## bblock 4, line 2168,  t413,  t387,  t385
	c0    stw 0x3c[$r0.1] = $r0.11   ## bblock 4, line 2183, t487, t409
	c0    cmpltu $r0.9 = $r0.11, $r0.9   ## bblock 4, line 2184,  t411,  t409,  t410
	c0    shl $r0.13 = $r0.11, 31   ## [spec] bblock 7, line 2205,  t508,  t409,  31(I32)
	c0    shru $r0.12 = $r0.11, 1   ## [spec] bblock 7, line 2206,  t628(I31),  t409,  1(SI32)
;;								## 30
	c0    add $r0.2 = $r0.2, $r0.9   ## bblock 4, line 2184,  t656,  t412,  t411
	c0    stw 0x30[$r0.1] = $r0.16   ## bblock 4, line 2168, t487, t413
	c0    or $r0.13 = $r0.13, $r0.10   ## [spec] bblock 7, line 2227,  t618,  t508,  t469
;;								## 31
	c0    add $r0.2 = $r0.2, $r0.16   ## bblock 4, line 2184,  t420,  t656,  t413
;;								## 32
	c0    stw 0x28[$r0.1] = $r0.2   ## bblock 4, line 2184, t487, t420
	c0    cmpgeu $b0.0 = $r0.2, 2097152   ## bblock 4, line 2187,  t657(I1),  t420,  2097152(SI32)
	c0    shl $r0.10 = $r0.2, 31   ## [spec] bblock 7, line 2206,  t640,  t420,  31(I32)
	c0    shru $r0.9 = $r0.2, 1   ## [spec] bblock 7, line 2207,  t510(I31),  t420,  1(SI32)
;;								## 33
	c0    or $r0.12 = $r0.12, $r0.10   ## [spec] bblock 7, line 2206,  t509,  t628(I31),  t640
;;								## 34
	c0    brf $b0.0, L206?3   ## bblock 4, line 2187,  t657(I1)
;;								## 35
	c0    stw 0x28[$r0.1] = $r0.9   ## bblock 7, line 2231, t487, t510(I31)
	c0    add $r0.4 = $r0.8, 1   ## bblock 7, line 2233,  t614,  t614,  1(SI32)
;;								## 36
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 5, line 2235, t483, t487
;;								## 37
	c0    stw 0x3c[$r0.1] = $r0.12   ## bblock 7, line 2230, t487, t509
;;								## 38
	c0    ldw $r0.6 = 0x3c[$r0.1]   ## bblock 5, line 2235, t484, t487
;;								## 39
	c0    stw 0x40[$r0.1] = $r0.13   ## bblock 7, line 2229, t487, t618
;;								## 40
L207?3:
	c0    ldw $r0.7 = 0x40[$r0.1]   ## bblock 5, line 2235, t485, t487
;;								## 41
.call roundAndPackFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = roundAndPackFloat64   ## bblock 5, line 2235,  raddr(roundAndPackFloat64)(P32),  t615,  t614,  t483,  t484,  t485
;;								## 42
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 43
;;								## 44
;;								## 45
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 6, line 2235,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 46
.trace 2
L206?3:
	c0    ldw $r0.5 = 0x28[$r0.1]   ## bblock 5, line 2235, t483, t487
	c0    mov $r0.4 = $r0.8   ## t614
;;								## 0
	c0    ldw $r0.6 = 0x3c[$r0.1]   ## bblock 5, line 2235, t484, t487
;;								## 1
	c0    goto L207?3 ## goto
;;								## 2
.trace 6
L204?3:
	c0    ldw $r0.2 = 0x18[$r0.1]   ## bblock 19, line 2019, t73, t487
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 0
	c0    ldw $r0.7 = 0x14[$r0.1]   ## bblock 19, line 2019, t74, t487
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.7   ## bblock 19, line 2019,  t75,  t73,  t74
;;								## 3
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 19, line 2019,  t658(I1),  t75,  0(SI32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L208?3   ## bblock 19, line 2019,  t658(I1)
;;								## 6
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 21, line 2020,  raddr(packFloat64)(P32),  t615,  0(SI32),  0(I32),  0(I32)
;;								## 7
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 22, line 2020,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 11
.trace 10
L208?3:
	c0    add $r0.6 = $r0.1, 0x14   ## bblock 20, line 2021,  t82,  t487,  offset(bSig0?1.314)=0x14(P32)
	c0    add $r0.7 = $r0.1, 0x18   ## bblock 20, line 2021,  t83,  t487,  offset(bSig1?1.314)=0x18(P32)
	c0    add $r0.5 = $r0.1, 0x10   ## bblock 20, line 2021,  t81,  t487,  offset(bExp?1.314)=0x10(P32)
	c0    stw 0x54[$r0.1] = $r0.3  ## spill ## t615
;;								## 0
	c0    ldw $r0.3 = 0x14[$r0.1]   ## bblock 20, line 2021, t79, t487
;;								## 1
	c0    ldw $r0.4 = 0x18[$r0.1]   ## bblock 20, line 2021, t80, t487
;;								## 2
.call normalizeFloat64Subnormal, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret()
	c0    call $l0.0 = normalizeFloat64Subnormal   ## bblock 20, line 2021,  raddr(normalizeFloat64Subnormal)(P32),  t79,  t80,  t81,  t82,  t83
;;								## 3
	c0    ldw $r0.4 = 0x18[$r0.1]   ## bblock 4, line 2029, t99, t487
;;								## 4
	c0    ldw $r0.11 = 0x24[$r0.1]   ## bblock 4, line 2041, t404, t487
;;								## 5
	c0    ldw $r0.5 = 0x10[$r0.1]   ## bblock 4, line 2023, t84, t487
	c0    shl $r0.12 = $r0.4, 12   ## bblock 4, line 2031,  t316,  t99,  12(SI32)
	c0    shru $r0.15 = $r0.4, 20   ## bblock 4, line 2033,  t103(I12),  t99,  20(I32)
;;								## 6
	c0    ldw $r0.4 = 0x1c[$r0.1]   ## bblock 4, line 2023, t85, t487
	c0    mpyllu $r0.16 = $r0.11, $r0.12   ## bblock 4, line 2054,  t157,  t404,  t316
	c0    mpylhu $r0.10 = $r0.12, $r0.11   ## bblock 4, line 2056,  t151,  t316,  t404
	c0    mpylhu $r0.13 = $r0.11, $r0.12   ## bblock 4, line 2055,  t144,  t404,  t316
	c0    mpyhhu $r0.17 = $r0.11, $r0.12   ## bblock 4, line 2057,  t147,  t404,  t316
;;								## 7
	c0    add $r0.5 = $r0.5, -1024   ## bblock 4, line 2023,  t647,  t84,  -1024(SI32)
	c0    ldw $r0.6 = 0x20[$r0.1]   ## bblock 4, line 2024, t87, t487
;;								## 8
	c0    add $r0.8 = $r0.5, $r0.4   ## bblock 4, line 2023,  t614,  t647,  t85
	c0    ldw $r0.4 = 0x14[$r0.1]   ## bblock 4, line 2028, t104, t487
;;								## 9
	c0    or $r0.2 = $r0.6, 1048576   ## bblock 4, line 2024,  t412,  t87,  1048576(I32)
	c0    ldw $r0.3 = 0x54[$r0.1]  ## restore ## t615
;;								## 10
	c0    shl $r0.14 = $r0.4, 12   ## bblock 4, line 2033,  t106,  t104,  12(SI32)
	c0    mpyllu $r0.19 = $r0.12, $r0.2   ## [spec] bblock 4, line 2137,  t344,  t316,  t412
	c0    mpylhu $r0.9 = $r0.2, $r0.12   ## [spec] bblock 4, line 2138,  t331,  t412,  t316
	c0    mpylhu $r0.18 = $r0.12, $r0.2   ## [spec] bblock 4, line 2139,  t338,  t316,  t412
	c0    mpyhhu $r0.20 = $r0.12, $r0.2   ## [spec] bblock 4, line 2140,  t334,  t316,  t412
	c0    goto L205?3 ## goto
;;								## 11
.trace 5
L202?3:
	c0    or $r0.4 = $r0.4, $r0.9   ## bblock 23, line 2011,  t63,  t502,  t2
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## bblock 23, line 2011,  t659(I1),  t63,  0(SI32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 1
;;								## 2
	c0    brf $b0.0, L209?3   ## bblock 23, line 2011,  t659(I1)
;;								## 3
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 25, line 2012,  raddr(packFloat64)(P32),  t615,  0(SI32),  0(I32),  0(I32)
;;								## 4
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 26, line 2012,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 8
.trace 9
L209?3:
	c0    add $r0.6 = $r0.1, 0x20   ## bblock 24, line 2013,  t70,  t487,  offset(aSig0?1.314)=0x20(P32)
	c0    add $r0.7 = $r0.1, 0x24   ## bblock 24, line 2013,  t71,  t487,  offset(aSig1?1.314)=0x24(P32)
	c0    add $r0.5 = $r0.1, 0x1c   ## bblock 24, line 2013,  t69,  t487,  offset(aExp?1.314)=0x1c(P32)
	c0    stw 0x54[$r0.1] = $r0.3  ## spill ## t615
;;								## 0
	c0    ldw $r0.3 = 0x20[$r0.1]   ## bblock 24, line 2013, t67, t487
;;								## 1
	c0    ldw $r0.4 = 0x24[$r0.1]   ## bblock 24, line 2013, t68, t487
;;								## 2
.call normalizeFloat64Subnormal, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret()
	c0    call $l0.0 = normalizeFloat64Subnormal   ## bblock 24, line 2013,  raddr(normalizeFloat64Subnormal)(P32),  t67,  t68,  t69,  t70,  t71
;;								## 3
	c0    ldw.d $r0.4 = 0x10[$r0.1]   ## [spec] bblock 4, line 2023, t84, t487
;;								## 4
	c0    ldw.d $r0.10 = 0x1c[$r0.1]   ## [spec] bblock 4, line 2023, t85, t487
;;								## 5
	c0    ldw $r0.5 = 0x10[$r0.1]   ## bblock 3, line 2018, t72, t487
	c0    add $r0.4 = $r0.4, -1024   ## [spec] bblock 4, line 2023,  t647,  t84,  -1024(SI32)
;;								## 6
	c0    add $r0.8 = $r0.4, $r0.10   ## [spec] bblock 4, line 2023,  t614,  t647,  t85
	c0    ldw.d $r0.4 = 0x20[$r0.1]   ## [spec] bblock 4, line 2024, t87, t487
;;								## 7
	c0    cmpeq $b0.3 = $r0.5, $r0.0   ## bblock 3, line 2018,  t646(I1),  t72,  0(SI32)
	c0    ldw.d $r0.10 = 0x18[$r0.1]   ## [spec] bblock 4, line 2029, t99, t487
;;								## 8
	c0    or $r0.2 = $r0.4, 1048576   ## [spec] bblock 4, line 2024,  t412,  t87,  1048576(I32)
	c0    ldw.d $r0.14 = 0x14[$r0.1]   ## [spec] bblock 4, line 2028, t104, t487
;;								## 9
	c0    shl $r0.12 = $r0.10, 12   ## [spec] bblock 4, line 2031,  t316,  t99,  12(SI32)
	c0    shru $r0.15 = $r0.10, 20   ## [spec] bblock 4, line 2033,  t103(I12),  t99,  20(I32)
	c0    ldw.d $r0.11 = 0x24[$r0.1]   ## [spec] bblock 4, line 2041, t404, t487
;;								## 10
	c0    ldw $r0.3 = 0x54[$r0.1]  ## restore ## t615
;;								## 11
	c0    mpyllu $r0.16 = $r0.11, $r0.12   ## [spec] bblock 4, line 2054,  t157,  t404,  t316
	c0    mpylhu $r0.10 = $r0.12, $r0.11   ## [spec] bblock 4, line 2056,  t151,  t316,  t404
	c0    mpylhu $r0.13 = $r0.11, $r0.12   ## [spec] bblock 4, line 2055,  t144,  t404,  t316
	c0    mpyhhu $r0.17 = $r0.11, $r0.12   ## [spec] bblock 4, line 2057,  t147,  t404,  t316
	c0    goto L203?3 ## goto
;;								## 12
.trace 4
L201?3:
	c0    ldw $r0.2 = 0x18[$r0.1]   ## bblock 27, line 1996, t43, t487
	c0    mov $r0.3 = $r0.13   ## t501
	c0    mov $r0.7 = $r0.3   ## t615
;;								## 0
	c0    ldw $r0.8 = 0x14[$r0.1]   ## bblock 27, line 1996, t44, t487
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.8   ## bblock 27, line 1996,  t660,  t43,  t44
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 27, line 1996,  t661,  t660,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L210?3   ## bblock 27, line 1996,  t661
;;								## 6
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 33, line 1997,  raddr(propagateFloat64NaN)(P32),  t501,  t502,  t503,  t504
;;								## 7
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 34, line 1997,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 11
.trace 8
L210?3:
	c0    ldw $r0.2 = 0x24[$r0.1]   ## bblock 28, line 1998, t51, t487
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    ldw $r0.4 = 0x1c[$r0.1]   ## bblock 28, line 1998, t53, t487
;;								## 1
	c0    ldw $r0.5 = 0x20[$r0.1]   ## bblock 28, line 1998, t52, t487
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.4   ## bblock 28, line 1998,  t662,  t51,  t53
;;								## 3
	c0    or $r0.2 = $r0.2, $r0.5   ## bblock 28, line 1998,  t54,  t662,  t52
;;								## 4
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 28, line 1998,  t663(I1),  t54,  0(SI32)
;;								## 5
;;								## 6
	c0    brf $b0.0, L212?3   ## bblock 28, line 1998,  t663(I1)
	      ## goto
;;
	c0    goto L211?3 ## goto
;;								## 7
.trace 12
L212?3:
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 29, line 2005,  raddr(packFloat64)(P32),  t615,  2047(SI32),  0(I32),  0(I32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.7   ## t615
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 30, line 2005,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 4
.trace 3
L200?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 35, line 1985, t23, t487
	c0    mov $r0.3 = $r0.13   ## t501
	c0    mov $r0.7 = $r0.3   ## t615
;;								## 0
	c0    ldw $r0.8 = 0x18[$r0.1]   ## bblock 35, line 1985, t25, t487
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 2047   ## bblock 35, line 1985,  t24,  t23,  2047(SI32)
	c0    ldw $r0.9 = 0x14[$r0.1]   ## bblock 35, line 1985, t26, t487
;;								## 2
	c0    ldw $r0.10 = 0x24[$r0.1]   ## bblock 35, line 1984, t20, t487
;;								## 3
	c0    ldw $r0.9 = 0x20[$r0.1]   ## bblock 35, line 1984, t21, t487
	c0    or $r0.8 = $r0.8, $r0.9   ## bblock 35, line 1985,  t27,  t25,  t26
;;								## 4
	c0    andl $r0.2 = $r0.2, $r0.8   ## bblock 35, line 1985,  t28,  t24,  t27
;;								## 5
	c0    or $r0.10 = $r0.10, $r0.9   ## bblock 35, line 1984,  t22,  t20,  t21
;;								## 6
	c0    orl $b0.0 = $r0.10, $r0.2   ## bblock 35, line 1985,  t665(I1),  t22,  t28
;;								## 7
;;								## 8
	c0    brf $b0.0, L213?3   ## bblock 35, line 1985,  t665(I1)
;;								## 9
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 39, line 1986,  raddr(propagateFloat64NaN)(P32),  t501,  t502,  t503,  t504
;;								## 10
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 11
;;								## 12
;;								## 13
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 40, line 1986,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 14
.trace 7
L213?3:
	c0    ldw $r0.2 = 0x18[$r0.1]   ## bblock 36, line 1988, t35, t487
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    ldw $r0.5 = 0x10[$r0.1]   ## bblock 36, line 1988, t37, t487
;;								## 1
	c0    ldw $r0.6 = 0x14[$r0.1]   ## bblock 36, line 1988, t36, t487
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.5   ## bblock 36, line 1988,  t666,  t35,  t37
;;								## 3
	c0    or $r0.2 = $r0.2, $r0.6   ## bblock 36, line 1988,  t38,  t666,  t36
;;								## 4
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 36, line 1988,  t667(I1),  t38,  0(SI32)
;;								## 5
;;								## 6
	c0    brf $b0.0, L214?3   ## bblock 36, line 1988,  t667(I1)
;;								## 7
L211?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 31, line 2000,  raddr(float_raise)(P32),  16(SI32)
;;								## 8
	c0    mov $r0.4 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 9
;;								## 10
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 32, line 2003,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 12
.trace 11
L214?3:
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 37, line 1990,  raddr(packFloat64)(P32),  t615,  2047(SI32),  0(I32),  0(I32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = $r0.7   ## t615
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
	c0    ldw $l0.0 = 0x50[$r0.1]  ## restore ## t486
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x60), $l0.0   ## bblock 38, line 1990,  t487,  ?2.36?2auto_size(I32),  t486
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.36?2scratch.0, 0x0
.equ _?1PACKET.412, 0x10
.equ _?1PACKET.416, 0x14
.equ _?1PACKET.417, 0x18
.equ _?1PACKET.411, 0x1c
.equ _?1PACKET.414, 0x20
.equ _?1PACKET.415, 0x24
.equ _?1PACKET.418, 0x28
.equ _?1PACKET.440, 0x2c
.equ _?1PACKET.436, 0x30
.equ _?1PACKET.441, 0x34
.equ _?1PACKET.437, 0x38
.equ _?1PACKET.419, 0x3c
.equ _?1PACKET.420, 0x40
.equ _?1PACKET.438, 0x44
.equ _?1PACKET.421, 0x48
.equ _?1PACKET.439, 0x4c
.equ ?2.36?2ras_p, 0x50
.equ ?2.36?2spill_p, 0x54
.section .data
.section .text
.equ ?2.36?2auto_size, 0x60
 ## End _d_mul
 ## Begin _d_div
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-128, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_div::
.trace 5
	c0    add $r0.1 = $r0.1, (-0x80)
	c0    and $r0.13 = $r0.3, 1048575   ## bblock 0, line 2247,  t2,  t694,  1048575(I32)
	c0    shru $r0.2 = $r0.3, 20   ## bblock 0, line 2248,  t4(I12),  t694,  20(SI32)
	c0    shru $r0.12 = $r0.5, 20   ## bblock 0, line 2252,  t12(I12),  t696,  20(SI32)
	c0    shru $r0.14 = $r0.3, 31   ## bblock 0, line 2249,  t17(I1),  t694,  31(SI32)
	c0    shru $r0.15 = $r0.5, 31   ## bblock 0, line 2253,  t16(I1),  t696,  31(SI32)
;;								## 0
	c0    and $r0.16 = $r0.5, 1048575   ## bblock 0, line 2251,  t10,  t696,  1048575(I32)
	c0    and $r0.2 = $r0.2, 2047   ## bblock 0, line 2248,  t19,  t4(I12),  2047(I32)
	c0    and $r0.12 = $r0.12, 2047   ## bblock 0, line 2252,  t13,  t12(I12),  2047(I32)
	c0    xor $r0.18 = $r0.14, $r0.15   ## bblock 0, line 2254,  t860,  t17(I1),  t16(I1)
	c0    stw 0x74[$r0.1] = $l0.0  ## spill ## t679
;;								## 1
	c0    cmpeq $b0.0 = $r0.2, 2047   ## bblock 0, line 2258,  t1039(I1),  t19,  2047(SI32)
	c0    cmpeq $b0.1 = $r0.12, 2047   ## [spec] bblock 1, line 2271,  t1040(I1),  t13,  2047(SI32)
	c0    cmpeq $b0.2 = $r0.12, $r0.0   ## [spec] bblock 2, line 2279,  t1041(I1),  t13,  0(SI32)
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.2   ## bblock 0, line 2248, t680, t19
;;								## 3
	c0    ldw.d $r0.14 = 0x18[$r0.1]   ## [spec] bblock 3, line 2296, t70, t680
;;								## 4
	c0    ldw.d $r0.15 = 0x18[$r0.1]   ## [spec] bblock 4, line 2301, t83, t680
;;								## 5
	c0    stw 0x24[$r0.1] = $r0.12   ## bblock 0, line 2252, t680, t13
	c0    cmpeq $b0.3 = $r0.14, $r0.0   ## [spec] bblock 3, line 2296,  t1042(I1),  t70,  0(SI32)
;;								## 6
	c0    ldw.d $r0.12 = 0x24[$r0.1]   ## [spec] bblock 4, line 2301, t82, t680
	c0    add $r0.15 = $r0.15, 1021   ## [spec] bblock 4, line 2301,  t1043,  t83,  1021(SI32)
;;								## 7
	c0    stw 0x10[$r0.1] = $r0.4   ## bblock 0, line 2246, t680, t695
;;								## 8
	c0    sub $r0.15 = $r0.15, $r0.12   ## [spec] bblock 4, line 2301,  t859,  t1043,  t82
	c0    ldw.d $r0.14 = 0x10[$r0.1]   ## [spec] bblock 4, line 2306, t96, t680
;;								## 9
	c0    stw 0x14[$r0.1] = $r0.13   ## bblock 0, line 2247, t680, t2
;;								## 10
	c0    ldw.d $r0.12 = 0x14[$r0.1]   ## [spec] bblock 4, line 2305, t87, t680
	c0    shl $r0.18 = $r0.14, 11   ## [spec] bblock 4, line 2308,  t136,  t96,  11(SI32)
	c0    shru $r0.17 = $r0.14, 21   ## [spec] bblock 4, line 2310,  t100(I11),  t96,  21(I32)
;;								## 11
	c0    stw 0x20[$r0.1] = $r0.6   ## bblock 0, line 2250, t680, t697
	c0    shru $r0.14 = $r0.18, 1   ## [spec] bblock 29, line 2336,  t883(I31),  t136,  1(I32)
;;								## 12
	c0    or $r0.12 = $r0.12, 1048576   ## [spec] bblock 4, line 2305,  t101,  t87,  1048576(I32)
	c0    ldw.d $r0.19 = 0x20[$r0.1]   ## [spec] bblock 4, line 2316, t118, t680
;;								## 13
	c0    stw 0x1c[$r0.1] = $r0.16   ## bblock 0, line 2251, t680, t10
	c0    shl $r0.12 = $r0.12, 11   ## [spec] bblock 4, line 2310,  t103,  t101,  11(SI32)
	c0    br $b0.0, L215?3   ## bblock 0, line 2258,  t1039(I1)
;;								## 14
	c0    or $r0.12 = $r0.12, $r0.17   ## [spec] bblock 4, line 2310,  t133,  t103,  t100(I11)
	c0    ldw.d $r0.20 = 0x1c[$r0.1]   ## [spec] bblock 4, line 2315, t109, t680
	c0    shl $r0.22 = $r0.19, 11   ## [spec] bblock 4, line 2318,  t135,  t118,  11(SI32)
	c0    shru $r0.21 = $r0.19, 21   ## [spec] bblock 4, line 2320,  t122(I11),  t118,  21(I32)
	c0    br $b0.1, L216?3   ## bblock 1, line 2271,  t1040(I1)
;;								## 15
	c0    cmpleu $r0.17 = $r0.22, $r0.18   ## [spec] bblock 4, line 2322,  t137,  t135,  t136
	c0    shru $r0.19 = $r0.12, 1   ## [spec] bblock 29, line 2337,  t843(I31),  t133,  1(I32)
	c0    shl $r0.23 = $r0.12, 31   ## [spec] bblock 29, line 2336,  t885,  t133,  31(I32)
	c0    br $b0.2, L217?3   ## bblock 2, line 2279,  t1041(I1)
;;								## 16
L218?3:
	c0    or $r0.20 = $r0.20, 1048576   ## [spec] bblock 4, line 2315,  t123,  t109,  1048576(I32)
	c0    or $r0.14 = $r0.14, $r0.23   ## [spec] bblock 29, line 2336,  t842,  t883(I31),  t885
	c0    br $b0.3, L219?3   ## bblock 3, line 2296,  t1042(I1)
;;								## 17
L220?3:
	c0    stw 0x14[$r0.1] = $r0.12   ## bblock 4, line 2309, t680, t133
	c0    shl $r0.20 = $r0.20, 11   ## bblock 4, line 2320,  t125,  t123,  11(SI32)
;;								## 18
	c0    stw 0x10[$r0.1] = $r0.18   ## bblock 4, line 2308, t680, t136
	c0    or $r0.20 = $r0.20, $r0.21   ## bblock 4, line 2320,  t132,  t125,  t122(I11)
;;								## 19
	c0    stw 0x1c[$r0.1] = $r0.20   ## bblock 4, line 2319, t680, t132
	c0    cmpltu $r0.13 = $r0.20, $r0.12   ## bblock 4, line 2322,  t131,  t132,  t133
	c0    cmpeq $r0.2 = $r0.20, $r0.12   ## bblock 4, line 2322,  t134,  t132,  t133
;;								## 20
	c0    andl $r0.2 = $r0.2, $r0.17   ## bblock 4, line 2322,  t138,  t134,  t137
	c0    ldw.d $r0.5 = 0x1c[$r0.1]   ## [spec] bblock 5, line 2348, t175, t680
;;								## 21
	c0    stw 0x20[$r0.1] = $r0.22   ## bblock 4, line 2318, t680, t135
	c0    orl $b0.0 = $r0.13, $r0.2   ## bblock 4, line 2322,  t1045(I1),  t131,  t138
;;								## 22
;;								## 23
	c0    brf $b0.0, L221?3   ## bblock 4, line 2322,  t1045(I1)
;;								## 24
	c0    stw 0x14[$r0.1] = $r0.19   ## bblock 29, line 2344, t680, t843(I31)
;;								## 25
	c0    add $r0.19 = $r0.15, 1   ## bblock 29, line 2346,  t859,  t859,  1(SI32)
	c0    ldw $r0.3 = 0x14[$r0.1]   ## bblock 5, line 2348, t173, t680
;;								## 26
	c0    stw 0x7c[$r0.1] = $r0.19  ## spill ## t859
;;								## 27
	c0    stw 0x10[$r0.1] = $r0.14   ## bblock 29, line 2343, t680, t842
;;								## 28
L222?3:
	c0    ldw $r0.4 = 0x10[$r0.1]   ## bblock 5, line 2348, t174, t680
;;								## 29
.call estimateDiv64To32, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = estimateDiv64To32   ## bblock 5, line 2348,  raddr(estimateDiv64To32)(P32),  t173,  t174,  t175
;;								## 30
	c0    mov $r0.9 = $r0.3   ## bblock 6, line 2348,  t936,  t172
	c0    ldw $r0.2 = 0x20[$r0.1]   ## bblock 6, line 2354, t358, t680
	c0    add $r0.5 = $r0.1, 0x28   ## bblock 6, line 2425,  t389,  t680,  offset(rem0?1.343)=0x28(P32)
	c0    add $r0.6 = $r0.1, 0x2c   ## bblock 6, line 2426,  t387,  t680,  offset(rem1?1.343)=0x2c(P32)
	c0    add $r0.7 = $r0.1, 0x30   ## bblock 6, line 2427,  t385,  t680,  offset(rem2?1.343)=0x30(P32)
	c0    mov $r0.11 = $r0.0   ## bblock 6, line 0,  t967,  0(I32)
	c0    add $r0.8 = $r0.3, (~0x0)   ## bblock 6, line 0,  t1020,  t172,  (~0x0)(I32)
	c0    mov $r0.10 = (~0x0)   ## bblock 6, line 0,  t1021,  (~0x0)(I32)
;;								## 31
	c0    ldw $r0.4 = 0x1c[$r0.1]   ## bblock 6, line 2353, t364, t680
	c0    mov $r0.20 = $r0.3   ## t172
;;								## 32
	c0    mpyllu $r0.14 = $r0.2, $r0.3   ## bblock 6, line 2365,  t221,  t358,  t172
	c0    mpylhu $r0.12 = $r0.3, $r0.2   ## bblock 6, line 2367,  t215,  t172,  t358
	c0    mpylhu $r0.13 = $r0.2, $r0.3   ## bblock 6, line 2366,  t208,  t358,  t172
	c0    mpyhhu $r0.15 = $r0.2, $r0.3   ## bblock 6, line 2368,  t211,  t358,  t172
	c0    ldw $r0.16 = 0x10[$r0.1]   ## bblock 6, line 2415, t321, t680
;;								## 33
	c0    mpyllu $r0.19 = $r0.3, $r0.4   ## bblock 6, line 2386,  t272,  t172,  t364
	c0    mpylhu $r0.17 = $r0.4, $r0.3   ## bblock 6, line 2387,  t259,  t364,  t172
	c0    mpylhu $r0.18 = $r0.3, $r0.4   ## bblock 6, line 2388,  t266,  t172,  t364
	c0    mpyhhu $r0.21 = $r0.3, $r0.4   ## bblock 6, line 2389,  t262,  t172,  t364
	c0    ldw $r0.22 = 0x14[$r0.1]   ## bblock 6, line 2414, t325, t680
;;								## 34
	c0    stw 0x34[$r0.1] = $r0.3   ## bblock 6, line 2348, t680, t172
	c0    add $r0.13 = $r0.12, $r0.13   ## bblock 6, line 2369,  t219,  t215,  t208
;;								## 35
	c0    shru $r0.24 = $r0.13, 16   ## bblock 6, line 2371,  t213(I16),  t219,  16(SI32)
	c0    cmpltu $r0.12 = $r0.13, $r0.12   ## bblock 6, line 2371,  t216,  t219,  t215
	c0    shl $r0.23 = $r0.13, 16   ## bblock 6, line 2372,  t226,  t219,  16(SI32)
	c0    add $r0.17 = $r0.17, $r0.18   ## bblock 6, line 2390,  t270,  t259,  t266
	c0    mov $r0.3 = $r0.2   ## t358
;;								## 36
	c0    shl $r0.12 = $r0.12, 16   ## bblock 6, line 2371,  t217,  t216,  16(SI32)
	c0    add $r0.14 = $r0.14, $r0.23   ## bblock 6, line 2373,  t316,  t221,  t226
	c0    add $r0.24 = $r0.24, $r0.15   ## bblock 6, line 2374,  t1046,  t213(I16),  t211
	c0    shru $r0.13 = $r0.17, 16   ## bblock 6, line 2392,  t264(I16),  t270,  16(SI32)
	c0    cmpltu $r0.18 = $r0.17, $r0.18   ## bblock 6, line 2392,  t267,  t270,  t266
	c0    shl $r0.2 = $r0.17, 16   ## bblock 6, line 2393,  t277,  t270,  16(SI32)
;;								## 37
	c0    cmpltu $r0.23 = $r0.14, $r0.23   ## bblock 6, line 2374,  t227,  t316,  t226
	c0    stw 0x38[$r0.1] = $r0.14   ## bblock 6, line 2375, t680, t316
	c0    sub $r0.17 = $r0.0, $r0.14   ## bblock 6, line 2420,  t341,  0(I32),  t316
	c0    shl $r0.18 = $r0.18, 16   ## bblock 6, line 2392,  t268,  t267,  16(SI32)
	c0    add $r0.19 = $r0.19, $r0.2   ## bblock 6, line 2394,  t295,  t272,  t277
	c0    add $r0.13 = $r0.13, $r0.21   ## bblock 6, line 2395,  t1048,  t264(I16),  t262
	c0    cmpgtu $r0.15 = $r0.14, $r0.0   ## bblock 6, line 2421,  t336,  t316,  0(SI32)
;;								## 38
	c0    add $r0.12 = $r0.12, $r0.23   ## bblock 6, line 2374,  t1047,  t217,  t227
	c0    cmpltu $r0.2 = $r0.19, $r0.2   ## bblock 6, line 2395,  t278,  t295,  t277
	c0    stw 0x30[$r0.1] = $r0.17   ## bblock 6, line 2431, t680, t341
;;								## 39
	c0    add $r0.24 = $r0.24, $r0.12   ## bblock 6, line 2374,  t289,  t1046,  t1047
	c0    add $r0.18 = $r0.18, $r0.2   ## bblock 6, line 2395,  t1049,  t268,  t278
	c0    ldw $r0.17 = 0x74[$r0.1]  ## restore ## t679
;;								## 40
	c0    stw 0x3c[$r0.1] = $r0.14   ## bblock 6, line 2409, t680, t316
	c0    add $r0.24 = $r0.24, $r0.19   ## bblock 6, line 2405,  t322,  t289,  t295
	c0    add $r0.13 = $r0.13, $r0.18   ## bblock 6, line 2395,  t298,  t1048,  t1049
;;								## 41
	c0    cmpltu $r0.2 = $r0.24, $r0.19   ## bblock 6, line 2407,  t296,  t322,  t295
	c0    sub $r0.12 = $r0.16, $r0.24   ## bblock 6, line 2422,  t335,  t321,  t322
	c0    cmpltu $r0.14 = $r0.16, $r0.24   ## bblock 6, line 2423,  t339,  t321,  t322
	c0    ldw $r0.18 = 0x78[$r0.1]  ## restore ## t860
;;								## 42
	c0    add $r0.13 = $r0.13, $r0.2   ## bblock 6, line 2407,  t324,  t298,  t296
	c0    stw 0x48[$r0.1] = $r0.19   ## bblock 6, line 2396, t680, t295
	c0    cmpltu $r0.16 = $r0.12, $r0.15   ## bblock 6, line 2428,  t333,  t335,  t336
	c0    sub $r0.21 = $r0.12, $r0.15   ## bblock 6, line 2429,  t343,  t335,  t336
	c0    sub $r0.22 = $r0.22, $r0.14   ## bblock 6, line 2430,  t1050,  t325,  t339
;;								## 43
	c0    add $r0.16 = $r0.13, $r0.16   ## bblock 6, line 2430,  t1051,  t324,  t333
	c0    ldw $r0.19 = 0x7c[$r0.1]  ## restore ## t859
;;								## 44
	c0    stw 0x4c[$r0.1] = $r0.13   ## bblock 6, line 2411, t680, t324
	c0    sub $r0.22 = $r0.22, $r0.16   ## bblock 6, line 2430,  t345,  t1050,  t1051
;;								## 45
	c0    stw 0x28[$r0.1] = $r0.22   ## bblock 6, line 2433, t680, t345
;;								## 46
	c0    stw 0x50[$r0.1] = $r0.13   ## bblock 6, line 2407, t680, t324
;;								## 47
	c0    stw 0x2c[$r0.1] = $r0.21   ## bblock 6, line 2432, t680, t343
;;								## 48
	c0    stw 0x40[$r0.1] = $r0.24   ## bblock 6, line 2406, t680, t322
;;								## 49
	c0    stw 0x44[$r0.1] = $r0.24   ## bblock 6, line 2410, t680, t322
;;								## 50
.trace 1
L223?3:
	c0    ldw.d $r0.2 = 0x30[$r0.1]   ## [spec] bblock 27, line 2443, t959, t680
;;								## 0
	c0    ldw.d $r0.12 = 0x2c[$r0.1]   ## [spec] bblock 27, line 2442, t960, t680
;;								## 1
	c0    ldw $r0.14 = 0x28[$r0.1]   ## bblock 7, line 2435, t948, t680
	c0    add $r0.13 = $r0.2, $r0.3   ## [spec] bblock 27, line 2447,  t956,  t959,  t358
;;								## 2
	c0    add $r0.15 = $r0.12, $r0.4   ## [spec] bblock 27, line 2449,  t958,  t960,  t364
	c0    cmpltu $r0.2 = $r0.13, $r0.2   ## [spec] bblock 27, line 2448,  t955,  t956,  t959
;;								## 3
	c0    cmplt $b0.0 = $r0.14, $r0.0   ## bblock 7, line 2435,  t1052(I1),  t948,  0(SI32)
	c0    cmpltu $r0.15 = $r0.15, $r0.12   ## [spec] bblock 27, line 2450,  t957,  t958,  t960
	c0    add $r0.16 = $r0.15, $r0.2   ## [spec] bblock 27, line 2452,  t954,  t958,  t955
;;								## 4
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## [spec] bblock 27, line 2453,  t953,  t954,  t955
;;								## 5
	c0    add $r0.14 = $r0.14, $r0.2   ## [spec] bblock 27, line 2454,  t1069,  t948,  t953
	c0    brf $b0.0, L224?3   ## bblock 7, line 2435,  t1052(I1)
;;								## 6
	c0    add $r0.14 = $r0.14, $r0.15   ## bblock 27, line 2454,  t951,  t1069,  t957
	c0    stw 0[$r0.6] = $r0.16   ## bblock 27, line 2456, t387, t954
	c0    add $r0.9 = $r0.9, -2   ## [spec] bblock 19, line 2436-2,  t936,  t936,  -2(SI32)
;;								## 7
	c0    ldw.d $r0.2 = 0x2c[$r0.1]   ## [spec] bblock 33, line 2442-1, t368, t680
;;								## 8
	c0    stw 0[$r0.5] = $r0.14   ## bblock 27, line 2457, t389, t951
;;								## 9
	c0    ldw $r0.12 = 0x28[$r0.1]   ## bblock 27, line 2435-1, t347, t680
	c0    add $r0.14 = $r0.4, $r0.2   ## [spec] bblock 33, line 2449-1,  t373,  t364,  t368
;;								## 10
	c0    stw 0[$r0.7] = $r0.13   ## bblock 27, line 2455, t385, t956
	c0    cmpltu $r0.2 = $r0.14, $r0.2   ## [spec] bblock 33, line 2450-1,  t382,  t373,  t368
;;								## 11
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 27, line 2435-1,  t1070(I1),  t347,  0(SI32)
	c0    ldw.d $r0.13 = 0x30[$r0.1]   ## [spec] bblock 33, line 2443-1, t362, t680
;;								## 12
;;								## 13
	c0    add $r0.15 = $r0.3, $r0.13   ## [spec] bblock 33, line 2447-1,  t384,  t358,  t362
	c0    brf $b0.0, L225?3   ## bblock 27, line 2435-1,  t1070(I1)
;;								## 14
	c0    cmpltu $r0.13 = $r0.15, $r0.13   ## bblock 33, line 2448-1,  t378,  t384,  t362
	c0    stw 0[$r0.7] = $r0.15   ## bblock 33, line 2455-1, t385, t384
	c0    add $r0.11 = $r0.11, -2   ## [spec] bblock 30, line 2436-3,  t967,  t967,  -2(SI32)
;;								## 15
	c0    add $r0.14 = $r0.14, $r0.13   ## bblock 33, line 2452-1,  t386,  t373,  t378
	c0    ldw.d $r0.15 = 0x30[$r0.1]   ## [spec] bblock 19, line 2443-2, t938, t680
;;								## 16
	c0    cmpltu $r0.13 = $r0.14, $r0.13   ## bblock 33, line 2453-1,  t944,  t386,  t378
	c0    stw 0[$r0.6] = $r0.14   ## bblock 33, line 2456-1, t387, t386
;;								## 17
	c0    add $r0.12 = $r0.12, $r0.13   ## bblock 33, line 2454-1,  t1072,  t347,  t944
	c0    ldw.d $r0.14 = 0x2c[$r0.1]   ## [spec] bblock 19, line 2442-2, t940, t680
	c0    add $r0.13 = $r0.3, $r0.15   ## [spec] bblock 19, line 2447-2,  t980,  t358,  t938
;;								## 18
	c0    add $r0.12 = $r0.12, $r0.2   ## bblock 33, line 2454-1,  t942,  t1072,  t382
	c0    cmpltu $r0.15 = $r0.13, $r0.15   ## [spec] bblock 19, line 2448-2,  t977,  t980,  t938
;;								## 19
	c0    stw 0[$r0.5] = $r0.12   ## bblock 33, line 2457-1, t389, t942
	c0    add $r0.2 = $r0.4, $r0.14   ## [spec] bblock 19, line 2449-2,  t996,  t364,  t940
;;								## 20
	c0    ldw $r0.12 = 0x28[$r0.1]   ## bblock 33, line 2435-2, t941, t680
	c0    cmpltu $r0.2 = $r0.2, $r0.14   ## [spec] bblock 19, line 2450-2,  t973,  t996,  t940
	c0    add $r0.16 = $r0.2, $r0.15   ## [spec] bblock 19, line 2452-2,  t937,  t996,  t977
;;								## 21
	c0    cmpltu $r0.15 = $r0.16, $r0.15   ## [spec] bblock 19, line 2453-2,  t379,  t937,  t977
;;								## 22
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 33, line 2435-2,  t1073(I1),  t941,  0(SI32)
	c0    add $r0.12 = $r0.12, $r0.15   ## [spec] bblock 19, line 2454-2,  t1056,  t941,  t379
;;								## 23
	c0    add $r0.12 = $r0.12, $r0.2   ## [spec] bblock 19, line 2454-2,  t388,  t1056,  t973
;;								## 24
	c0    brf $b0.0, L226?3   ## bblock 33, line 2435-2,  t1073(I1)
;;								## 25
	c0    stw 0[$r0.7] = $r0.13   ## bblock 19, line 2455-2, t385, t980
	c0    add $r0.8 = $r0.8, (~0x1)   ## bblock 19, line 0,  t1020,  t1020,  (~0x1)(I32)
;;								## 26
	c0    ldw.d $r0.2 = 0x30[$r0.1]   ## [spec] bblock 30, line 2443-3, t1000, t680
;;								## 27
	c0    stw 0[$r0.6] = $r0.16   ## bblock 19, line 2456-2, t387, t937
;;								## 28
	c0    ldw.d $r0.14 = 0x2c[$r0.1]   ## [spec] bblock 30, line 2442-3, t950, t680
	c0    add $r0.13 = $r0.3, $r0.2   ## [spec] bblock 30, line 2447-3,  t946,  t358,  t1000
;;								## 29
	c0    stw 0[$r0.5] = $r0.12   ## bblock 19, line 2457-2, t389, t388
	c0    cmpltu $r0.2 = $r0.13, $r0.2   ## [spec] bblock 30, line 2448-3,  t994,  t946,  t1000
;;								## 30
	c0    ldw $r0.12 = 0x28[$r0.1]   ## bblock 19, line 2435-3, t961, t680
	c0    add $r0.15 = $r0.4, $r0.14   ## [spec] bblock 30, line 2449-3,  t945,  t364,  t950
;;								## 31
	c0    cmpltu $r0.15 = $r0.15, $r0.14   ## [spec] bblock 30, line 2450-3,  t947,  t945,  t950
	c0    add $r0.16 = $r0.15, $r0.2   ## [spec] bblock 30, line 2452-3,  t993,  t945,  t994
;;								## 32
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 19, line 2435-3,  t1057(I1),  t961,  0(SI32)
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## [spec] bblock 30, line 2453-3,  t984,  t993,  t994
;;								## 33
	c0    add $r0.12 = $r0.12, $r0.2   ## [spec] bblock 30, line 2454-3,  t1071,  t961,  t984
;;								## 34
	c0    add $r0.12 = $r0.12, $r0.15   ## [spec] bblock 30, line 2454-3,  t979,  t1071,  t947
	c0    brf $b0.0, L227?3   ## bblock 19, line 2435-3,  t1057(I1)
;;								## 35
	c0    stw 0[$r0.7] = $r0.13   ## bblock 30, line 2455-3, t385, t946
	c0    add $r0.10 = $r0.10, (~0x1)   ## bblock 30, line 0,  t1021,  t1021,  (~0x1)(I32)
;;								## 36
	c0    stw 0[$r0.6] = $r0.16   ## bblock 30, line 2456-3, t387, t993
;;								## 37
	c0    stw 0[$r0.5] = $r0.12   ## bblock 30, line 2457-3, t389, t979
	c0    goto L223?3 ## goto
;;								## 38
.trace 12
L227?3:
	c0    mov $r0.11 = $r0.10   ## bblock 32, line 0,  t934,  t1021
	   ## bblock 32, line 0,  t919,  t936## $r0.9(skipped)
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L228?3 ## goto
;;								## 0
.trace 3
L229?3:
	c0    ldw.d $r0.2 = 0x6c[$r0.1]   ## [spec] bblock 26, line 2558, t582, t680
;;								## 0
	c0    ldw.d $r0.12 = 0x30[$r0.1]   ## [spec] bblock 26, line 2557, t588, t680
;;								## 1
	c0    ldw $r0.14 = 0x2c[$r0.1]   ## bblock 24, line 2550, t567, t680
	c0    add $r0.13 = $r0.2, $r0.3   ## [spec] bblock 26, line 2562,  t604,  t582,  t578
;;								## 2
	c0    add $r0.15 = $r0.12, $r0.4   ## [spec] bblock 26, line 2564,  t593,  t588,  t584
	c0    cmpltu $r0.2 = $r0.13, $r0.2   ## [spec] bblock 26, line 2563,  t598,  t604,  t582
;;								## 3
	c0    cmplt $b0.0 = $r0.14, $r0.0   ## bblock 24, line 2550,  t1065(I1),  t567,  0(SI32)
	c0    cmpltu $r0.15 = $r0.15, $r0.12   ## [spec] bblock 26, line 2565,  t602,  t593,  t588
	c0    add $r0.16 = $r0.15, $r0.2   ## [spec] bblock 26, line 2567,  t606,  t593,  t598
;;								## 4
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## [spec] bblock 26, line 2568,  t599,  t606,  t598
;;								## 5
	c0    add $r0.14 = $r0.14, $r0.2   ## [spec] bblock 26, line 2569,  t1067,  t567,  t599
	c0    brf $b0.0, L230?3   ## bblock 24, line 2550,  t1065(I1)
;;								## 6
	c0    add $r0.14 = $r0.14, $r0.15   ## bblock 26, line 2569,  t968,  t1067,  t602
	c0    stw 0[$r0.6] = $r0.16   ## bblock 26, line 2571, t607, t606
	c0    add $r0.9 = $r0.9, -2   ## [spec] bblock 62, line 2551-2,  t962,  t962,  -2(SI32)
;;								## 7
	c0    ldw.d $r0.2 = 0x30[$r0.1]   ## [spec] bblock 65, line 2557-1, t995, t680
;;								## 8
	c0    stw 0[$r0.5] = $r0.14   ## bblock 26, line 2572, t609, t968
;;								## 9
	c0    ldw $r0.12 = 0x2c[$r0.1]   ## bblock 26, line 2550-1, t1011, t680
	c0    add $r0.14 = $r0.4, $r0.2   ## [spec] bblock 65, line 2564-1,  t976,  t584,  t995
;;								## 10
	c0    stw 0[$r0.7] = $r0.13   ## bblock 26, line 2570, t605, t604
	c0    cmpltu $r0.2 = $r0.14, $r0.2   ## [spec] bblock 65, line 2565-1,  t975,  t976,  t995
;;								## 11
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 26, line 2550-1,  t1068(I1),  t1011,  0(SI32)
	c0    ldw.d $r0.13 = 0x6c[$r0.1]   ## [spec] bblock 65, line 2558-1, t982, t680
;;								## 12
;;								## 13
	c0    add $r0.15 = $r0.3, $r0.13   ## [spec] bblock 65, line 2562-1,  t974,  t578,  t982
	c0    brf $b0.0, L231?3   ## bblock 26, line 2550-1,  t1068(I1)
;;								## 14
	c0    cmpltu $r0.13 = $r0.15, $r0.13   ## bblock 65, line 2563-1,  t972,  t974,  t982
	c0    stw 0[$r0.7] = $r0.15   ## bblock 65, line 2570-1, t605, t974
	c0    add $r0.11 = $r0.11, -2   ## [spec] bblock 12, line 2551-3,  t935,  t935,  -2(SI32)
;;								## 15
	c0    add $r0.14 = $r0.14, $r0.13   ## bblock 65, line 2567-1,  t971,  t976,  t972
	c0    ldw.d $r0.15 = 0x6c[$r0.1]   ## [spec] bblock 62, line 2558-2, t991, t680
;;								## 16
	c0    cmpltu $r0.13 = $r0.14, $r0.13   ## bblock 65, line 2568-1,  t969,  t971,  t972
	c0    stw 0[$r0.6] = $r0.14   ## bblock 65, line 2571-1, t607, t971
;;								## 17
	c0    add $r0.12 = $r0.12, $r0.13   ## bblock 65, line 2569-1,  t1087,  t1011,  t969
	c0    ldw.d $r0.14 = 0x30[$r0.1]   ## [spec] bblock 62, line 2557-2, t992, t680
	c0    add $r0.13 = $r0.3, $r0.15   ## [spec] bblock 62, line 2562-2,  t988,  t578,  t991
;;								## 18
	c0    add $r0.12 = $r0.12, $r0.2   ## bblock 65, line 2569-1,  t608,  t1087,  t975
	c0    cmpltu $r0.15 = $r0.13, $r0.15   ## [spec] bblock 62, line 2563-2,  t997,  t988,  t991
;;								## 19
	c0    stw 0[$r0.5] = $r0.12   ## bblock 65, line 2572-1, t609, t608
	c0    add $r0.2 = $r0.4, $r0.14   ## [spec] bblock 62, line 2564-2,  t990,  t584,  t992
;;								## 20
	c0    ldw $r0.12 = 0x2c[$r0.1]   ## bblock 65, line 2550-2, t1009, t680
	c0    cmpltu $r0.2 = $r0.2, $r0.14   ## [spec] bblock 62, line 2565-2,  t989,  t990,  t992
	c0    add $r0.16 = $r0.2, $r0.15   ## [spec] bblock 62, line 2567-2,  t987,  t990,  t997
;;								## 21
	c0    cmpltu $r0.15 = $r0.16, $r0.15   ## [spec] bblock 62, line 2568-2,  t986,  t987,  t997
;;								## 22
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 65, line 2550-2,  t1088(I1),  t1009,  0(SI32)
	c0    add $r0.12 = $r0.12, $r0.15   ## [spec] bblock 62, line 2569-2,  t1085,  t1009,  t986
;;								## 23
	c0    add $r0.12 = $r0.12, $r0.2   ## [spec] bblock 62, line 2569-2,  t983,  t1085,  t989
;;								## 24
	c0    brf $b0.0, L232?3   ## bblock 65, line 2550-2,  t1088(I1)
;;								## 25
	c0    stw 0[$r0.7] = $r0.13   ## bblock 62, line 2570-2, t605, t988
	c0    add $r0.8 = $r0.8, (~0x1)   ## bblock 62, line 0,  t1013,  t1013,  (~0x1)(I32)
;;								## 26
	c0    ldw.d $r0.2 = 0x6c[$r0.1]   ## [spec] bblock 12, line 2558-3, t1005, t680
;;								## 27
	c0    stw 0[$r0.6] = $r0.16   ## bblock 62, line 2571-2, t607, t987
;;								## 28
	c0    ldw.d $r0.14 = 0x30[$r0.1]   ## [spec] bblock 12, line 2557-3, t1006, t680
	c0    add $r0.13 = $r0.3, $r0.2   ## [spec] bblock 12, line 2562-3,  t1003,  t578,  t1005
;;								## 29
	c0    stw 0[$r0.5] = $r0.12   ## bblock 62, line 2572-2, t609, t983
	c0    cmpltu $r0.2 = $r0.13, $r0.2   ## [spec] bblock 12, line 2563-3,  t1002,  t1003,  t1005
;;								## 30
	c0    ldw $r0.12 = 0x2c[$r0.1]   ## bblock 62, line 2550-3, t1007, t680
	c0    add $r0.15 = $r0.4, $r0.14   ## [spec] bblock 12, line 2564-3,  t1004,  t584,  t1006
;;								## 31
	c0    cmpltu $r0.15 = $r0.15, $r0.14   ## [spec] bblock 12, line 2565-3,  t1010,  t1004,  t1006
	c0    add $r0.16 = $r0.15, $r0.2   ## [spec] bblock 12, line 2567-3,  t1001,  t1004,  t1002
;;								## 32
	c0    cmplt $b0.0 = $r0.12, $r0.0   ## bblock 62, line 2550-3,  t1086(I1),  t1007,  0(SI32)
	c0    cmpltu $r0.2 = $r0.16, $r0.2   ## [spec] bblock 12, line 2568-3,  t981,  t1001,  t1002
;;								## 33
	c0    add $r0.12 = $r0.12, $r0.2   ## [spec] bblock 12, line 2569-3,  t1054,  t1007,  t981
;;								## 34
	c0    add $r0.12 = $r0.12, $r0.15   ## [spec] bblock 12, line 2569-3,  t998,  t1054,  t1010
	c0    brf $b0.0, L233?3   ## bblock 62, line 2550-3,  t1086(I1)
;;								## 35
	c0    stw 0[$r0.7] = $r0.13   ## bblock 12, line 2570-3, t605, t1003
	c0    add $r0.10 = $r0.10, (~0x1)   ## bblock 12, line 0,  t1012,  t1012,  (~0x1)(I32)
;;								## 36
	c0    stw 0[$r0.6] = $r0.16   ## bblock 12, line 2571-3, t607, t1001
;;								## 37
	c0    stw 0[$r0.5] = $r0.12   ## bblock 12, line 2572-3, t609, t998
	c0    goto L229?3 ## goto
;;								## 38
.trace 15
L233?3:
	c0    mov $r0.11 = $r0.10   ## bblock 60, line 0,  t963,  t1012
	   ## bblock 60, line 0,  t965,  t962## $r0.9(skipped)
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L234?3 ## goto
;;								## 0
.trace 7
L235?3:
	c0    ldw $r0.2 = 0x34[$r0.1]   ## bblock 10, line 2578, t708, t680
;;								## 0
	c0    ldw $r0.8 = 0x54[$r0.1]   ## bblock 10, line 2579, t897, t680
;;								## 1
	c0    shl $r0.9 = $r0.2, 21   ## bblock 10, line 2595,  t905,  t708,  21(I32)
	c0    shru $r0.5 = $r0.2, 11   ## bblock 10, line 2596,  t676,  t708,  11(SI32)
	c0    ldw $r0.4 = 0x7c[$r0.1]  ## restore ## t859
;;								## 2
	c0    shl $r0.7 = $r0.8, 21   ## bblock 10, line 2594,  t678,  t897,  21(I32)
	c0    shru $r0.2 = $r0.8, 11   ## bblock 10, line 2595,  t893(I21),  t897,  11(SI32)
	c0    ldw $r0.3 = 0x78[$r0.1]  ## restore ## t860
;;								## 3
	c0    stw 0x70[$r0.1] = $r0.7   ## bblock 10, line 2618, t680, t678
	c0    or $r0.6 = $r0.9, $r0.2   ## bblock 10, line 2595,  t677,  t905,  t893(I21)
;;								## 4
	c0    stw 0x54[$r0.1] = $r0.6   ## bblock 10, line 2619, t680, t677
;;								## 5
.call roundAndPackFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret($r0.3:u32,$r0.4:u32)
	c0    stw 0x34[$r0.1] = $r0.5   ## bblock 10, line 2620, t680, t676
	c0    call $l0.0 = roundAndPackFloat64   ## bblock 10, line 2622,  raddr(roundAndPackFloat64)(P32),  t860,  t859,  t676,  t677,  t678
;;								## 6
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 7
;;								## 8
;;								## 9
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 18, line 2622,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 10
.trace 17
L237?3:
	c0    ldw $r0.4 = 0x30[$r0.1]   ## bblock 25, line 2575, t612, t680
;;								## 0
	c0    or $r0.2 = $r0.2, $r0.3   ## bblock 25, line 2575,  t1066,  t611,  t613
	c0    goto L236?3 ## goto
;;								## 1
.trace 14
L232?3:
	c0    mov $r0.11 = $r0.10   ## bblock 63, line 0,  t963,  t1012
	c0    mov $r0.9 = $r0.8   ## bblock 63, line 0,  t965,  t1013
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L234?3 ## goto
;;								## 0
.trace 13
L231?3:
	   ## bblock 66, line 0,  t963,  t935## $r0.11(skipped)
	c0    mov $r0.9 = $r0.8   ## bblock 66, line 0,  t965,  t1013
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L234?3 ## goto
;;								## 0
.trace 9
L230?3:
	   ## bblock 67, line 0,  t963,  t935## $r0.11(skipped)
	   ## bblock 67, line 0,  t965,  t962## $r0.9(skipped)
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
;;								## 0
L234?3:
	c0    add $r0.9 = $r0.9, $r0.11   ## bblock 21, line 0,  t921,  t965,  t963
	c0    stw 0x7c[$r0.1] = $r0.19  ## spill ## t859
;;								## 1
	c0    cmpne $b0.0 = $r0.9, $r0.20   ## bblock 21, line 0,  t1058(I1),  t921,  t390
	c0    stw 0x74[$r0.1] = $r0.17  ## spill ## t679
;;								## 2
	c0    ldw.d $r0.2 = 0x6c[$r0.1]   ## [spec] bblock 25, line 2575, t611, t680
;;								## 3
	c0    ldw.d $r0.3 = 0x2c[$r0.1]   ## [spec] bblock 25, line 2575, t613, t680
	c0    brf $b0.0, L237?3   ## bblock 21, line 0,  t1058(I1)
;;								## 4
	c0    ldw $r0.4 = 0x30[$r0.1]   ## bblock 25, line 2575, t612, t680
;;								## 5
	c0    stw 0x54[$r0.1] = $r0.9   ## bblock 31, line 0, t680, t921
	c0    or $r0.2 = $r0.2, $r0.3   ## bblock 25, line 2575,  t1066,  t611,  t613
;;								## 6
L236?3:
	c0    ldw $r0.3 = 0x54[$r0.1]   ## bblock 25, line 2575, t610, t680
	c0    or $r0.2 = $r0.2, $r0.4   ## bblock 25, line 2575,  t614,  t1066,  t612
;;								## 7
	c0    cmpne $r0.2 = $r0.2, $r0.0   ## bblock 25, line 2575,  t615,  t614,  0(I32)
;;								## 8
	c0    or $r0.3 = $r0.3, $r0.2   ## bblock 25, line 2575,  t616,  t610,  t615
;;								## 9
	c0    stw 0x54[$r0.1] = $r0.3   ## bblock 25, line 2575, t680, t616
	c0    goto L235?3 ## goto
;;								## 10
.trace 16
L239?3:
	c0    ldw $r0.5 = 0x1c[$r0.1]   ## bblock 8, line 2460, t393, t680
;;								## 0
.call estimateDiv64To32, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret($r0.3:u32)
	c0    call $l0.0 = estimateDiv64To32   ## bblock 8, line 2460,  raddr(estimateDiv64To32)(P32),  t391,  t392,  t393
;;								## 1
	c0    goto L238?3 ## goto
;;								## 2
.trace 11
L226?3:
	c0    mov $r0.11 = $r0.10   ## bblock 17, line 0,  t934,  t1021
	c0    mov $r0.9 = $r0.8   ## bblock 17, line 0,  t919,  t1020
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L228?3 ## goto
;;								## 0
.trace 10
L225?3:
	   ## bblock 22, line 0,  t934,  t967## $r0.11(skipped)
	c0    mov $r0.9 = $r0.8   ## bblock 22, line 0,  t919,  t1020
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
	c0    goto L228?3 ## goto
;;								## 0
.trace 6
L224?3:
	   ## bblock 20, line 0,  t934,  t967## $r0.11(skipped)
	   ## bblock 20, line 0,  t919,  t936## $r0.9(skipped)
	c0    stw 0x78[$r0.1] = $r0.18  ## spill ## t860
;;								## 0
L228?3:
	c0    add $r0.9 = $r0.9, $r0.11   ## bblock 16, line 0,  t1008,  t919,  t934
	c0    stw 0x7c[$r0.1] = $r0.19  ## spill ## t859
;;								## 1
	c0    cmpne $b0.0 = $r0.9, $r0.20   ## bblock 16, line 0,  t1055(I1),  t1008,  t172
	c0    stw 0x74[$r0.1] = $r0.17  ## spill ## t679
;;								## 2
	c0    ldw.d $r0.3 = 0x2c[$r0.1]   ## [spec] bblock 8, line 2460, t391, t680
;;								## 3
	c0    ldw.d $r0.4 = 0x30[$r0.1]   ## [spec] bblock 8, line 2460, t392, t680
	c0    brf $b0.0, L239?3   ## bblock 16, line 0,  t1055(I1)
;;								## 4
	c0    ldw $r0.5 = 0x1c[$r0.1]   ## bblock 8, line 2460, t393, t680
;;								## 5
.call estimateDiv64To32, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret($r0.3:u32)
	c0    stw 0x34[$r0.1] = $r0.9   ## bblock 13, line 0, t680, t1008
	c0    call $l0.0 = estimateDiv64To32   ## bblock 8, line 2460,  raddr(estimateDiv64To32)(P32),  t391,  t392,  t393
;;								## 6
L238?3:
	c0    and $r0.12 = $r0.3, 1023   ## bblock 9, line 2461,  t395,  t390,  1023(I32)
	c0    ldw.d $r0.2 = 0x20[$r0.1]   ## [spec] bblock 23, line 2467, t578, t680
	c0    add $r0.5 = $r0.1, 0x2c   ## [spec] bblock 23, line 2540,  t609,  t680,  offset(rem1?1.343)=0x2c(P32)
	c0    add $r0.6 = $r0.1, 0x30   ## [spec] bblock 23, line 2541,  t607,  t680,  offset(rem2?1.343)=0x30(P32)
	c0    add $r0.7 = $r0.1, 0x6c   ## [spec] bblock 23, line 2542,  t605,  t680,  offset(rem3?1.343)=0x6c(P32)
	c0    add $r0.8 = $r0.3, (~0x0)   ## [spec] bblock 23, line 0,  t1013,  t390,  (~0x0)(I32)
	c0    mov $r0.10 = (~0x0)   ## [spec] bblock 23, line 0,  t1012,  (~0x0)(I32)
;;								## 7
	c0    cmpleu $b0.0 = $r0.12, 4   ## bblock 9, line 2461,  t1053(I1),  t395,  4(SI32)
	c0    ldw.d $r0.4 = 0x1c[$r0.1]   ## [spec] bblock 23, line 2466, t584, t680
	c0    mov $r0.9 = $r0.3   ## [spec] bblock 23, line 2460,  t962,  t390
	c0    mov $r0.11 = $r0.0   ## [spec] bblock 23, line 0,  t935,  0(I32)
	c0    mov $r0.20 = $r0.3   ## t390
;;								## 8
	c0    mpyllu $r0.16 = $r0.2, $r0.3   ## [spec] bblock 23, line 2478,  t441,  t578,  t390
	c0    mpylhu $r0.13 = $r0.3, $r0.2   ## [spec] bblock 23, line 2480,  t435,  t390,  t578
	c0    mpylhu $r0.14 = $r0.2, $r0.3   ## [spec] bblock 23, line 2479,  t428,  t578,  t390
	c0    mpyhhu $r0.19 = $r0.2, $r0.3   ## [spec] bblock 23, line 2481,  t431,  t578,  t390
	c0    ldw.d $r0.21 = 0x30[$r0.1]   ## [spec] bblock 23, line 2530, t541, t680
;;								## 9
	c0    mpyllu $r0.23 = $r0.4, $r0.3   ## [spec] bblock 23, line 2500,  t492,  t584,  t390
	c0    mpylhu $r0.12 = $r0.4, $r0.3   ## [spec] bblock 23, line 2501,  t479,  t584,  t390
	c0    mpylhu $r0.22 = $r0.3, $r0.4   ## [spec] bblock 23, line 2502,  t486,  t390,  t584
	c0    mpyhhu $r0.24 = $r0.3, $r0.4   ## [spec] bblock 23, line 2503,  t482,  t390,  t584
	c0    ldw.d $r0.25 = 0x2c[$r0.1]   ## [spec] bblock 23, line 2529, t545, t680
;;								## 10
	c0    stw 0x54[$r0.1] = $r0.3   ## bblock 9, line 2460, t680, t390
	c0    add $r0.14 = $r0.13, $r0.14   ## [spec] bblock 23, line 2482,  t439,  t435,  t428
	c0    brf $b0.0, L235?3   ## bblock 9, line 2461,  t1053(I1)
;;								## 11
	c0    shru $r0.27 = $r0.14, 16   ## bblock 23, line 2485,  t433(I16),  t439,  16(SI32)
	c0    cmpltu $r0.13 = $r0.14, $r0.13   ## bblock 23, line 2484,  t436,  t439,  t435
	c0    shl $r0.26 = $r0.14, 16   ## bblock 23, line 2486,  t446,  t439,  16(SI32)
	c0    add $r0.12 = $r0.12, $r0.22   ## bblock 23, line 2504,  t490,  t479,  t486
	c0    ldw $r0.18 = 0x78[$r0.1]  ## restore ## t860
	c0    mov $r0.3 = $r0.2   ## [spec] t578
;;								## 12
	c0    shl $r0.13 = $r0.13, 16   ## bblock 23, line 2484,  t437,  t436,  16(SI32)
	c0    add $r0.16 = $r0.16, $r0.26   ## bblock 23, line 2487,  t536,  t441,  t446
	c0    add $r0.27 = $r0.27, $r0.19   ## bblock 23, line 2488,  t1059,  t433(I16),  t431
	c0    shru $r0.14 = $r0.12, 16   ## bblock 23, line 2507,  t484(I16),  t490,  16(SI32)
	c0    cmpltu $r0.22 = $r0.12, $r0.22   ## bblock 23, line 2506,  t487,  t490,  t486
	c0    shl $r0.2 = $r0.12, 16   ## bblock 23, line 2508,  t497,  t490,  16(SI32)
	c0    ldw $r0.17 = 0x74[$r0.1]  ## restore ## t679
;;								## 13
	c0    cmpltu $r0.26 = $r0.16, $r0.26   ## bblock 23, line 2488,  t447,  t536,  t446
	c0    stw 0x58[$r0.1] = $r0.16   ## bblock 23, line 2489, t680, t536
	c0    sub $r0.19 = $r0.0, $r0.16   ## bblock 23, line 2535,  t561,  0(I32),  t536
	c0    shl $r0.22 = $r0.22, 16   ## bblock 23, line 2506,  t488,  t487,  16(SI32)
	c0    add $r0.23 = $r0.23, $r0.2   ## bblock 23, line 2509,  t515,  t492,  t497
	c0    add $r0.14 = $r0.14, $r0.24   ## bblock 23, line 2510,  t1061,  t484(I16),  t482
	c0    cmpgtu $r0.12 = $r0.16, $r0.0   ## bblock 23, line 2536,  t556,  t536,  0(SI32)
;;								## 14
	c0    add $r0.13 = $r0.13, $r0.26   ## bblock 23, line 2488,  t1060,  t437,  t447
	c0    cmpltu $r0.2 = $r0.23, $r0.2   ## bblock 23, line 2510,  t498,  t515,  t497
	c0    stw 0x6c[$r0.1] = $r0.19   ## bblock 23, line 2546, t680, t561
;;								## 15
	c0    add $r0.27 = $r0.27, $r0.13   ## bblock 23, line 2488,  t509,  t1059,  t1060
	c0    add $r0.22 = $r0.22, $r0.2   ## bblock 23, line 2510,  t1062,  t488,  t498
	c0    ldw $r0.19 = 0x7c[$r0.1]  ## restore ## t859
;;								## 16
	c0    stw 0x5c[$r0.1] = $r0.16   ## bblock 23, line 2524, t680, t536
	c0    add $r0.27 = $r0.27, $r0.23   ## bblock 23, line 2520,  t542,  t509,  t515
	c0    add $r0.14 = $r0.14, $r0.22   ## bblock 23, line 2510,  t518,  t1061,  t1062
;;								## 17
	c0    stw 0x60[$r0.1] = $r0.27   ## bblock 23, line 2521, t680, t542
	c0    cmpltu $r0.2 = $r0.27, $r0.23   ## bblock 23, line 2522,  t516,  t542,  t515
	c0    sub $r0.13 = $r0.21, $r0.27   ## bblock 23, line 2537,  t555,  t541,  t542
	c0    cmpltu $r0.16 = $r0.21, $r0.27   ## bblock 23, line 2538,  t559,  t541,  t542
;;								## 18
	c0    stw 0x3c[$r0.1] = $r0.27   ## bblock 23, line 2525, t680, t542
	c0    add $r0.14 = $r0.14, $r0.2   ## bblock 23, line 2522,  t544,  t518,  t516
	c0    cmpltu $r0.21 = $r0.13, $r0.12   ## bblock 23, line 2543,  t553,  t555,  t556
	c0    sub $r0.22 = $r0.13, $r0.12   ## bblock 23, line 2544,  t563,  t555,  t556
	c0    sub $r0.25 = $r0.25, $r0.16   ## bblock 23, line 2545,  t1063,  t545,  t559
;;								## 19
	c0    stw 0x44[$r0.1] = $r0.14   ## bblock 23, line 2526, t680, t544
	c0    add $r0.21 = $r0.14, $r0.21   ## bblock 23, line 2545,  t1064,  t544,  t553
;;								## 20
	c0    stw 0x68[$r0.1] = $r0.14   ## bblock 23, line 2522, t680, t544
	c0    sub $r0.25 = $r0.25, $r0.21   ## bblock 23, line 2545,  t565,  t1063,  t1064
;;								## 21
	c0    stw 0x2c[$r0.1] = $r0.25   ## bblock 23, line 2548, t680, t565
;;								## 22
	c0    stw 0x30[$r0.1] = $r0.22   ## bblock 23, line 2547, t680, t563
;;								## 23
	c0    stw 0x64[$r0.1] = $r0.23   ## bblock 23, line 2511, t680, t515
	c0    goto L229?3 ## goto
;;								## 24
.trace 8
L221?3:
	c0    stw 0x7c[$r0.1] = $r0.15  ## spill ## t859
;;								## 0
	c0    ldw $r0.3 = 0x14[$r0.1]   ## bblock 5, line 2348, t173, t680
;;								## 1
	c0    goto L222?3 ## goto
;;								## 2
.trace 21
L219?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 34, line 2297, t71, t680
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 0
	c0    ldw $r0.7 = 0x14[$r0.1]   ## bblock 34, line 2297, t72, t680
;;								## 1
	c0    ldw $r0.3 = 0x78[$r0.1]  ## restore ## t860
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.7   ## bblock 34, line 2297,  t73,  t71,  t72
;;								## 3
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 34, line 2297,  t1074(I1),  t73,  0(SI32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L240?3   ## bblock 34, line 2297,  t1074(I1)
;;								## 6
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 36, line 2298,  raddr(packFloat64)(P32),  t860,  0(SI32),  0(I32),  0(I32)
;;								## 7
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 37, line 2298,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 11
.trace 25
L240?3:
	c0    ldw $r0.3 = 0x14[$r0.1]   ## bblock 35, line 2299, t77, t680
	c0    add $r0.6 = $r0.1, 0x14   ## bblock 35, line 2299,  t80,  t680,  offset(aSig0?1.343)=0x14(P32)
	c0    add $r0.7 = $r0.1, 0x10   ## bblock 35, line 2299,  t81,  t680,  offset(aSig1?1.343)=0x10(P32)
	c0    add $r0.5 = $r0.1, 0x18   ## bblock 35, line 2299,  t79,  t680,  offset(aExp?1.343)=0x18(P32)
;;								## 0
	c0    ldw $r0.4 = 0x10[$r0.1]   ## bblock 35, line 2299, t78, t680
;;								## 1
.call normalizeFloat64Subnormal, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret()
	c0    call $l0.0 = normalizeFloat64Subnormal   ## bblock 35, line 2299,  raddr(normalizeFloat64Subnormal)(P32),  t77,  t78,  t79,  t80,  t81
;;								## 2
	c0    ldw $r0.2 = 0x14[$r0.1]   ## bblock 4, line 2305, t87, t680
;;								## 3
	c0    ldw $r0.3 = 0x10[$r0.1]   ## bblock 4, line 2306, t96, t680
;;								## 4
	c0    ldw $r0.4 = 0x18[$r0.1]   ## bblock 4, line 2301, t83, t680
	c0    or $r0.2 = $r0.2, 1048576   ## bblock 4, line 2305,  t101,  t87,  1048576(I32)
;;								## 5
	c0    ldw $r0.3 = 0x24[$r0.1]   ## bblock 4, line 2301, t82, t680
	c0    shl $r0.18 = $r0.3, 11   ## bblock 4, line 2308,  t136,  t96,  11(SI32)
	c0    shl $r0.2 = $r0.2, 11   ## bblock 4, line 2310,  t103,  t101,  11(SI32)
	c0    shru $r0.5 = $r0.3, 21   ## bblock 4, line 2310,  t100(I11),  t96,  21(I32)
;;								## 6
	c0    add $r0.4 = $r0.4, 1021   ## bblock 4, line 2301,  t1043,  t83,  1021(SI32)
	c0    or $r0.12 = $r0.2, $r0.5   ## bblock 4, line 2310,  t133,  t103,  t100(I11)
	c0    ldw $r0.5 = 0x20[$r0.1]   ## bblock 4, line 2316, t118, t680
	c0    shru $r0.2 = $r0.18, 1   ## [spec] bblock 29, line 2336,  t883(I31),  t136,  1(I32)
;;								## 7
	c0    sub $r0.15 = $r0.4, $r0.3   ## bblock 4, line 2301,  t859,  t1043,  t82
	c0    ldw $r0.3 = 0x1c[$r0.1]   ## bblock 4, line 2315, t109, t680
	c0    shru $r0.19 = $r0.12, 1   ## [spec] bblock 29, line 2337,  t843(I31),  t133,  1(I32)
	c0    shl $r0.23 = $r0.12, 31   ## [spec] bblock 29, line 2336,  t885,  t133,  31(I32)
;;								## 8
	c0    shl $r0.22 = $r0.5, 11   ## bblock 4, line 2318,  t135,  t118,  11(SI32)
	c0    shru $r0.21 = $r0.5, 21   ## bblock 4, line 2320,  t122(I11),  t118,  21(I32)
	c0    or $r0.14 = $r0.2, $r0.23   ## [spec] bblock 29, line 2336,  t842,  t883(I31),  t885
;;								## 9
	c0    or $r0.20 = $r0.3, 1048576   ## bblock 4, line 2315,  t123,  t109,  1048576(I32)
	c0    cmpleu $r0.17 = $r0.22, $r0.18   ## bblock 4, line 2322,  t137,  t135,  t136
	c0    goto L220?3 ## goto
;;								## 10
.trace 20
L217?3:
	c0    or $r0.6 = $r0.6, $r0.16   ## bblock 38, line 2280,  t55,  t697,  t10
	c0    or $r0.4 = $r0.4, $r0.2   ## [spec] bblock 40, line 2281,  t1076,  t695,  t19
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.6, $r0.0   ## bblock 38, line 2280,  t1075(I1),  t55,  0(SI32)
	c0    or $r0.4 = $r0.4, $r0.13   ## [spec] bblock 40, line 2281,  t59,  t1076,  t2
;;								## 1
	c0    cmpeq $b0.1 = $r0.4, $r0.0   ## [spec] bblock 40, line 2281,  t1077(I1),  t59,  0(SI32)
;;								## 2
	c0    brf $b0.0, L241?3   ## bblock 38, line 2280,  t1075(I1)
;;								## 3
	c0    brf $b0.1, L242?3   ## bblock 40, line 2281,  t1077(I1)
;;								## 4
L243?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 44, line 2283,  raddr(float_raise)(P32),  16(SI32)
;;								## 5
	c0    mov $r0.4 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
	c0    mov $r0.3 = 2147483647   ## 2147483647(I32)
;;								## 6
;;								## 7
;;								## 8
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 45, line 2286,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 9
.trace 27
L242?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 41, line 2288,  raddr(float_raise)(P32),  128(SI32)
	c0    mov $r0.3 = 128   ## 128(SI32)
;;								## 0
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    ldw $r0.3 = 0x78[$r0.1]  ## restore ## t860
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 1
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 42, line 2289,  raddr(packFloat64)(P32),  t860,  2047(SI32),  0(I32),  0(I32)
;;								## 2
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 3
;;								## 4
;;								## 5
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 43, line 2289,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 6
.trace 24
L241?3:
	c0    ldw $r0.3 = 0x1c[$r0.1]   ## bblock 39, line 2291, t65, t680
	c0    add $r0.6 = $r0.1, 0x1c   ## bblock 39, line 2291,  t68,  t680,  offset(bSig0?1.343)=0x1c(P32)
	c0    add $r0.7 = $r0.1, 0x20   ## bblock 39, line 2291,  t69,  t680,  offset(bSig1?1.343)=0x20(P32)
	c0    add $r0.5 = $r0.1, 0x24   ## bblock 39, line 2291,  t67,  t680,  offset(bExp?1.343)=0x24(P32)
;;								## 0
	c0    ldw $r0.4 = 0x20[$r0.1]   ## bblock 39, line 2291, t66, t680
;;								## 1
.call normalizeFloat64Subnormal, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32,$r0.7:u32), ret()
	c0    call $l0.0 = normalizeFloat64Subnormal   ## bblock 39, line 2291,  raddr(normalizeFloat64Subnormal)(P32),  t65,  t66,  t67,  t68,  t69
;;								## 2
	c0    ldw.d $r0.2 = 0x14[$r0.1]   ## [spec] bblock 4, line 2305, t87, t680
;;								## 3
	c0    ldw.d $r0.3 = 0x10[$r0.1]   ## [spec] bblock 4, line 2306, t96, t680
;;								## 4
	c0    ldw.d $r0.4 = 0x18[$r0.1]   ## [spec] bblock 4, line 2301, t83, t680
	c0    or $r0.2 = $r0.2, 1048576   ## [spec] bblock 4, line 2305,  t101,  t87,  1048576(I32)
;;								## 5
	c0    ldw.d $r0.6 = 0x24[$r0.1]   ## [spec] bblock 4, line 2301, t82, t680
	c0    shl $r0.18 = $r0.3, 11   ## [spec] bblock 4, line 2308,  t136,  t96,  11(SI32)
	c0    shl $r0.2 = $r0.2, 11   ## [spec] bblock 4, line 2310,  t103,  t101,  11(SI32)
	c0    shru $r0.5 = $r0.3, 21   ## [spec] bblock 4, line 2310,  t100(I11),  t96,  21(I32)
;;								## 6
	c0    add $r0.4 = $r0.4, 1021   ## [spec] bblock 4, line 2301,  t1043,  t83,  1021(SI32)
	c0    or $r0.12 = $r0.2, $r0.5   ## [spec] bblock 4, line 2310,  t133,  t103,  t100(I11)
	c0    ldw.d $r0.2 = 0x20[$r0.1]   ## [spec] bblock 4, line 2316, t118, t680
	c0    shru $r0.14 = $r0.18, 1   ## [spec] bblock 29, line 2336,  t883(I31),  t136,  1(I32)
;;								## 7
	c0    ldw $r0.3 = 0x18[$r0.1]   ## bblock 3, line 2296, t70, t680
	c0    sub $r0.15 = $r0.4, $r0.6   ## [spec] bblock 4, line 2301,  t859,  t1043,  t82
	c0    shru $r0.19 = $r0.12, 1   ## [spec] bblock 29, line 2337,  t843(I31),  t133,  1(I32)
	c0    shl $r0.23 = $r0.12, 31   ## [spec] bblock 29, line 2336,  t885,  t133,  31(I32)
;;								## 8
	c0    ldw.d $r0.20 = 0x1c[$r0.1]   ## [spec] bblock 4, line 2315, t109, t680
	c0    shl $r0.22 = $r0.2, 11   ## [spec] bblock 4, line 2318,  t135,  t118,  11(SI32)
	c0    shru $r0.21 = $r0.2, 21   ## [spec] bblock 4, line 2320,  t122(I11),  t118,  21(I32)
;;								## 9
	c0    cmpeq $b0.3 = $r0.3, $r0.0   ## bblock 3, line 2296,  t1042(I1),  t70,  0(SI32)
	c0    cmpleu $r0.17 = $r0.22, $r0.18   ## [spec] bblock 4, line 2322,  t137,  t135,  t136
;;								## 10
	c0    goto L218?3 ## goto
;;								## 11
.trace 19
L216?3:
	c0    ldw $r0.2 = 0x20[$r0.1]   ## bblock 46, line 2272, t41, t680
;;								## 0
	c0    ldw $r0.7 = 0x1c[$r0.1]   ## bblock 46, line 2272, t42, t680
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.7   ## bblock 46, line 2272,  t1078,  t41,  t42
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 46, line 2272,  t1079,  t1078,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L244?3   ## bblock 46, line 2272,  t1079
;;								## 6
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 49, line 2273,  raddr(propagateFloat64NaN)(P32),  t694,  t695,  t696,  t697
;;								## 7
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 50, line 2273,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 11
.trace 23
L244?3:
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	c0    ldw $r0.3 = 0x78[$r0.1]  ## restore ## t860
;;								## 0
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 47, line 2274,  raddr(packFloat64)(P32),  t860,  0(SI32),  0(I32),  0(I32)
;;								## 1
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 48, line 2274,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 5
.trace 18
L215?3:
	c0    ldw $r0.2 = 0x10[$r0.1]   ## bblock 51, line 2259, t20, t680
;;								## 0
	c0    ldw $r0.7 = 0x14[$r0.1]   ## bblock 51, line 2259, t21, t680
;;								## 1
;;								## 2
	c0    or $r0.2 = $r0.2, $r0.7   ## bblock 51, line 2259,  t1080,  t20,  t21
;;								## 3
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 51, line 2259,  t1081,  t1080,  0(I32)
;;								## 4
;;								## 5
	c0    brf $b0.0, L245?3   ## bblock 51, line 2259,  t1081
;;								## 6
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 58, line 2260,  raddr(propagateFloat64NaN)(P32),  t694,  t695,  t696,  t697
;;								## 7
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 59, line 2260,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 11
.trace 22
L245?3:
	c0    ldw $r0.2 = 0x24[$r0.1]   ## bblock 52, line 2261, t28, t680
;;								## 0
	c0    ldw.d $r0.7 = 0x20[$r0.1]   ## [spec] bblock 55, line 2262, t29, t680
;;								## 1
	c0    cmpeq $b0.0 = $r0.2, 2047   ## bblock 52, line 2261,  t1082(I1),  t28,  2047(SI32)
	c0    ldw.d $r0.2 = 0x1c[$r0.1]   ## [spec] bblock 55, line 2262, t30, t680
;;								## 2
;;								## 3
	c0    or $r0.7 = $r0.7, $r0.2   ## [spec] bblock 55, line 2262,  t1083,  t29,  t30
	c0    brf $b0.0, L246?3   ## bblock 52, line 2261,  t1082(I1)
;;								## 4
	c0    cmpne $b0.0 = $r0.7, $r0.0   ## bblock 55, line 2262,  t1084,  t1083,  0(I32)
;;								## 5
;;								## 6
	c0    brf $b0.0, L247?3   ## bblock 55, line 2262,  t1084
;;								## 7
.call propagateFloat64NaN, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = propagateFloat64NaN   ## bblock 56, line 2263,  raddr(propagateFloat64NaN)(P32),  t694,  t695,  t696,  t697
;;								## 8
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 9
;;								## 10
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 57, line 2263,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 12
.trace 28
L247?3:
	c0    mov $r0.3 = 16   ## 16(SI32)
	c0    goto L243?3 ## goto
;;								## 0
.trace 26
L246?3:
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    ldw $r0.3 = 0x78[$r0.1]  ## restore ## t860
	c0    mov $r0.4 = 2047   ## 2047(SI32)
;;								## 0
.call packFloat64, caller, arg($r0.3:s32,$r0.4:s32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = packFloat64   ## bblock 53, line 2266,  raddr(packFloat64)(P32),  t860,  2047(SI32),  0(I32),  0(I32)
;;								## 1
	c0    ldw $l0.0 = 0x74[$r0.1]  ## restore ## t679
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 54, line 2266,  t680,  ?2.37?2auto_size(I32),  t679
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.37?2scratch.0, 0x0
.equ _?1PACKET.543, 0x10
.equ _?1PACKET.542, 0x14
.equ _?1PACKET.539, 0x18
.equ _?1PACKET.544, 0x1c
.equ _?1PACKET.545, 0x20
.equ _?1PACKET.540, 0x24
.equ _?1PACKET.549, 0x28
.equ _?1PACKET.550, 0x2c
.equ _?1PACKET.551, 0x30
.equ _?1PACKET.546, 0x34
.equ _?1PACKET.584, 0x38
.equ _?1PACKET.555, 0x3c
.equ _?1PACKET.583, 0x40
.equ _?1PACKET.554, 0x44
.equ _?1PACKET.585, 0x48
.equ _?1PACKET.553, 0x4c
.equ _?1PACKET.582, 0x50
.equ _?1PACKET.547, 0x54
.equ _?1PACKET.653, 0x58
.equ _?1PACKET.556, 0x5c
.equ _?1PACKET.652, 0x60
.equ _?1PACKET.654, 0x64
.equ _?1PACKET.651, 0x68
.equ _?1PACKET.552, 0x6c
.equ _?1PACKET.548, 0x70
.equ ?2.37?2ras_p, 0x74
.equ ?2.37?2spill_p, 0x78
.section .data
.section .text
.equ ?2.37?2auto_size, 0x80
 ## End _d_div
 ## Begin _d_eq
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_eq::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 20   ## bblock 0, line 2630,  t1(I12),  t67,  20(SI32)
	c0    shru $r0.8 = $r0.5, 20   ## bblock 0, line 2632,  t10(I12),  t69,  20(SI32)
	c0    and $r0.7 = $r0.3, 1048575   ## bblock 0, line 2631,  t6,  t67,  1048575(I32)
	c0    and $r0.9 = $r0.5, 1048575   ## bblock 0, line 2633,  t15,  t69,  1048575(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 2047   ## bblock 0, line 2630,  t2,  t1(I12),  2047(I32)
	c0    and $r0.8 = $r0.8, 2047   ## bblock 0, line 2632,  t11,  t10(I12),  2047(I32)
	c0    or $r0.7 = $r0.4, $r0.7   ## bblock 0, line 2631,  t7,  t68,  t6
	c0    or $r0.9 = $r0.6, $r0.9   ## bblock 0, line 2633,  t16,  t70,  t15
	c0    or $r0.10 = $r0.3, $r0.5   ## [spec] bblock 1, line 2646,  t46,  t67,  t69
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t52
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 2047   ## bblock 0, line 2630,  t3,  t2,  2047(SI32)
	c0    cmpeq $r0.8 = $r0.8, 2047   ## bblock 0, line 2632,  t12,  t11,  2047(SI32)
	c0    cmpeq $r0.12 = $r0.4, $r0.6   ## [spec] bblock 1, line 2643,  t38,  t68,  t70
	c0    cmpeq $r0.11 = $r0.3, $r0.5   ## [spec] bblock 1, line 2644,  t41,  t67,  t69
	c0    shl $r0.10 = $r0.10, 1   ## [spec] bblock 1, line 2646,  t47,  t46,  1(SI32)
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.7   ## bblock 0, line 2631,  t8,  t3,  t7
	c0    andl $r0.8 = $r0.8, $r0.9   ## bblock 0, line 2633,  t17,  t12,  t16
	c0    norl $r0.10 = $r0.4, $r0.10   ## [spec] bblock 1, line 2646,  t49,  t68,  t47
;;								## 3
	c0    orl $b0.0 = $r0.2, $r0.8   ## bblock 0, line 2634,  t73(I1),  t8,  t17
	c0    orl $r0.11 = $r0.11, $r0.10   ## [spec] bblock 1, line 2647,  t50,  t41,  t49
;;								## 4
	c0    andl $r0.3 = $r0.12, $r0.11   ## [spec] bblock 1, line 2647,  t51,  t38,  t50
	c0    mov $r0.2 = $r0.3   ## t67
;;								## 5
	c0    br $b0.0, L248?3   ## bblock 0, line 2634,  t73(I1)
;;								## 6
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2647,  t53,  ?2.38?2auto_size(I32),  t52
;;								## 7
.trace 2
L248?3:
	c0    shru $r0.7 = $r0.2, 19   ## bblock 2, line 2635,  t19(I13),  t67,  19(SI32)
	c0    and $r0.8 = $r0.2, 524287   ## bblock 2, line 2636,  t24,  t67,  524287(I32)
	c0    shru $r0.9 = $r0.5, 19   ## bblock 2, line 2637,  t28(I13),  t69,  19(SI32)
	c0    and $r0.10 = $r0.5, 524287   ## bblock 2, line 2638,  t33,  t69,  524287(I32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    and $r0.7 = $r0.7, 4095   ## bblock 2, line 2635,  t20,  t19(I13),  4095(I32)
	c0    orl $r0.8 = $r0.8, $r0.4   ## bblock 2, line 2636,  t25,  t24,  t68
	c0    and $r0.9 = $r0.9, 4095   ## bblock 2, line 2637,  t29,  t28(I13),  4095(I32)
	c0    orl $r0.10 = $r0.10, $r0.6   ## bblock 2, line 2638,  t34,  t33,  t70
;;								## 1
	c0    cmpeq $r0.7 = $r0.7, 4094   ## bblock 2, line 2635,  t21,  t20,  4094(SI32)
	c0    cmpeq $r0.9 = $r0.9, 4094   ## bblock 2, line 2637,  t30,  t29,  4094(SI32)
;;								## 2
	c0    andl $r0.7 = $r0.7, $r0.8   ## bblock 2, line 2636,  t26,  t21,  t25
	c0    andl $r0.9 = $r0.9, $r0.10   ## bblock 2, line 2638,  t35,  t30,  t34
;;								## 3
	c0    orl $b0.0 = $r0.7, $r0.9   ## bblock 2, line 2638,  t81(I1),  t26,  t35
;;								## 4
;;								## 5
	c0    brf $b0.0, L249?3   ## bblock 2, line 2638,  t81(I1)
;;								## 6
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 2639,  raddr(float_raise)(P32),  16(SI32)
;;								## 7
L249?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t52
;;								## 8
;;								## 9
;;								## 10
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 2641,  t53,  ?2.38?2auto_size(I32),  t52
;;								## 11
.endp
.section .bss
.section .data
.equ ?2.38?2scratch.0, 0x0
.equ ?2.38?2ras_p, 0x10
.section .data
.section .text
.equ ?2.38?2auto_size, 0x20
 ## End _d_eq
 ## Begin _d_le
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_le::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 20   ## bblock 0, line 2656,  t1(I12),  t73,  20(SI32)
	c0    shru $r0.8 = $r0.5, 20   ## bblock 0, line 2658,  t10(I12),  t75,  20(SI32)
	c0    and $r0.7 = $r0.3, 1048575   ## bblock 0, line 2657,  t6,  t73,  1048575(I32)
	c0    and $r0.9 = $r0.5, 1048575   ## bblock 0, line 2659,  t15,  t75,  1048575(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 2047   ## bblock 0, line 2656,  t2,  t1(I12),  2047(I32)
	c0    and $r0.8 = $r0.8, 2047   ## bblock 0, line 2658,  t11,  t10(I12),  2047(I32)
	c0    or $r0.7 = $r0.4, $r0.7   ## bblock 0, line 2657,  t7,  t74,  t6
	c0    or $r0.9 = $r0.6, $r0.9   ## bblock 0, line 2659,  t16,  t76,  t15
	c0    shru $r0.10 = $r0.3, 31   ## [spec] bblock 1, line 2664,  t78(I1),  t73,  31(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t58
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 2047   ## bblock 0, line 2656,  t3,  t2,  2047(SI32)
	c0    cmpeq $r0.8 = $r0.8, 2047   ## bblock 0, line 2658,  t12,  t11,  2047(SI32)
	c0    shru $r0.11 = $r0.5, 31   ## [spec] bblock 1, line 2665,  t23(I1),  t75,  31(SI32)
	c0    or $r0.12 = $r0.3, $r0.5   ## [spec] bblock 3, line 2667,  t29,  t73,  t75
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.7   ## bblock 0, line 2657,  t8,  t3,  t7
	c0    andl $r0.8 = $r0.8, $r0.9   ## bblock 0, line 2659,  t17,  t12,  t16
	c0    cmpne $b0.0 = $r0.10, $r0.11   ## [spec] bblock 1, line 2666,  t82(I1),  t78(I1),  t23(I1)
	c0    shl $r0.12 = $r0.12, 1   ## [spec] bblock 3, line 2667,  t30,  t29,  1(SI32)
;;								## 3
	c0    orl $b0.1 = $r0.2, $r0.8   ## bblock 0, line 2660,  t81(I1),  t8,  t17
	c0    or $r0.12 = $r0.4, $r0.12   ## [spec] bblock 3, line 2667,  t87,  t74,  t30
;;								## 4
	c0    or $r0.12 = $r0.12, $r0.6   ## [spec] bblock 3, line 2667,  t31,  t87,  t76
;;								## 5
	c0    cmpeq $r0.12 = $r0.12, $r0.0   ## [spec] bblock 3, line 2668,  t89,  t31,  0(I32)
	c0    br $b0.1, L250?3   ## bblock 0, line 2660,  t81(I1)
;;								## 6
	c0    brf $b0.0, L251?3   ## bblock 1, line 2666,  t82(I1)
;;								## 7
.return ret($r0.3:s32)
	c0    orl $r0.3 = $r0.10, $r0.12   ## bblock 3, line 2668,  t33,  t78(I1),  t89
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 2668,  t59,  ?2.39?2auto_size(I32),  t58
;;								## 8
.trace 2
L251?3:
	c0    cmpltu $r0.8 = $r0.5, $r0.3   ## bblock 2, line 2671,  t37,  t75,  t73
	c0    cmpeq $r0.2 = $r0.5, $r0.3   ## bblock 2, line 2672,  t40,  t75,  t73
	c0    cmpltu $r0.3 = $r0.3, $r0.5   ## bblock 2, line 2673,  t48,  t73,  t75
	c0    cmpeq $r0.9 = $r0.3, $r0.5   ## bblock 2, line 2674,  t51,  t73,  t75
	c0    cmpleu $r0.7 = $r0.6, $r0.4   ## bblock 2, line 2672,  t43,  t76,  t74
	c0    cmpleu $r0.4 = $r0.4, $r0.6   ## bblock 2, line 2674,  t54,  t74,  t76
	c0    mtb $b0.0 = $r0.10   ## t78(I1)
;;								## 0
	c0    andl $r0.2 = $r0.2, $r0.7   ## bblock 2, line 2672,  t44,  t40,  t43
	c0    andl $r0.9 = $r0.9, $r0.4   ## bblock 2, line 2674,  t55,  t51,  t54
;;								## 1
	c0    orl $r0.8 = $r0.8, $r0.2   ## bblock 2, line 2672,  t45,  t37,  t44
	c0    orl $r0.3 = $r0.3, $r0.9   ## bblock 2, line 2674,  t56,  t48,  t55
;;								## 2
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.8, $r0.3   ## bblock 2, line 2674,  t57,  t78(I1),  t45,  t56
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 2674,  t59,  ?2.39?2auto_size(I32),  t58
;;								## 3
.trace 3
L250?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 2661,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t58
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 2662,  t59,  ?2.39?2auto_size(I32),  t58
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.39?2scratch.0, 0x0
.equ ?2.39?2ras_p, 0x10
.section .data
.section .text
.equ ?2.39?2auto_size, 0x20
 ## End _d_le
 ## Begin _d_lt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_lt::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    shru $r0.2 = $r0.3, 20   ## bblock 0, line 2683,  t1(I12),  t73,  20(SI32)
	c0    shru $r0.8 = $r0.5, 20   ## bblock 0, line 2685,  t10(I12),  t75,  20(SI32)
	c0    and $r0.7 = $r0.3, 1048575   ## bblock 0, line 2684,  t6,  t73,  1048575(I32)
	c0    and $r0.9 = $r0.5, 1048575   ## bblock 0, line 2686,  t15,  t75,  1048575(I32)
;;								## 0
	c0    and $r0.2 = $r0.2, 2047   ## bblock 0, line 2683,  t2,  t1(I12),  2047(I32)
	c0    and $r0.8 = $r0.8, 2047   ## bblock 0, line 2685,  t11,  t10(I12),  2047(I32)
	c0    or $r0.7 = $r0.4, $r0.7   ## bblock 0, line 2684,  t7,  t74,  t6
	c0    or $r0.9 = $r0.6, $r0.9   ## bblock 0, line 2686,  t16,  t76,  t15
	c0    shru $r0.10 = $r0.3, 31   ## [spec] bblock 1, line 2691,  t78(I1),  t73,  31(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t58
;;								## 1
	c0    cmpeq $r0.2 = $r0.2, 2047   ## bblock 0, line 2683,  t3,  t2,  2047(SI32)
	c0    cmpeq $r0.8 = $r0.8, 2047   ## bblock 0, line 2685,  t12,  t11,  2047(SI32)
	c0    shru $r0.11 = $r0.5, 31   ## [spec] bblock 1, line 2692,  t23(I1),  t75,  31(SI32)
	c0    or $r0.12 = $r0.3, $r0.5   ## [spec] bblock 3, line 2694,  t29,  t73,  t75
;;								## 2
	c0    andl $r0.2 = $r0.2, $r0.7   ## bblock 0, line 2684,  t8,  t3,  t7
	c0    andl $r0.8 = $r0.8, $r0.9   ## bblock 0, line 2686,  t17,  t12,  t16
	c0    cmpne $b0.0 = $r0.10, $r0.11   ## [spec] bblock 1, line 2693,  t82(I1),  t78(I1),  t23(I1)
	c0    shl $r0.12 = $r0.12, 1   ## [spec] bblock 3, line 2694,  t30,  t29,  1(SI32)
;;								## 3
	c0    orl $b0.1 = $r0.2, $r0.8   ## bblock 0, line 2687,  t81(I1),  t8,  t17
	c0    or $r0.12 = $r0.4, $r0.12   ## [spec] bblock 3, line 2694,  t87,  t74,  t30
;;								## 4
	c0    or $r0.12 = $r0.12, $r0.6   ## [spec] bblock 3, line 2694,  t31,  t87,  t76
;;								## 5
	c0    andl $r0.3 = $r0.10, $r0.12   ## [spec] bblock 3, line 2695,  t33,  t78(I1),  t31
	c0    mov $r0.2 = $r0.3   ## t73
	c0    br $b0.1, L252?3   ## bblock 0, line 2687,  t81(I1)
;;								## 6
	c0    brf $b0.0, L253?3   ## bblock 1, line 2693,  t82(I1)
;;								## 7
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 3, line 2695,  t59,  ?2.40?2auto_size(I32),  t58
;;								## 8
.trace 2
L253?3:
	c0    cmpltu $r0.9 = $r0.5, $r0.2   ## bblock 2, line 2698,  t37,  t75,  t73
	c0    cmpeq $r0.7 = $r0.5, $r0.2   ## bblock 2, line 2699,  t40,  t75,  t73
	c0    cmpltu $r0.2 = $r0.2, $r0.5   ## bblock 2, line 2700,  t48,  t73,  t75
	c0    cmpeq $r0.11 = $r0.2, $r0.5   ## bblock 2, line 2701,  t51,  t73,  t75
	c0    cmpltu $r0.8 = $r0.6, $r0.4   ## bblock 2, line 2699,  t43,  t76,  t74
	c0    cmpltu $r0.4 = $r0.4, $r0.6   ## bblock 2, line 2701,  t54,  t74,  t76
	c0    mtb $b0.0 = $r0.10   ## t78(I1)
;;								## 0
	c0    andl $r0.7 = $r0.7, $r0.8   ## bblock 2, line 2699,  t44,  t40,  t43
	c0    andl $r0.11 = $r0.11, $r0.4   ## bblock 2, line 2701,  t55,  t51,  t54
;;								## 1
	c0    orl $r0.9 = $r0.9, $r0.7   ## bblock 2, line 2699,  t45,  t37,  t44
	c0    orl $r0.2 = $r0.2, $r0.11   ## bblock 2, line 2701,  t56,  t48,  t55
;;								## 2
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.9, $r0.2   ## bblock 2, line 2701,  t57,  t78(I1),  t45,  t56
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 2701,  t59,  ?2.40?2auto_size(I32),  t58
;;								## 3
.trace 3
L252?3:
.call float_raise, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = float_raise   ## bblock 4, line 2688,  raddr(float_raise)(P32),  16(SI32)
	c0    mov $r0.3 = 16   ## 16(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t58
;;								## 1
;;								## 2
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 5, line 2689,  t59,  ?2.40?2auto_size(I32),  t58
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.40?2scratch.0, 0x0
.equ ?2.40?2ras_p, 0x10
.section .data
.section .text
.equ ?2.40?2auto_size, 0x20
 ## End _d_lt
 ## Begin _r_neg
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32)
_r_neg::
.trace 1
	      ## auto_size == 0
	c0    xor $r0.3 = $r0.3, (~0x7fffffff)   ## bblock 0, line 2706,  t1,  t0,  (~0x7fffffff)(I32)
;;								## 0
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2706,  t3,  ?2.41?2auto_size(I32),  t2
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.41?2auto_size, 0x0
 ## End _r_neg
 ## Begin _r_recip
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
_r_recip::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = $r0.3   ## t2
	c0    mov $r0.3 = 0x3f800000   ## 1.000000e+00=0x3f800000(F32)
;;								## 0
.call _r_div, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = _r_div   ## bblock 0, line 2713,  raddr(_r_div)(P32),  1.000000e+00=0x3f800000(F32),  t2
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2713,  t4,  ?2.42?2auto_size(I32),  t3
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.42?2scratch.0, 0x0
.equ ?2.42?2ras_p, 0x10
.section .data
.section .text
.equ ?2.42?2auto_size, 0x20
 ## End _r_recip
 ## Begin _r_ne
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_ne::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call _r_eq, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _r_eq   ## bblock 0, line 2718,  raddr(_r_eq)(P32),  t1,  t2
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t4
;;								## 1
	c0    cmpeq $r0.3 = $r0.3, $r0.0   ## bblock 1, line 2718,  t3,  t0,  0(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t4
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2718,  t5,  ?2.43?2auto_size(I32),  t4
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.43?2scratch.0, 0x0
.equ ?2.43?2ras_p, 0x10
.section .data
.section .text
.equ ?2.43?2auto_size, 0x20
 ## End _r_ne
 ## Begin _r_gt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_gt::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.3 = $r0.4   ## t1
	c0    mov $r0.2 = $r0.3   ## t2
;;								## 0
.call _r_lt, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _r_lt   ## bblock 0, line 2723,  raddr(_r_lt)(P32),  t1,  t2
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
	c0    mov $r0.4 = $r0.2   ## t2
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2723,  t4,  ?2.44?2auto_size(I32),  t3
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.44?2scratch.0, 0x0
.equ ?2.44?2ras_p, 0x10
.section .data
.section .text
.equ ?2.44?2auto_size, 0x20
 ## End _r_gt
 ## Begin _r_ge
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_r_ge::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.3 = $r0.4   ## t1
	c0    mov $r0.2 = $r0.3   ## t2
;;								## 0
.call _r_le, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _r_le   ## bblock 0, line 2728,  raddr(_r_le)(P32),  t1,  t2
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
	c0    mov $r0.4 = $r0.2   ## t2
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2728,  t4,  ?2.45?2auto_size(I32),  t3
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.45?2scratch.0, 0x0
.equ ?2.45?2ras_p, 0x10
.section .data
.section .text
.equ ?2.45?2auto_size, 0x20
 ## End _r_ge
 ## Begin _d_neg
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32)
_d_neg::
.trace 1
	      ## auto_size == 0
	c0    xor $r0.3 = $r0.3, (~0x7fffffff)   ## bblock 0, line 2733,  t2,  t0,  (~0x7fffffff)(I32)
;;								## 0
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2734,  t5,  ?2.46?2auto_size(I32),  t4
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.46?2auto_size, 0x0
 ## End _d_neg
 ## Begin _d_recip
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_d_recip::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.6 = $r0.4   ## t5
	c0    mov $r0.5 = $r0.3   ## t4
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
;;								## 0
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 0, line 2741,  raddr(_d_div)(P32),  1072693248(I32),  0(I32),  t4,  t5
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t6
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t6
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2741,  t7,  ?2.47?2auto_size(I32),  t6
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.47?2scratch.0, 0x0
.equ ?2.47?2ras_p, 0x10
.section .data
.section .text
.equ ?2.47?2auto_size, 0x20
 ## End _d_recip
 ## Begin _d_ne
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_ne::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
.call _d_eq, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_eq   ## bblock 0, line 2746,  raddr(_d_eq)(P32),  t1,  t2,  t3,  t4
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t6
;;								## 1
	c0    cmpeq $r0.3 = $r0.3, $r0.0   ## bblock 1, line 2746,  t5,  t0,  0(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t6
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2746,  t7,  ?2.48?2auto_size(I32),  t6
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.48?2scratch.0, 0x0
.equ ?2.48?2ras_p, 0x10
.section .data
.section .text
.equ ?2.48?2auto_size, 0x20
 ## End _d_ne
 ## Begin _d_gt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_gt::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = $r0.6   ## t2
	c0    mov $r0.3 = $r0.5   ## t1
	c0    mov $r0.2 = $r0.4   ## t4
	c0    mov $r0.7 = $r0.3   ## t3
;;								## 0
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 0, line 2751,  raddr(_d_lt)(P32),  t1,  t2,  t3,  t4
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t5
	c0    mov $r0.6 = $r0.2   ## t4
	c0    mov $r0.5 = $r0.7   ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t5
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2751,  t6,  ?2.49?2auto_size(I32),  t5
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.49?2scratch.0, 0x0
.equ ?2.49?2ras_p, 0x10
.section .data
.section .text
.equ ?2.49?2auto_size, 0x20
 ## End _d_gt
 ## Begin _d_ge
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32)
_d_ge::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = $r0.6   ## t2
	c0    mov $r0.3 = $r0.5   ## t1
	c0    mov $r0.2 = $r0.4   ## t4
	c0    mov $r0.7 = $r0.3   ## t3
;;								## 0
.call _d_le, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_le   ## bblock 0, line 2756,  raddr(_d_le)(P32),  t1,  t2,  t3,  t4
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t5
	c0    mov $r0.6 = $r0.2   ## t4
	c0    mov $r0.5 = $r0.7   ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t5
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2756,  t6,  ?2.50?2auto_size(I32),  t5
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.50?2scratch.0, 0x0
.equ ?2.50?2ras_p, 0x10
.section .data
.section .text
.equ ?2.50?2auto_size, 0x20
 ## End _d_ge
 ## Begin _r_fix
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
_r_fix::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = 1   ## 1(SI32)
;;								## 0
.call float32_to_int32_round_to_zero, caller, arg($r0.3:u32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = float32_to_int32_round_to_zero   ## bblock 0, line 2761,  raddr(float32_to_int32_round_to_zero)(P32),  t1,  1(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t2
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t2
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2761,  t3,  ?2.51?2auto_size(I32),  t2
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.51?2scratch.0, 0x0
.equ ?2.51?2ras_p, 0x10
.section .data
.section .text
.equ ?2.51?2auto_size, 0x20
 ## End _r_fix
 ## Begin _r_ufix
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
_r_ufix::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 0
.call float32_to_int32_round_to_zero, caller, arg($r0.3:u32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = float32_to_int32_round_to_zero   ## bblock 0, line 2766,  raddr(float32_to_int32_round_to_zero)(P32),  t1,  0(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t2
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t2
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2766,  t3,  ?2.52?2auto_size(I32),  t2
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.52?2scratch.0, 0x0
.equ ?2.52?2ras_p, 0x10
.section .data
.section .text
.equ ?2.52?2auto_size, 0x20
 ## End _r_ufix
 ## Begin _d_fix
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_d_fix::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.5 = 1   ## 1(SI32)
;;								## 0
.call float64_to_int32_round_to_zero, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:s32)
	c0    call $l0.0 = float64_to_int32_round_to_zero   ## bblock 0, line 2771,  raddr(float64_to_int32_round_to_zero)(P32),  t1,  t2,  1(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2771,  t4,  ?2.53?2auto_size(I32),  t3
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.53?2scratch.0, 0x0
.equ ?2.53?2ras_p, 0x10
.section .data
.section .text
.equ ?2.53?2auto_size, 0x20
 ## End _d_fix
 ## Begin _d_ufix
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32,$r0.4:u32)
_d_ufix::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.5 = $r0.0   ## 0(SI32)
;;								## 0
.call float64_to_int32_round_to_zero, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:s32), ret($r0.3:s32)
	c0    call $l0.0 = float64_to_int32_round_to_zero   ## bblock 0, line 2776,  raddr(float64_to_int32_round_to_zero)(P32),  t1,  t2,  0(SI32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t3
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t3
;;								## 2
;;								## 3
;;								## 4
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 2776,  t4,  ?2.54?2auto_size(I32),  t3
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.54?2scratch.0, 0x0
.equ ?2.54?2ras_p, 0x10
.section .data
.section .text
.equ ?2.54?2auto_size, 0x20
 ## End _d_ufix
 ## Begin fpgetround
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
fpgetround::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.3 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 0, line 2779, t0, 0(I32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2781,  t2,  ?2.55?2auto_size(I32),  t1
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.55?2auto_size, 0x0
 ## End fpgetround
 ## Begin fpsetround
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
fpsetround::
.trace 1
	      ## auto_size == 0
	c0    stw ((_?1PACKET.2 + 0) + 0)[$r0.0] = $r0.3   ## bblock 0, line 2787, 0(I32), t1
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2787,  t3,  ?2.56?2auto_size(I32),  t2
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.56?2auto_size, 0x0
 ## End fpsetround
 ## Begin fpgetmask
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
fpgetmask::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.3 = ((_?1PACKET.4 + 0) + 0)[$r0.0]   ## bblock 0, line 2790, t0, 0(I32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2792,  t2,  ?2.57?2auto_size(I32),  t1
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.57?2auto_size, 0x0
 ## End fpgetmask
 ## Begin fpsetmask
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
fpsetmask::
.trace 1
	      ## auto_size == 0
	c0    stw ((_?1PACKET.4 + 0) + 0)[$r0.0] = $r0.3   ## bblock 0, line 2798, 0(I32), t1
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2798,  t3,  ?2.58?2auto_size(I32),  t2
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.58?2auto_size, 0x0
 ## End fpsetmask
 ## Begin fpgetsticky
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
fpgetsticky::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.3 = ((_?1PACKET.3 + 0) + 0)[$r0.0]   ## bblock 0, line 2801, t0, 0(I32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2803,  t2,  ?2.59?2auto_size(I32),  t1
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.59?2auto_size, 0x0
 ## End fpgetsticky
 ## Begin fpsetsticky
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
fpsetsticky::
.trace 1
	      ## auto_size == 0
	c0    stw ((_?1PACKET.3 + 0) + 0)[$r0.0] = $r0.3   ## bblock 0, line 2809, 0(I32), t1
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 2809,  t3,  ?2.60?2auto_size(I32),  t2
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.60?2auto_size, 0x0
 ## End fpsetsticky
.section .bss
.section .data
_?1PACKET.3:
    .data4 0
_?1PACKET.4:
    .data4 0
_?1PACKET.1:
    .data4 0
_?1PACKET.2:
    .data4 0
.section .data
.section .text
.import _d_lt
.type _d_lt,@function
.import _d_le
.type _d_le,@function
.import _d_eq
.type _d_eq,@function
.import _d_div
.type _d_div,@function
.import _r_lt
.type _r_lt,@function
.import _r_le
.type _r_le,@function
.import _r_eq
.type _r_eq,@function
.import _r_div
.type _r_div,@function
.import raise
.type raise,@function
