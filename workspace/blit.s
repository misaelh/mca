 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /home/alex/Documents/MCA/workspace/tools/vex-3.43 -o blit -ms -O3 -mas_g"
.sversion 3.43
.rta 2
.section .bss
.align 32
.section .data
.align 32
 ## Begin abs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
abs::
.trace 1
	      ## auto_size == 0
	c0    sub $r0.2 = $r0.0, $r0.3   ## bblock 0, line 7,  t2,  0(I32),  t3
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 0, line 7,  t18(I1),  t3,  0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.2, $r0.3   ## bblock 0, line 7,  t4,  t18(I1),  t2,  t3
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 7,  t6,  ?2.1?2auto_size(I32),  t5
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End abs
 ## Begin fabs
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
fabs::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t16
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t13
;;								## 2
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 0, line 11,  raddr(_d_neg)(P32),  t12,  t13
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t12
;;								## 3
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t10
;;								## 4
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t11
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t13
;;								## 6
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t12
	      xnop 1
;;								## 8
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 0, line 11,  raddr(_d_lt)(P32),  t12,  t13,  0(I32),  0(I32)
;;								## 9
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 0, line 11,  t31(I1),  t5,  0(I1)
	c0    cmpne $b0.1 = $r0.3, $r0.0   ## bblock 0, line 11,  t32(I1),  t5,  0(I1)
	c0    ldw $r0.2 = 0x18[$r0.1]  ## restore ## t12
;;								## 10
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t10
;;								## 11
	c0    ldw $r0.6 = 0x14[$r0.1]  ## restore ## t13
;;								## 12
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t11
;;								## 13
	c0    slct $r0.3 = $b0.0, $r0.5, $r0.2   ## bblock 0, line 11,  t14,  t31(I1),  t10,  t12
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t16
	      xnop 1
;;								## 15
	c0    slct $r0.4 = $b0.1, $r0.7, $r0.6   ## bblock 0, line 11,  t15,  t32(I1),  t11,  t13
	      xnop 1
;;								## 17
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 0, line 11,  t17,  ?2.2?2auto_size(I32),  t16
;;								## 18
.endp
.section .bss
.section .data
.equ ?2.2?2scratch.0, 0x0
.equ ?2.2?2ras_p, 0x10
.equ ?2.2?2spill_p, 0x14
.section .data
.section .text
.equ ?2.2?2auto_size, 0x40
 ## End fabs
.equ _?1TEMPLATEPACKET.11, 0x0
 ## Begin memcpy
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32,$r0.5:u32)
memcpy::
.trace 3
	      ## auto_size == 0
	c0    add $r0.4 = $r0.5, (~0x6)   ## bblock 0, line 0,  t49,  t24,  (~0x6)(I32)
	c0    mov $r0.2 = $r0.4   ## t21
;;								## 0
	c0    mov $r0.5 = $r0.3   ## t20
;;								## 1
.trace 1
L0?3:
	c0    cmpne $b0.0 = $r0.4, -7   ## bblock 1, line 15,  t73(I1),  t49,  -7(SI32)
	c0    ldb.d $r0.3 = 0[$r0.2]   ## [spec] bblock 3, line 16, t25(SI8), t21
	c0    cmpne $b0.1 = $r0.4, -6   ## [spec] bblock 3, line 15-1,  t74(I1),  t49,  -6(SI32)
	c0    cmpne $b0.2 = $r0.4, -5   ## [spec] bblock 23, line 15-2,  t80(I1),  t49,  -5(SI32)
;;								## 0
	c0    cmpne $b0.3 = $r0.4, -4   ## [spec] bblock 20, line 15-3,  t79(I1),  t49,  -4(SI32)
	c0    cmpne $b0.4 = $r0.4, -3   ## [spec] bblock 17, line 15-4,  t78(I1),  t49,  -3(SI32)
	c0    cmpne $b0.5 = $r0.4, -2   ## [spec] bblock 14, line 15-5,  t77(I1),  t49,  -2(SI32)
	c0    mov $r0.6 = $r0.4   ## [spec] bblock 11, line 0,  t28,  t49
;;								## 1
	c0    cmpne $b0.0 = $r0.4, -1   ## [spec] bblock 11, line 15-6,  t76(I1),  t49,  -1(SI32)
	c0    add $r0.4 = $r0.4, (~0x7)   ## [spec] bblock 8, line 0,  t49,  t49,  (~0x7)(I32)
	c0    cmpne $b0.6 = $r0.6, $r0.0   ## [spec] bblock 8, line 15-7,  t75(I1),  t28,  0(SI32)
	c0    brf $b0.0, L1?3   ## bblock 1, line 15,  t73(I1)
;;								## 2
	c0    stb 0[$r0.5] = $r0.3   ## bblock 3, line 16, t20, t25(SI8)
	c0    brf $b0.1, L2?3   ## bblock 3, line 15-1,  t74(I1)
;;								## 3
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 23, line 16-1, t44(SI8), t21
	      xnop 2
;;								## 6
	c0    stb 0[$r0.5] = $r0.3   ## bblock 23, line 16-1, t20, t44(SI8)
	c0    brf $b0.2, L3?3   ## bblock 23, line 15-2,  t80(I1)
;;								## 7
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 20, line 16-2, t41(SI8), t21
	      xnop 2
;;								## 10
	c0    stb 0[$r0.5] = $r0.3   ## bblock 20, line 16-2, t20, t41(SI8)
	c0    brf $b0.3, L4?3   ## bblock 20, line 15-3,  t79(I1)
;;								## 11
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 17, line 16-3, t38(SI8), t21
	      xnop 2
;;								## 14
	c0    stb 0[$r0.5] = $r0.3   ## bblock 17, line 16-3, t20, t38(SI8)
	c0    brf $b0.4, L5?3   ## bblock 17, line 15-4,  t78(I1)
;;								## 15
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 14, line 16-4, t35(SI8), t21
	      xnop 2
;;								## 18
	c0    stb 0[$r0.5] = $r0.3   ## bblock 14, line 16-4, t20, t35(SI8)
	c0    brf $b0.5, L6?3   ## bblock 14, line 15-5,  t77(I1)
;;								## 19
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 11, line 16-5, t32(SI8), t21
	      xnop 2
;;								## 22
	c0    stb 0[$r0.5] = $r0.3   ## bblock 11, line 16-5, t20, t32(SI8)
	c0    brf $b0.0, L7?3   ## bblock 11, line 15-6,  t76(I1)
;;								## 23
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 8, line 16-6, t29(SI8), t21
	      xnop 2
;;								## 26
	c0    stb 0[$r0.5] = $r0.3   ## bblock 8, line 16-6, t20, t29(SI8)
	c0    brf $b0.6, L8?3   ## bblock 8, line 15-7,  t75(I1)
;;								## 27
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 5, line 16-7, t3(SI8), t21
	      xnop 2
;;								## 30
	c0    stb 0[$r0.5] = $r0.3   ## bblock 5, line 16-7, t20, t3(SI8)
	c0    goto L0?3 ## goto
;;								## 31
.trace 11
L8?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 10
L7?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 9
L6?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 8
L5?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 7
L4?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 6
L3?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 5
L2?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 4
L1?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 18,  t7,  ?2.3?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.3?2auto_size, 0x0
 ## End memcpy
.equ _?1TEMPLATEPACKET.12, 0x0
 ## Begin strncmp
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32,$r0.5:u32)
strncmp::
.trace 3
	      ## auto_size == 0
	c0    mov $r0.13 = 7   ## bblock 0, line 0,  t88,  7(I32)
	c0    mov $r0.12 = 6   ## bblock 0, line 0,  t85,  6(I32)
;;								## 0
	c0    mov $r0.11 = 5   ## bblock 0, line 0,  t82,  5(I32)
	c0    mov $r0.10 = 4   ## bblock 0, line 0,  t79,  4(I32)
	c0    mov $r0.9 = 3   ## bblock 0, line 0,  t76,  3(I32)
	c0    mov $r0.8 = 2   ## bblock 0, line 0,  t73,  2(I32)
;;								## 1
	c0    mov $r0.6 = $r0.4   ## bblock 0, line 21,  t94,  t35
	c0    mov $r0.4 = $r0.3   ## bblock 0, line 21,  t95,  t34
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 23,  t38,  0(SI32)
	c0    mov $r0.7 = 1   ## bblock 0, line 0,  t91,  1(I32)
;;								## 2
	c0    mov $r0.3 = $r0.5   ## t36
;;								## 3
.trace 1
L9?3:
	c0    cmpltu $b0.0 = $r0.2, $r0.3   ## bblock 1, line 23,  t179(I1),  t38,  t36
	c0    ldb.d $r0.5 = 0[$r0.4]   ## [spec] bblock 3, line 24, t7(SI8), t95
	c0    cmpltu $b0.1 = $r0.7, $r0.3   ## [spec] bblock 5, line 23-1,  t182(I1),  t91,  t36
	c0    cmpltu $b0.2 = $r0.8, $r0.3   ## [spec] bblock 53, line 23-2,  t202(I1),  t73,  t36
;;								## 0
	c0    ldb.d $r0.14 = 0[$r0.6]   ## [spec] bblock 3, line 24, t11(SI8), t94
	c0    cmpltu $b0.3 = $r0.9, $r0.3   ## [spec] bblock 46, line 23-3,  t199(I1),  t76,  t36
	c0    cmpltu $b0.4 = $r0.10, $r0.3   ## [spec] bblock 39, line 23-4,  t196(I1),  t79,  t36
	c0    cmpltu $b0.5 = $r0.11, $r0.3   ## [spec] bblock 32, line 23-5,  t193(I1),  t82,  t36
;;								## 1
	c0    ldb.d $r0.15 = 1[$r0.4]   ## [spec] bblock 51, line 24-1, t69(SI8), t95
	c0    cmpltu $b0.0 = $r0.12, $r0.3   ## [spec] bblock 25, line 23-6,  t190(I1),  t85,  t36
	c0    cmpltu $b0.6 = $r0.13, $r0.3   ## [spec] bblock 18, line 23-7,  t187(I1),  t88,  t36
	c0    brf $b0.0, L10?3   ## bblock 1, line 23,  t179(I1)
;;								## 2
	c0    ldb.d $r0.16 = 1[$r0.6]   ## [spec] bblock 51, line 24-1, t71(SI8), t94
	c0    add $r0.9 = $r0.9, 8   ## [spec] bblock 11, line 0,  t76,  t76,  8(I32)
	c0    add $r0.8 = $r0.8, 8   ## [spec] bblock 11, line 0,  t73,  t73,  8(I32)
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 11, line 23-7,  t38,  t38,  8(SI32)
;;								## 3
	c0    cmplt $b0.7 = $r0.5, $r0.14   ## bblock 3, line 24,  t180(I1),  t7(SI8),  t11(SI8)
	c0    cmpgt $b0.6 = $r0.5, $r0.14   ## [spec] bblock 4, line 25,  t181(I1),  t7(SI8),  t11(SI8)
	c0    ldb.d $r0.5 = 2[$r0.4]   ## [spec] bblock 44, line 24-2, t64(SI8), t95
	c0    mfb $r0.17 = $b0.6   ## [spec] t187(I1)
;;								## 4
	c0    ldb.d $r0.14 = 2[$r0.6]   ## [spec] bblock 44, line 24-2, t66(SI8), t94
	c0    add $r0.12 = $r0.12, 8   ## [spec] bblock 11, line 0,  t85,  t85,  8(I32)
	c0    add $r0.11 = $r0.11, 8   ## [spec] bblock 11, line 0,  t82,  t82,  8(I32)
	c0    add $r0.10 = $r0.10, 8   ## [spec] bblock 11, line 0,  t79,  t79,  8(I32)
;;								## 5
	c0    cmplt $b0.7 = $r0.15, $r0.16   ## [spec] bblock 51, line 24-1,  t200(I1),  t69(SI8),  t71(SI8)
	c0    cmpgt $b0.0 = $r0.15, $r0.16   ## [spec] bblock 52, line 25-1,  t201(I1),  t69(SI8),  t71(SI8)
	c0    mfb $r0.18 = $b0.0   ## [spec] t190(I1)
	c0    br $b0.7, L11?3   ## bblock 3, line 24,  t180(I1)
;;								## 6
	c0    ldb.d $r0.15 = 3[$r0.4]   ## [spec] bblock 37, line 24-3, t59(SI8), t95
	c0    add $r0.13 = $r0.13, 8   ## [spec] bblock 11, line 0,  t88,  t88,  8(I32)
	c0    mtb $b0.6 = $r0.18   ## [spec] t190(I1)
	c0    br $b0.6, L12?3   ## bblock 4, line 25,  t181(I1)
;;								## 7
	c0    cmplt $b0.1 = $r0.5, $r0.14   ## [spec] bblock 44, line 24-2,  t197(I1),  t64(SI8),  t66(SI8)
	c0    cmpgt $b0.5 = $r0.5, $r0.14   ## [spec] bblock 45, line 25-2,  t198(I1),  t64(SI8),  t66(SI8)
	c0    mfb $r0.16 = $b0.5   ## [spec] t193(I1)
	c0    brf $b0.1, L13?3   ## bblock 5, line 23-1,  t182(I1)
;;								## 8
	c0    ldb.d $r0.5 = 3[$r0.6]   ## [spec] bblock 37, line 24-3, t61(SI8), t94
	c0    add $r0.7 = $r0.7, 8   ## [spec] bblock 11, line 0,  t91,  t91,  8(I32)
	c0    mtb $b0.7 = $r0.16   ## [spec] t193(I1)
	c0    br $b0.7, L14?3   ## bblock 51, line 24-1,  t200(I1)
;;								## 9
	c0    ldb.d $r0.14 = 4[$r0.4]   ## [spec] bblock 30, line 24-4, t54(SI8), t95
	c0    mtb $b0.0 = $r0.17   ## [spec] t187(I1)
	c0    br $b0.0, L15?3   ## bblock 52, line 25-1,  t201(I1)
;;								## 10
	c0    ldb.d $r0.16 = 4[$r0.6]   ## [spec] bblock 30, line 24-4, t56(SI8), t94
	c0    brf $b0.2, L16?3   ## bblock 53, line 23-2,  t202(I1)
;;								## 11
	c0    cmplt $b0.1 = $r0.15, $r0.5   ## [spec] bblock 37, line 24-3,  t194(I1),  t59(SI8),  t61(SI8)
	c0    cmpgt $b0.2 = $r0.15, $r0.5   ## [spec] bblock 38, line 25-3,  t195(I1),  t59(SI8),  t61(SI8)
	c0    ldb.d $r0.5 = 5[$r0.4]   ## [spec] bblock 23, line 24-5, t49(SI8), t95
	c0    br $b0.1, L17?3   ## bblock 44, line 24-2,  t197(I1)
;;								## 12
	c0    ldb.d $r0.15 = 5[$r0.6]   ## [spec] bblock 23, line 24-5, t51(SI8), t94
	c0    br $b0.5, L18?3   ## bblock 45, line 25-2,  t198(I1)
;;								## 13
	c0    cmplt $b0.3 = $r0.14, $r0.16   ## [spec] bblock 30, line 24-4,  t191(I1),  t54(SI8),  t56(SI8)
	c0    cmpgt $b0.5 = $r0.14, $r0.16   ## [spec] bblock 31, line 25-4,  t192(I1),  t54(SI8),  t56(SI8)
	c0    ldb.d $r0.14 = 6[$r0.4]   ## [spec] bblock 16, line 24-6, t46(SI8), t95
	c0    brf $b0.3, L19?3   ## bblock 46, line 23-3,  t199(I1)
;;								## 14
	c0    ldb.d $r0.16 = 6[$r0.6]   ## [spec] bblock 16, line 24-6, t45(SI8), t94
	c0    br $b0.1, L20?3   ## bblock 37, line 24-3,  t194(I1)
;;								## 15
	c0    cmplt $b0.1 = $r0.5, $r0.15   ## [spec] bblock 23, line 24-5,  t188(I1),  t49(SI8),  t51(SI8)
	c0    cmpgt $b0.2 = $r0.5, $r0.15   ## [spec] bblock 24, line 25-5,  t189(I1),  t49(SI8),  t51(SI8)
	c0    ldb.d $r0.5 = 7[$r0.4]   ## [spec] bblock 9, line 24-7, t41(SI8), t95
	c0    br $b0.2, L21?3   ## bblock 38, line 25-3,  t195(I1)
;;								## 16
	c0    ldb.d $r0.15 = 7[$r0.6]   ## [spec] bblock 9, line 24-7, t39(SI8), t94
	c0    add $r0.4 = $r0.4, 8   ## [spec] bblock 11, line 0,  t95,  t95,  8(I32)
	c0    add $r0.6 = $r0.6, 8   ## [spec] bblock 11, line 0,  t94,  t94,  8(I32)
	c0    brf $b0.4, L22?3   ## bblock 39, line 23-4,  t196(I1)
;;								## 17
	c0    cmplt $b0.3 = $r0.14, $r0.16   ## [spec] bblock 16, line 24-6,  t185(I1),  t46(SI8),  t45(SI8)
	c0    cmpgt $b0.4 = $r0.14, $r0.16   ## [spec] bblock 17, line 25-6,  t186(I1),  t46(SI8),  t45(SI8)
	c0    br $b0.3, L23?3   ## bblock 30, line 24-4,  t191(I1)
;;								## 18
	c0    br $b0.5, L24?3   ## bblock 31, line 25-4,  t192(I1)
;;								## 19
	c0    cmplt $b0.5 = $r0.5, $r0.15   ## [spec] bblock 9, line 24-7,  t183(I1),  t41(SI8),  t39(SI8)
	c0    cmpgt $b0.7 = $r0.5, $r0.15   ## [spec] bblock 10, line 25-7,  t184(I1),  t41(SI8),  t39(SI8)
	c0    brf $b0.7, L25?3   ## bblock 32, line 23-5,  t193(I1)
;;								## 20
	c0    br $b0.1, L26?3   ## bblock 23, line 24-5,  t188(I1)
;;								## 21
	c0    br $b0.2, L27?3   ## bblock 24, line 25-5,  t189(I1)
;;								## 22
	c0    brf $b0.6, L28?3   ## bblock 25, line 23-6,  t190(I1)
;;								## 23
	c0    br $b0.3, L29?3   ## bblock 16, line 24-6,  t185(I1)
;;								## 24
	c0    br $b0.4, L30?3   ## bblock 17, line 25-6,  t186(I1)
;;								## 25
	c0    brf $b0.0, L31?3   ## bblock 18, line 23-7,  t187(I1)
;;								## 26
	c0    br $b0.5, L32?3   ## bblock 9, line 24-7,  t183(I1)
;;								## 27
	c0    br $b0.7, L33?3   ## bblock 10, line 25-7,  t184(I1)
	      ## goto
;;
	c0    goto L9?3 ## goto
;;								## 28
.trace 27
L33?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 26
L32?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 25
L31?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 24
L30?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 23
L29?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 22
L28?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 21
L27?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 20
L26?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 19
L25?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 18
L24?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 17
L23?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 16
L22?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 15
L21?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 14
L20?3:
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 13
L19?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 12
L18?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 11
L17?3:
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 10
L16?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 9
L15?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 8
L14?3:
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 7
L13?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 6
L12?3:
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 25,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.trace 5
L11?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 24,  t21,  ?2.4?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 4
L10?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 27,  t21,  ?2.4?2auto_size(I32),  t20
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.4?2auto_size, 0x0
 ## End strncmp
 ## Begin rand
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
rand::
.trace 1
	      ## auto_size == 0
	c0    ldw $r0.2 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 0, line 30, t0, 0(I32)
	      xnop 2
;;								## 2
	c0    mpylu $r0.4 = $r0.2, 1103515245   ## bblock 0, line 32,  t18,  t0,  1103515245(SI32)
	c0    mpyhs $r0.2 = $r0.2, 1103515245   ## bblock 0, line 32,  t19,  t0,  1103515245(SI32)
	      xnop 1
;;								## 4
	c0    add $r0.4 = $r0.4, $r0.2   ## bblock 0, line 32,  t1,  t18,  t19
;;								## 5
	c0    add $r0.4 = $r0.4, 12345   ## bblock 0, line 32,  t3,  t1,  12345(SI32)
;;								## 6
	c0    stw ((_?1PACKET.2 + 0) + 0)[$r0.0] = $r0.4   ## bblock 0, line 33, 0(I32), t3
	c0    shru $r0.2 = $r0.4, 16   ## bblock 0, line 33,  t4(I16),  t3,  16(I32)
;;								## 7
.return ret($r0.3:s32)
	c0    and $r0.3 = $r0.2, 32767   ## bblock 0, line 33,  t5,  t4(I16),  32767(I32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 33,  t7,  ?2.5?2auto_size(I32),  t6
;;								## 8
.endp
.section .bss
.section .data
_?1PACKET.2:
    .data4 1
.section .data
.section .text
.equ ?2.5?2auto_size, 0x0
 ## End rand
 ## Begin sin
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-128, arg($r0.3:u32,$r0.4:u32)
sin::
.trace 9
	c0    add $r0.1 = $r0.1, (-0x80)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t137
;;								## 1
	c0    stw 0x2c[$r0.1] = $r0.57  ## spill ## t141
;;								## 2
	c0    mov $r0.57 = $r0.3   ## t150
	c0    stw 0x30[$r0.1] = $r0.58  ## spill ## t142
;;								## 3
	c0    mov $r0.58 = $r0.4   ## t151
;;								## 4
.trace 1
L34?3:
	c0    mov $r0.5 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
;;								## 0
.call _d_gt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_gt   ## bblock 1, line 40,  raddr(_d_gt)(P32),  t150,  t151,  1075388923(I32),  1413754136(I32)
	c0    mov $r0.3 = $r0.57   ## t150
	c0    mov $r0.4 = $r0.58   ## t151
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 40,  t163(I1),  t44,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.5 = $r0.57   ## t150
;;								## 2
	c0    mov $r0.3 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.6 = $r0.58   ## t151
;;								## 3
	c0    brf $b0.0, L35?3   ## bblock 1, line 40,  t163(I1)
;;								## 4
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 9, line 40,  raddr(_d_add)(P32),  (~0x3fe6de04)(I32),  1413754136(I32),  t150,  t151
;;								## 5
	c0    mov $r0.57 = $r0.3   ## t150
	c0    mov $r0.58 = $r0.4   ## t151
	c0    goto L34?3 ## goto
;;								## 6
.trace 8
L35?3:
	   ## bblock 11, line 0,  t158,  t151## $r0.58(skipped)
	   ## bblock 11, line 0,  t157,  t150## $r0.57(skipped)
;;								## 0
.trace 2
L36?3:
	c0    mov $r0.5 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
;;								## 0
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 2, line 41,  raddr(_d_lt)(P32),  t157,  t158,  (~0x3fe6de04)(I32),  1413754136(I32)
	c0    mov $r0.3 = $r0.57   ## t157
	c0    mov $r0.4 = $r0.58   ## t158
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 41,  t164(I1),  t45,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.5 = $r0.57   ## t157
;;								## 2
	c0    mov $r0.3 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.6 = $r0.58   ## t158
;;								## 3
	c0    brf $b0.0, L37?3   ## bblock 2, line 41,  t164(I1)
;;								## 4
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 8, line 41,  raddr(_d_add)(P32),  1075388923(I32),  1413754136(I32),  t157,  t158
;;								## 5
	c0    mov $r0.57 = $r0.3   ## t157
	c0    mov $r0.58 = $r0.4   ## t158
	c0    goto L36?3 ## goto
;;								## 6
.trace 10
L37?3:
	c0    stw 0x34[$r0.1] = $r0.59  ## spill ## t143
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw 0x38[$r0.1] = $r0.60  ## spill ## t144
;;								## 1
	c0    stw 0x3c[$r0.1] = $r0.61  ## spill ## t145
;;								## 2
	c0    stw 0x40[$r0.1] = $r0.62  ## spill ## t146
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 12, line 43,  raddr(_d_ilfloat)(P32),  1(SI32)
	c0    stw 0x44[$r0.1] = $r0.63  ## spill ## t147
;;								## 4
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x48[$r0.1] = $r0.3  ## spill ## t65
;;								## 5
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 43,  raddr(_d_mul)(P32),  t65,  t66,  1073741824(I32),  0(I32)
	c0    stw 0x4c[$r0.1] = $r0.4  ## spill ## t66
;;								## 6
	c0    mov $r0.6 = $r0.58   ## t158
	c0    mov $r0.5 = $r0.57   ## t157
	c0    stw 0x50[$r0.1] = $r0.3  ## spill ## t61
;;								## 7
	c0    mov $r0.3 = $r0.57   ## t157
	c0    stw 0x54[$r0.1] = $r0.4  ## spill ## t62
;;								## 8
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 43,  raddr(_d_mul)(P32),  t157,  t158,  t157,  t158
	c0    mov $r0.4 = $r0.58   ## t158
;;								## 9
	c0    stw 0x58[$r0.1] = $r0.3  ## spill ## t109
;;								## 10
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    stw 0x5c[$r0.1] = $r0.4  ## spill ## t110
;;								## 11
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.5 = 0x50[$r0.1]  ## restore ## t61
;;								## 12
	c0    ldw $r0.6 = 0x54[$r0.1]  ## restore ## t62
	      xnop 1
;;								## 14
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 43,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t61,  t62
;;								## 15
	c0    stw 0x60[$r0.1] = $r0.3  ## spill ## t63
;;								## 16
	c0    stw 0x64[$r0.1] = $r0.4  ## spill ## t64
;;								## 17
	c0    ldw $r0.3 = 0x58[$r0.1]  ## restore ## t109
;;								## 18
	c0    ldw $r0.4 = 0x5c[$r0.1]  ## restore ## t110
	      xnop 1
;;								## 20
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 12, line 43,  raddr(_d_neg)(P32),  t109,  t110
;;								## 21
	c0    stw 0x68[$r0.1] = $r0.3  ## spill ## t111
;;								## 22
	c0    stw 0x6c[$r0.1] = $r0.4  ## spill ## t112
;;								## 23
	c0    ldw $r0.5 = 0x48[$r0.1]  ## restore ## t65
;;								## 24
	c0    ldw $r0.6 = 0x4c[$r0.1]  ## restore ## t66
	      xnop 1
;;								## 26
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 43,  raddr(_d_div)(P32),  t111,  t112,  t65,  t66
;;								## 27
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 43,  raddr(_d_div)(P32),  t77,  t78,  1073741824(I32),  0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 28
	c0    ldw $r0.5 = 0x60[$r0.1]  ## restore ## t63
;;								## 29
	c0    ldw $r0.6 = 0x64[$r0.1]  ## restore ## t64
	      xnop 1
;;								## 31
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 43,  raddr(_d_div)(P32),  t79,  t80,  t63,  t64
;;								## 32
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 43,  raddr(_d_mul)(P32),  t81,  t82,  t157,  t158
	c0    mov $r0.6 = $r0.58   ## t158
	c0    mov $r0.5 = $r0.57   ## t157
;;								## 33
	c0    mov $r0.6 = $r0.58   ## t158
	c0    mov $r0.5 = $r0.57   ## t157
	c0    stw 0x24[$r0.1] = $r0.3  ## spill ## t153
;;								## 34
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 44,  raddr(_d_add)(P32),  t153,  t154,  t157,  t158
	c0    stw 0x28[$r0.1] = $r0.4  ## spill ## t154
;;								## 35
	c0    mov $r0.59 = 2   ## bblock 12, line 45,  t152,  2(SI32)
	c0    ldw $r0.60 = 0x68[$r0.1]  ## restore ## t111
	c0    mov $r0.62 = $r0.3   ## t155
	c0    mov $r0.63 = $r0.4   ## t156
;;								## 36
	c0    ldw $r0.61 = 0x6c[$r0.1]  ## restore ## t112
;;								## 37
	c0    ldw $r0.57 = 0x24[$r0.1]  ## restore ## t153
;;								## 38
	c0    ldw $r0.58 = 0x28[$r0.1]  ## restore ## t154
	      xnop 1
;;								## 40
;;								## 41
.trace 3
L38?3:
.call fabs, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabs   ## bblock 4, line 46,  raddr(fabs)(P32),  t153,  t154
	c0    mov $r0.3 = $r0.57   ## t153
	c0    mov $r0.4 = $r0.58   ## t154
;;								## 0
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 1
.call _d_ge, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_ge   ## bblock 5, line 46,  raddr(_d_ge)(P32),  t93,  t94,  1055193269(I32),  (~0x771c970e)(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 5, line 46,  t165(I1),  t49,  0(I1)
	c0    mov $r0.3 = $r0.59   ## t152
	      xnop 1
;;								## 4
	c0    brf $b0.0, L39?3   ## bblock 5, line 46,  t165(I1)
;;								## 5
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 7, line 47,  raddr(_d_ilfloat)(P32),  t152
;;								## 6
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t103
;;								## 7
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 47,  raddr(_d_mul)(P32),  t103,  t104,  1073741824(I32),  0(I32)
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t104
;;								## 8
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    mov $r0.5 = $r0.3   ## t99
	c0    mov $r0.6 = $r0.4   ## t100
;;								## 9
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 47,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t99,  t100
	c0    mov $r0.4 = $r0.0   ## 0(I32)
;;								## 10
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t101
;;								## 11
	c0    mov $r0.3 = $r0.60   ## t111
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t102
;;								## 12
	c0    mov $r0.4 = $r0.61   ## t112
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t103
;;								## 13
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t104
	      xnop 1
;;								## 15
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 47,  raddr(_d_div)(P32),  t111,  t112,  t103,  t104
;;								## 16
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 47,  raddr(_d_div)(P32),  t115,  t116,  1073741824(I32),  0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 17
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t101
;;								## 18
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t102
	      xnop 1
;;								## 20
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 47,  raddr(_d_div)(P32),  t117,  t118,  t101,  t102
;;								## 21
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 47,  raddr(_d_mul)(P32),  t119,  t120,  t153,  t154
	c0    mov $r0.5 = $r0.57   ## t153
	c0    mov $r0.6 = $r0.58   ## t154
;;								## 22
	c0    mov $r0.5 = $r0.62   ## t155
	c0    mov $r0.6 = $r0.63   ## t156
	c0    stw 0x24[$r0.1] = $r0.3  ## spill ## t153
;;								## 23
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 48,  raddr(_d_add)(P32),  t153,  t154,  t155,  t156
	c0    stw 0x28[$r0.1] = $r0.4  ## spill ## t154
;;								## 24
	c0    add $r0.59 = $r0.59, 1   ## bblock 7, line 49,  t152,  t152,  1(SI32)
	c0    ldw $r0.58 = 0x28[$r0.1]  ## restore ## t154
	c0    mov $r0.62 = $r0.3   ## t155
	c0    mov $r0.63 = $r0.4   ## t156
;;								## 25
	c0    ldw $r0.57 = 0x24[$r0.1]  ## restore ## t153
	      xnop 1
;;								## 27
	c0    goto L38?3 ## goto
;;								## 28
.trace 7
L39?3:
	c0    mov $r0.4 = $r0.63   ## t156
	c0    mov $r0.3 = $r0.62   ## t155
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t137
	      xnop 3
;;								## 3
	c0    ldw $r0.57 = 0x2c[$r0.1]  ## restore ## t141
;;								## 4
	c0    ldw $r0.58 = 0x30[$r0.1]  ## restore ## t142
;;								## 5
	c0    ldw $r0.59 = 0x34[$r0.1]  ## restore ## t143
;;								## 6
	c0    ldw $r0.60 = 0x38[$r0.1]  ## restore ## t144
;;								## 7
	c0    ldw $r0.61 = 0x3c[$r0.1]  ## restore ## t145
;;								## 8
	c0    ldw $r0.62 = 0x40[$r0.1]  ## restore ## t146
;;								## 9
	c0    ldw $r0.63 = 0x44[$r0.1]  ## restore ## t147
	      xnop 1
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 13, line 51,  t138,  ?2.6?2auto_size(I32),  t137
;;								## 12
.endp
.section .bss
.section .data
.equ ?2.6?2scratch.0, 0x0
.equ ?2.6?2ras_p, 0x10
.equ ?2.6?2spill_p, 0x14
.section .data
.section .text
.equ ?2.6?2auto_size, 0x80
 ## End sin
 ## Begin cos
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-128, arg($r0.3:u32,$r0.4:u32)
cos::
.trace 7
	c0    add $r0.1 = $r0.1, (-0x80)
	c0    mov $r0.6 = $r0.4   ## t56
	c0    mov $r0.5 = $r0.3   ## t55
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t143
	c0    mov $r0.3 = 1073291771   ## 1073291771(I32)
;;								## 1
	c0    stw 0x2c[$r0.1] = $r0.57  ## spill ## t147
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 2
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 0, line 58,  raddr(_d_add)(P32),  1073291771(I32),  1413754136(I32),  t55,  t56
	c0    stw 0x30[$r0.1] = $r0.58  ## spill ## t148
;;								## 3
	c0    mov $r0.57 = $r0.3   ## t156
	c0    mov $r0.58 = $r0.4   ## t157
;;								## 4
.trace 1
L40?3:
	c0    mov $r0.5 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
;;								## 0
.call _d_gt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_gt   ## bblock 1, line 59,  raddr(_d_gt)(P32),  t156,  t157,  1075388923(I32),  1413754136(I32)
	c0    mov $r0.3 = $r0.57   ## t156
	c0    mov $r0.4 = $r0.58   ## t157
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 59,  t169(I1),  t46,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.5 = $r0.57   ## t156
;;								## 2
	c0    mov $r0.3 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.6 = $r0.58   ## t157
;;								## 3
	c0    brf $b0.0, L41?3   ## bblock 1, line 59,  t169(I1)
;;								## 4
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 9, line 59,  raddr(_d_add)(P32),  (~0x3fe6de04)(I32),  1413754136(I32),  t156,  t157
;;								## 5
	c0    mov $r0.57 = $r0.3   ## t156
	c0    mov $r0.58 = $r0.4   ## t157
	c0    goto L40?3 ## goto
;;								## 6
.trace 8
L41?3:
	   ## bblock 11, line 0,  t164,  t157## $r0.58(skipped)
	   ## bblock 11, line 0,  t163,  t156## $r0.57(skipped)
;;								## 0
.trace 2
L42?3:
	c0    mov $r0.5 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
;;								## 0
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 2, line 60,  raddr(_d_lt)(P32),  t163,  t164,  (~0x3fe6de04)(I32),  1413754136(I32)
	c0    mov $r0.3 = $r0.57   ## t163
	c0    mov $r0.4 = $r0.58   ## t164
;;								## 1
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 60,  t170(I1),  t47,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.5 = $r0.57   ## t163
;;								## 2
	c0    mov $r0.3 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.6 = $r0.58   ## t164
;;								## 3
	c0    brf $b0.0, L43?3   ## bblock 2, line 60,  t170(I1)
;;								## 4
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 8, line 60,  raddr(_d_add)(P32),  1075388923(I32),  1413754136(I32),  t163,  t164
;;								## 5
	c0    mov $r0.57 = $r0.3   ## t163
	c0    mov $r0.58 = $r0.4   ## t164
	c0    goto L42?3 ## goto
;;								## 6
.trace 10
L43?3:
	c0    stw 0x34[$r0.1] = $r0.59  ## spill ## t149
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw 0x38[$r0.1] = $r0.60  ## spill ## t150
;;								## 1
	c0    stw 0x3c[$r0.1] = $r0.61  ## spill ## t151
;;								## 2
	c0    stw 0x40[$r0.1] = $r0.62  ## spill ## t152
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 12, line 62,  raddr(_d_ilfloat)(P32),  1(SI32)
	c0    stw 0x44[$r0.1] = $r0.63  ## spill ## t153
;;								## 4
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x48[$r0.1] = $r0.3  ## spill ## t71
;;								## 5
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 62,  raddr(_d_mul)(P32),  t71,  t72,  1073741824(I32),  0(I32)
	c0    stw 0x4c[$r0.1] = $r0.4  ## spill ## t72
;;								## 6
	c0    mov $r0.6 = $r0.58   ## t164
	c0    mov $r0.5 = $r0.57   ## t163
	c0    stw 0x50[$r0.1] = $r0.3  ## spill ## t67
;;								## 7
	c0    mov $r0.3 = $r0.57   ## t163
	c0    stw 0x54[$r0.1] = $r0.4  ## spill ## t68
;;								## 8
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 62,  raddr(_d_mul)(P32),  t163,  t164,  t163,  t164
	c0    mov $r0.4 = $r0.58   ## t164
;;								## 9
	c0    stw 0x58[$r0.1] = $r0.3  ## spill ## t115
;;								## 10
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    stw 0x5c[$r0.1] = $r0.4  ## spill ## t116
;;								## 11
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.5 = 0x50[$r0.1]  ## restore ## t67
;;								## 12
	c0    ldw $r0.6 = 0x54[$r0.1]  ## restore ## t68
	      xnop 1
;;								## 14
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 62,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t67,  t68
;;								## 15
	c0    stw 0x60[$r0.1] = $r0.3  ## spill ## t69
;;								## 16
	c0    stw 0x64[$r0.1] = $r0.4  ## spill ## t70
;;								## 17
	c0    ldw $r0.3 = 0x58[$r0.1]  ## restore ## t115
;;								## 18
	c0    ldw $r0.4 = 0x5c[$r0.1]  ## restore ## t116
	      xnop 1
;;								## 20
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 12, line 62,  raddr(_d_neg)(P32),  t115,  t116
;;								## 21
	c0    stw 0x68[$r0.1] = $r0.3  ## spill ## t117
;;								## 22
	c0    stw 0x6c[$r0.1] = $r0.4  ## spill ## t118
;;								## 23
	c0    ldw $r0.5 = 0x48[$r0.1]  ## restore ## t71
;;								## 24
	c0    ldw $r0.6 = 0x4c[$r0.1]  ## restore ## t72
	      xnop 1
;;								## 26
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 62,  raddr(_d_div)(P32),  t117,  t118,  t71,  t72
;;								## 27
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 62,  raddr(_d_div)(P32),  t83,  t84,  1073741824(I32),  0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 28
	c0    ldw $r0.5 = 0x60[$r0.1]  ## restore ## t69
;;								## 29
	c0    ldw $r0.6 = 0x64[$r0.1]  ## restore ## t70
	      xnop 1
;;								## 31
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 62,  raddr(_d_div)(P32),  t85,  t86,  t69,  t70
;;								## 32
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 62,  raddr(_d_mul)(P32),  t87,  t88,  t163,  t164
	c0    mov $r0.6 = $r0.58   ## t164
	c0    mov $r0.5 = $r0.57   ## t163
;;								## 33
	c0    mov $r0.6 = $r0.58   ## t164
	c0    mov $r0.5 = $r0.57   ## t163
	c0    stw 0x24[$r0.1] = $r0.3  ## spill ## t159
;;								## 34
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 63,  raddr(_d_add)(P32),  t159,  t160,  t163,  t164
	c0    stw 0x28[$r0.1] = $r0.4  ## spill ## t160
;;								## 35
	c0    mov $r0.59 = 2   ## bblock 12, line 64,  t158,  2(SI32)
	c0    ldw $r0.60 = 0x68[$r0.1]  ## restore ## t117
	c0    mov $r0.62 = $r0.3   ## t161
	c0    mov $r0.63 = $r0.4   ## t162
;;								## 36
	c0    ldw $r0.61 = 0x6c[$r0.1]  ## restore ## t118
;;								## 37
	c0    ldw $r0.57 = 0x24[$r0.1]  ## restore ## t159
;;								## 38
	c0    ldw $r0.58 = 0x28[$r0.1]  ## restore ## t160
	      xnop 1
;;								## 40
;;								## 41
.trace 3
L44?3:
.call fabs, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabs   ## bblock 4, line 65,  raddr(fabs)(P32),  t159,  t160
	c0    mov $r0.3 = $r0.57   ## t159
	c0    mov $r0.4 = $r0.58   ## t160
;;								## 0
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 1
.call _d_ge, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_ge   ## bblock 5, line 65,  raddr(_d_ge)(P32),  t99,  t100,  1055193269(I32),  (~0x771c970e)(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 5, line 65,  t171(I1),  t51,  0(I1)
	c0    mov $r0.3 = $r0.59   ## t158
	      xnop 1
;;								## 4
	c0    brf $b0.0, L45?3   ## bblock 5, line 65,  t171(I1)
;;								## 5
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 7, line 66,  raddr(_d_ilfloat)(P32),  t158
;;								## 6
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t109
;;								## 7
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 66,  raddr(_d_mul)(P32),  t109,  t110,  1073741824(I32),  0(I32)
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t110
;;								## 8
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    mov $r0.5 = $r0.3   ## t105
	c0    mov $r0.6 = $r0.4   ## t106
;;								## 9
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 66,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t105,  t106
	c0    mov $r0.4 = $r0.0   ## 0(I32)
;;								## 10
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t107
;;								## 11
	c0    mov $r0.3 = $r0.60   ## t117
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t108
;;								## 12
	c0    mov $r0.4 = $r0.61   ## t118
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t109
;;								## 13
	c0    ldw $r0.6 = 0x18[$r0.1]  ## restore ## t110
	      xnop 1
;;								## 15
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 66,  raddr(_d_div)(P32),  t117,  t118,  t109,  t110
;;								## 16
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 66,  raddr(_d_div)(P32),  t121,  t122,  1073741824(I32),  0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 17
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t107
;;								## 18
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t108
	      xnop 1
;;								## 20
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 66,  raddr(_d_div)(P32),  t123,  t124,  t107,  t108
;;								## 21
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 66,  raddr(_d_mul)(P32),  t125,  t126,  t159,  t160
	c0    mov $r0.5 = $r0.57   ## t159
	c0    mov $r0.6 = $r0.58   ## t160
;;								## 22
	c0    mov $r0.5 = $r0.62   ## t161
	c0    mov $r0.6 = $r0.63   ## t162
	c0    stw 0x24[$r0.1] = $r0.3  ## spill ## t159
;;								## 23
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 67,  raddr(_d_add)(P32),  t159,  t160,  t161,  t162
	c0    stw 0x28[$r0.1] = $r0.4  ## spill ## t160
;;								## 24
	c0    add $r0.59 = $r0.59, 1   ## bblock 7, line 68,  t158,  t158,  1(SI32)
	c0    ldw $r0.58 = 0x28[$r0.1]  ## restore ## t160
	c0    mov $r0.62 = $r0.3   ## t161
	c0    mov $r0.63 = $r0.4   ## t162
;;								## 25
	c0    ldw $r0.57 = 0x24[$r0.1]  ## restore ## t159
	      xnop 1
;;								## 27
	c0    goto L44?3 ## goto
;;								## 28
.trace 9
L45?3:
	c0    mov $r0.4 = $r0.63   ## t162
	c0    mov $r0.3 = $r0.62   ## t161
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t143
	      xnop 3
;;								## 3
	c0    ldw $r0.57 = 0x2c[$r0.1]  ## restore ## t147
;;								## 4
	c0    ldw $r0.58 = 0x30[$r0.1]  ## restore ## t148
;;								## 5
	c0    ldw $r0.59 = 0x34[$r0.1]  ## restore ## t149
;;								## 6
	c0    ldw $r0.60 = 0x38[$r0.1]  ## restore ## t150
;;								## 7
	c0    ldw $r0.61 = 0x3c[$r0.1]  ## restore ## t151
;;								## 8
	c0    ldw $r0.62 = 0x40[$r0.1]  ## restore ## t152
;;								## 9
	c0    ldw $r0.63 = 0x44[$r0.1]  ## restore ## t153
	      xnop 1
;;								## 11
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 13, line 70,  t144,  ?2.7?2auto_size(I32),  t143
;;								## 12
.endp
.section .bss
.section .data
.equ ?2.7?2scratch.0, 0x0
.equ ?2.7?2ras_p, 0x10
.equ ?2.7?2spill_p, 0x14
.section .data
.section .text
.equ ?2.7?2auto_size, 0x80
 ## End cos
 ## Begin tan
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
tan::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t15
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t29
;;								## 2
.call cos, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = cos   ## bblock 0, line 74,  raddr(cos)(P32),  t28,  t29
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t28
;;								## 3
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t7
;;								## 4
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t8
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t29
;;								## 6
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t28
	      xnop 1
;;								## 8
.call sin, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = sin   ## bblock 1, line 74,  raddr(sin)(P32),  t28,  t29
;;								## 9
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t7
;;								## 10
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t8
	      xnop 1
;;								## 12
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 2, line 74,  raddr(_d_div)(P32),  t11,  t12,  t7,  t8
;;								## 13
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t15
	      xnop 3
;;								## 17
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 2, line 74,  t16,  ?2.8?2auto_size(I32),  t15
;;								## 18
.endp
.section .bss
.section .data
.equ ?2.8?2scratch.0, 0x0
.equ ?2.8?2ras_p, 0x10
.equ ?2.8?2spill_p, 0x14
.section .data
.section .text
.equ ?2.8?2auto_size, 0x40
 ## End tan
 ## Begin sqrt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
sqrt::
.trace 4
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t78
	c0    mov $r0.5 = 1076101120   ## 1076101120(I32)
;;								## 1
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t92
;;								## 2
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 0, line 78,  raddr(_d_div)(P32),  t91,  t92,  1076101120(I32),  0(I32)
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t91
;;								## 3
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 83,  t93,  0(SI32)
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t101
;;								## 4
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t102
;;								## 5
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t93
;;								## 6
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t92
;;								## 7
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t91
	      xnop 1
;;								## 9
.call _d_eq, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_eq   ## bblock 0, line 84,  raddr(_d_eq)(P32),  t91,  t92,  0(I32),  0(I32)
;;								## 10
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 0, line 84,  t111(I1),  t27,  0(I1)
	c0    mov $r0.4 = $r0.0   ## [spec] bblock 10, line 85,  t105,  0(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t78
	      xnop 1
;;								## 12
	c0    mov $r0.3 = $r0.0   ## [spec] bblock 10, line 85,  t106,  0(I32)
	c0    brf $b0.0, L46?3   ## bblock 0, line 84,  t111(I1)
;;								## 13
;;								## 14
L47?3:
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 99,  t79,  ?2.9?2auto_size(I32),  t78
;;								## 15
.trace 5
L46?3:
	c0    stw 0x28[$r0.1] = $r0.57  ## spill ## t82
;;								## 0
	c0    mov $r0.57 = (~0x12)   ## bblock 1, line 0,  t107,  (~0x12)(I32)
	c0    stw 0x2c[$r0.1] = $r0.58  ## spill ## t83
;;								## 1
	c0    stw 0x30[$r0.1] = $r0.59  ## spill ## t84
;;								## 2
	c0    stw 0x34[$r0.1] = $r0.60  ## spill ## t85
;;								## 3
	c0    stw 0x38[$r0.1] = $r0.61  ## spill ## t86
;;								## 4
	c0    stw 0x3c[$r0.1] = $r0.62  ## spill ## t87
;;								## 5
	c0    ldw $r0.59 = 0x14[$r0.1]  ## restore ## t101
;;								## 6
	c0    ldw $r0.60 = 0x18[$r0.1]  ## restore ## t102
;;								## 7
	c0    ldw $r0.58 = 0x24[$r0.1]  ## restore ## t93
;;								## 8
	c0    ldw $r0.61 = 0x20[$r0.1]  ## restore ## t91
;;								## 9
	c0    ldw $r0.62 = 0x1c[$r0.1]  ## restore ## t92
	      xnop 1
;;								## 11
;;								## 12
.trace 1
L48?3:
	c0    cmplt $b0.0 = $r0.57, $r0.0   ## bblock 2, line 88,  t112(I1),  t107,  0(SI32)
	c0    cmpeq $b0.1 = $r0.58, $r0.0   ## [spec] bblock 4, line 89,  t113(I1),  t93,  0(SI32)
	c0    mov $r0.3 = $r0.59   ## t101
	c0    mov $r0.5 = $r0.59   ## t101
;;								## 0
	c0    mov $r0.4 = $r0.60   ## t102
	c0    mov $r0.6 = $r0.60   ## t102
;;								## 1
	c0    brf $b0.0, L49?3   ## bblock 2, line 88,  t112(I1)
;;								## 2
	c0    brf $b0.1, L50?3   ## bblock 4, line 89,  t113(I1)
;;								## 3
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 90,  raddr(_d_mul)(P32),  t101,  t102,  t101,  t102
;;								## 4
	c0    mov $r0.5 = $r0.3   ## t46
	c0    mov $r0.6 = $r0.4   ## t47
;;								## 5
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 7, line 90,  raddr(_d_sub)(P32),  t91,  t92,  t46,  t47
	c0    mov $r0.3 = $r0.61   ## t91
	c0    mov $r0.4 = $r0.62   ## t92
;;								## 6
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 90,  raddr(_d_div)(P32),  t50,  t51,  1073741824(I32),  0(I32)
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 7
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 90,  raddr(_d_div)(P32),  t52,  t53,  t101,  t102
	c0    mov $r0.5 = $r0.59   ## t101
	c0    mov $r0.6 = $r0.60   ## t102
;;								## 8
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 91,  raddr(_d_add)(P32),  t56,  t57,  t101,  t102
	c0    mov $r0.5 = $r0.59   ## t101
	c0    mov $r0.6 = $r0.60   ## t102
;;								## 9
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t101
	c0    mov $r0.5 = $r0.3   ## t101
	c0    mov $r0.6 = $r0.4   ## t102
;;								## 10
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 92,  raddr(_d_mul)(P32),  t101,  t102,  t101,  t102
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t102
;;								## 11
	c0    mov $r0.5 = $r0.3   ## t66
	c0    mov $r0.6 = $r0.4   ## t67
;;								## 12
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 7, line 92,  raddr(_d_sub)(P32),  t91,  t92,  t66,  t67
	c0    mov $r0.3 = $r0.61   ## t91
	c0    mov $r0.4 = $r0.62   ## t92
;;								## 13
.call fabs, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabs   ## bblock 7, line 93,  raddr(fabs)(P32),  t72,  t73
;;								## 14
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 15
.call _d_le, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_le   ## bblock 8, line 93,  raddr(_d_le)(P32),  t74,  t75,  1055193269(I32),  (~0x771c970e)(I32)
;;								## 16
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 8, line 93,  t114(I1),  t103,  0(I32)
	c0    add $r0.57 = $r0.57, 1   ## bblock 6, line 0,  t107,  t107,  1(I32)
	c0    ldw $r0.60 = 0x18[$r0.1]  ## restore ## t102
;;								## 17
	c0    slct $r0.58 = $b0.0, $r0.58, 1   ## bblock 8, line 93,  t93,  t114(I1),  t93,  1(SI32)
	c0    ldw $r0.59 = 0x14[$r0.1]  ## restore ## t101
;;								## 18
L51?3:
;;								## 19
	c0    goto L48?3 ## goto
;;								## 20
.trace 3
L50?3:
	c0    add $r0.57 = $r0.57, 1   ## bblock 6, line 0,  t107,  t107,  1(I32)
	c0    stw 0x18[$r0.1] = $r0.60  ## spill ## t102
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.59  ## spill ## t101
;;								## 1
	c0    ldw $r0.60 = 0x18[$r0.1]  ## restore ## t102
;;								## 2
	c0    ldw $r0.59 = 0x14[$r0.1]  ## restore ## t101
	c0    goto L51?3 ## goto
;;								## 3
.trace 6
L49?3:
	c0    mov $r0.4 = $r0.60   ## bblock 5, line 0,  t105,  t102
	c0    mov $r0.3 = $r0.59   ## bblock 5, line 0,  t106,  t101
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t78
;;								## 0
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t82
;;								## 1
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t83
;;								## 2
	c0    ldw $r0.59 = 0x30[$r0.1]  ## restore ## t84
;;								## 3
	c0    ldw $r0.60 = 0x34[$r0.1]  ## restore ## t85
;;								## 4
	c0    ldw $r0.61 = 0x38[$r0.1]  ## restore ## t86
;;								## 5
	c0    ldw $r0.62 = 0x3c[$r0.1]  ## restore ## t87
	      xnop 1
;;								## 7
	c0    goto L47?3 ## goto
;;								## 8
.endp
.section .bss
.section .data
.equ ?2.9?2scratch.0, 0x0
.equ ?2.9?2ras_p, 0x10
.equ ?2.9?2spill_p, 0x14
.section .data
.section .text
.equ ?2.9?2auto_size, 0x40
 ## End sqrt
 ## Begin putc
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
putc::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    sxtb $r0.3 = $r0.3   ## bblock 0, line 102,  t1(SI8),  t14
;;								## 0
.call putchar, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = putchar   ## bblock 0, line 104,  raddr(putchar)(P32),  t1(SI8)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t2
;;								## 1
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t2
	      xnop 3
;;								## 5
.return ret()
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 1, line 105,  t3,  ?2.10?2auto_size(I32),  t2
;;								## 6
.endp
.section .bss
.section .data
.equ ?2.10?2scratch.0, 0x0
.equ ?2.10?2ras_p, 0x10
.section .data
.section .text
.equ ?2.10?2auto_size, 0x20
 ## End putc
 ## Begin puts
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:u32)
puts::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t5
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.57  ## spill ## t9
;;								## 2
	c0    mov $r0.57 = $r0.3   ## t17
;;								## 3
.trace 1
L52?3:
	c0    ldb $r0.3 = 0[$r0.57]   ## bblock 1, line 108, t1(SI8), t17
	c0    add $r0.57 = $r0.57, 1   ## [spec] bblock 3, line 109,  t17,  t17,  1(SI32)
	      xnop 2
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 108,  t18(I1),  t1(SI8),  0(SI32)
	      xnop 1
;;								## 4
	c0    brf $b0.0, L53?3   ## bblock 1, line 108,  t18(I1)
;;								## 5
.call putc, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putc   ## bblock 3, line 109,  raddr(putc)(P32),  t1(SI8)
	      ## goto
;;
	c0    goto L52?3 ## goto
;;								## 6
.trace 4
L53?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t5
;;								## 0
	c0    ldw $r0.57 = 0x14[$r0.1]  ## restore ## t9
	      xnop 2
;;								## 3
.return ret()
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 111,  t6,  ?2.11?2auto_size(I32),  t5
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.11?2scratch.0, 0x0
.equ ?2.11?2ras_p, 0x10
.equ ?2.11?2spill_p, 0x14
.section .data
.section .text
.equ ?2.11?2auto_size, 0x20
 ## End puts
 ## Begin puti
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-160, arg($r0.3:s32)
puti::
.trace 1
	c0    add $r0.1 = $r0.1, (-0xa0)
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 114,  t128,  0(SI32)
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 0, line 116,  t212(I1),  t126,  0(SI32)
;;								## 0
	c0    add $r0.5 = $r0.1, 0x10   ## bblock 0, line 115,  t0,  t115,  offset(buf?1.33)=0x10(P32)
	c0    mov $r0.6 = 45   ## 45(SI32)
	c0    stw 0x1c[$r0.1] = $l0.0  ## spill ## t114
;;								## 1
	c0    mov $r0.4 = 1000000000   ## 1000000000(SI32)
	c0    stw 0x20[$r0.1] = $r0.5  ## spill ## t0
	c0    brf $b0.0, L54?3   ## bblock 0, line 116,  t212(I1)
;;								## 2
	c0    sub $r0.2 = $r0.0, $r0.3   ## bblock 30, line 117,  t126,  0(I32),  t126
	c0    mov $r0.7 = 1   ## bblock 30, line 118,  t128,  1(SI32)
	c0    stb 0[$r0.5] = $r0.6   ## bblock 30, line 118, t0, 45(SI32)
;;								## 3
L55?3:
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t126
	c0    mov $r0.3 = $r0.2   ## t126
;;								## 4
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 120,  raddr(_i_div)(P32),  t126,  1000000000(SI32)
	c0    stw 0x28[$r0.1] = $r0.7  ## spill ## t128
;;								## 5
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 120,  raddr(_i_rem)(P32),  t7,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 6
	c0    mov $r0.4 = 10   ## 10(SI32)
	c0    stw 0x2c[$r0.1] = $r0.3  ## spill ## t8
;;								## 7
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 9
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 128,  raddr(_i_div)(P32),  t126,  10(SI32)
;;								## 10
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 128,  raddr(_i_rem)(P32),  t95,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 11
	c0    mov $r0.4 = 10   ## 10(SI32)
	c0    stw 0x30[$r0.1] = $r0.3  ## spill ## t96
;;								## 12
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 14
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 129,  raddr(_i_rem)(P32),  t126,  10(SI32)
;;								## 15
	c0    add $r0.5 = $r0.3, 48   ## bblock 1, line 129,  t107,  t106,  48(SI32)
	c0    mov $r0.4 = 100000000   ## 100000000(SI32)
	c0    ldw $r0.2 = 0x2c[$r0.1]  ## restore ## t8
;;								## 16
	c0    stw 0x34[$r0.1] = $r0.5  ## spill ## t107
;;								## 17
	c0    ldw $r0.5 = 0x28[$r0.1]  ## restore ## t128
;;								## 18
	c0    add $r0.2 = $r0.2, 48   ## bblock 1, line 120,  t9,  t8,  48(SI32)
	c0    ldw $r0.6 = 0x30[$r0.1]  ## restore ## t96
;;								## 19
	c0    sxtb $r0.7 = $r0.2   ## bblock 1, line 120,  t10(SI8),  t9
	c0    ldw $r0.8 = 0x20[$r0.1]  ## restore ## t0
;;								## 20
	c0    cmpne $b0.0 = $r0.7, 48   ## bblock 1, line 120,  t145(I1),  t10(SI8),  48(SI32)
	c0    add $r0.9 = $r0.5, 1   ## bblock 1, line 120,  t147,  t128,  1(SI32)
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
;;								## 21
	c0    add $r0.11 = $r0.6, 48   ## bblock 1, line 128,  t97,  t96,  48(SI32)
	c0    slct $r0.7 = $b0.0, $r0.9, $r0.5   ## bblock 1, line 120,  t187,  t145(I1),  t147,  t128
	c0    slct $r0.10 = $b0.0, $r0.9, $r0.0   ## bblock 1, line 120,  t129,  t145(I1),  t147,  0(SI32)
;;								## 22
	c0    sxtb $r0.9 = $r0.11   ## bblock 1, line 128,  t98(SI8),  t97
	c0    add $r0.5 = $r0.5, $r0.8   ## bblock 1, line 120,  t213,  t128,  t0
	c0    add $r0.6 = $r0.7, 1   ## bblock 1, line 121,  t150,  t187,  1(SI32)
	c0    stw 0x38[$r0.1] = $r0.7  ## spill ## t187
;;								## 23
	c0    cmpne $r0.7 = $r0.9, 48   ## bblock 1, line 128,  t144(I1),  t98(SI8),  48(SI32)
	c0    stw 0x3c[$r0.1] = $r0.10  ## spill ## t129
;;								## 24
	c0    stw 0x40[$r0.1] = $r0.11  ## spill ## t97
;;								## 25
	c0    stw 0x44[$r0.1] = $r0.6  ## spill ## t150
;;								## 26
	c0    stw 0x48[$r0.1] = $r0.7  ## spill ## t144(I1)
;;								## 27
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    stb 0[$r0.5] = $r0.2   ## bblock 1, line 120, t213, t9
	c0    call $l0.0 = _i_div   ## bblock 1, line 121,  raddr(_i_div)(P32),  t126,  100000000(SI32)
;;								## 28
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 121,  raddr(_i_rem)(P32),  t18,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 29
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 121,  t20,  t19,  48(SI32)
	c0    mov $r0.4 = 10000000   ## 10000000(SI32)
	c0    ldw $r0.10 = 0x3c[$r0.1]  ## restore ## t129
;;								## 30
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 121,  t21(SI8),  t20
	c0    ldw $r0.7 = 0x38[$r0.1]  ## restore ## t187
;;								## 31
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 121,  t130(I1),  t21(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x44[$r0.1]  ## restore ## t150
;;								## 32
	c0    norl $b0.0 = $r0.10, $r0.2   ## bblock 1, line 121,  t148(I1),  t129,  t130(I1)
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 34
	c0    slct $r0.2 = $b0.0, $r0.7, $r0.6   ## bblock 1, line 121,  t188,  t148(I1),  t187,  t150
	c0    slct $r0.8 = $b0.0, $r0.10, $r0.6   ## bblock 1, line 121,  t131,  t148(I1),  t129,  t150
;;								## 35
	c0    add $r0.7 = $r0.7, $r0.5   ## bblock 1, line 121,  t214,  t187,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 122,  t153,  t188,  1(SI32)
	c0    stw 0x4c[$r0.1] = $r0.2  ## spill ## t188
;;								## 36
	c0    stw 0x50[$r0.1] = $r0.8  ## spill ## t131
;;								## 37
	c0    stw 0x54[$r0.1] = $r0.6  ## spill ## t153
;;								## 38
	c0    stb 0[$r0.7] = $r0.3   ## bblock 1, line 121, t214, t20
;;								## 39
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 41
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 122,  raddr(_i_div)(P32),  t126,  10000000(SI32)
;;								## 42
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 122,  raddr(_i_rem)(P32),  t29,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 43
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 122,  t31,  t30,  48(SI32)
	c0    mov $r0.4 = 1000000   ## 1000000(SI32)
	c0    ldw $r0.8 = 0x50[$r0.1]  ## restore ## t131
;;								## 44
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 122,  t32(SI8),  t31
	c0    ldw $r0.5 = 0x4c[$r0.1]  ## restore ## t188
;;								## 45
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 122,  t132(I1),  t32(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x54[$r0.1]  ## restore ## t153
;;								## 46
	c0    norl $b0.0 = $r0.8, $r0.2   ## bblock 1, line 122,  t151(I1),  t131,  t132(I1)
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 48
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.6   ## bblock 1, line 122,  t189,  t151(I1),  t188,  t153
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.6   ## bblock 1, line 122,  t133,  t151(I1),  t131,  t153
;;								## 49
	c0    add $r0.5 = $r0.5, $r0.7   ## bblock 1, line 122,  t216,  t188,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 123,  t156,  t189,  1(SI32)
	c0    stw 0x58[$r0.1] = $r0.2  ## spill ## t189
;;								## 50
	c0    stw 0x5c[$r0.1] = $r0.9  ## spill ## t133
;;								## 51
	c0    stw 0x60[$r0.1] = $r0.6  ## spill ## t156
;;								## 52
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 122, t216, t31
;;								## 53
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 55
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 123,  raddr(_i_div)(P32),  t126,  1000000(SI32)
;;								## 56
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 123,  raddr(_i_rem)(P32),  t40,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 57
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 123,  t42,  t41,  48(SI32)
	c0    mov $r0.4 = 100000   ## 100000(SI32)
	c0    ldw $r0.9 = 0x5c[$r0.1]  ## restore ## t133
;;								## 58
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 123,  t43(SI8),  t42
	c0    ldw $r0.5 = 0x58[$r0.1]  ## restore ## t189
;;								## 59
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 123,  t134(I1),  t43(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x60[$r0.1]  ## restore ## t156
;;								## 60
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 123,  t154(I1),  t133,  t134(I1)
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 62
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.6   ## bblock 1, line 123,  t190,  t154(I1),  t189,  t156
	c0    slct $r0.8 = $b0.0, $r0.9, $r0.6   ## bblock 1, line 123,  t135,  t154(I1),  t133,  t156
;;								## 63
	c0    add $r0.5 = $r0.5, $r0.7   ## bblock 1, line 123,  t218,  t189,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 124,  t159,  t190,  1(SI32)
	c0    stw 0x64[$r0.1] = $r0.2  ## spill ## t190
;;								## 64
	c0    stw 0x68[$r0.1] = $r0.8  ## spill ## t135
;;								## 65
	c0    stw 0x6c[$r0.1] = $r0.6  ## spill ## t159
;;								## 66
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 123, t218, t42
;;								## 67
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 69
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 124,  raddr(_i_div)(P32),  t126,  100000(SI32)
;;								## 70
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 124,  raddr(_i_rem)(P32),  t51,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 71
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 124,  t53,  t52,  48(SI32)
	c0    mov $r0.4 = 10000   ## 10000(SI32)
	c0    ldw $r0.8 = 0x68[$r0.1]  ## restore ## t135
;;								## 72
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 124,  t54(SI8),  t53
	c0    ldw $r0.5 = 0x64[$r0.1]  ## restore ## t190
;;								## 73
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 124,  t136(I1),  t54(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x6c[$r0.1]  ## restore ## t159
;;								## 74
	c0    norl $b0.0 = $r0.8, $r0.2   ## bblock 1, line 124,  t157(I1),  t135,  t136(I1)
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 76
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.6   ## bblock 1, line 124,  t191,  t157(I1),  t190,  t159
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.6   ## bblock 1, line 124,  t137,  t157(I1),  t135,  t159
;;								## 77
	c0    add $r0.5 = $r0.5, $r0.7   ## bblock 1, line 124,  t220,  t190,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 125,  t162,  t191,  1(SI32)
	c0    stw 0x70[$r0.1] = $r0.2  ## spill ## t191
;;								## 78
	c0    stw 0x74[$r0.1] = $r0.9  ## spill ## t137
;;								## 79
	c0    stw 0x78[$r0.1] = $r0.6  ## spill ## t162
;;								## 80
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 124, t220, t53
;;								## 81
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 83
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 125,  raddr(_i_div)(P32),  t126,  10000(SI32)
;;								## 84
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 125,  raddr(_i_rem)(P32),  t62,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 85
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 125,  t64,  t63,  48(SI32)
	c0    mov $r0.4 = 1000   ## 1000(SI32)
	c0    ldw $r0.9 = 0x74[$r0.1]  ## restore ## t137
;;								## 86
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 125,  t65(SI8),  t64
	c0    ldw $r0.5 = 0x70[$r0.1]  ## restore ## t191
;;								## 87
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 125,  t138(I1),  t65(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x78[$r0.1]  ## restore ## t162
;;								## 88
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 125,  t160(I1),  t137,  t138(I1)
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 90
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.6   ## bblock 1, line 125,  t192,  t160(I1),  t191,  t162
	c0    slct $r0.8 = $b0.0, $r0.9, $r0.6   ## bblock 1, line 125,  t139,  t160(I1),  t137,  t162
;;								## 91
	c0    add $r0.5 = $r0.5, $r0.7   ## bblock 1, line 125,  t222,  t191,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 126,  t165,  t192,  1(SI32)
	c0    stw 0x7c[$r0.1] = $r0.2  ## spill ## t192
;;								## 92
	c0    stw 0x80[$r0.1] = $r0.8  ## spill ## t139
;;								## 93
	c0    stw 0x84[$r0.1] = $r0.6  ## spill ## t165
;;								## 94
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 125, t222, t64
;;								## 95
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 97
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 126,  raddr(_i_div)(P32),  t126,  1000(SI32)
;;								## 98
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 126,  raddr(_i_rem)(P32),  t73,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 99
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 126,  t75,  t74,  48(SI32)
	c0    mov $r0.4 = 100   ## 100(SI32)
	c0    ldw $r0.8 = 0x80[$r0.1]  ## restore ## t139
;;								## 100
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 126,  t76(SI8),  t75
	c0    ldw $r0.5 = 0x7c[$r0.1]  ## restore ## t192
;;								## 101
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 126,  t140(I1),  t76(SI8),  48(SI32)
	c0    ldw $r0.6 = 0x84[$r0.1]  ## restore ## t165
;;								## 102
	c0    norl $b0.0 = $r0.8, $r0.2   ## bblock 1, line 126,  t163(I1),  t139,  t140(I1)
	c0    ldw $r0.7 = 0x20[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 104
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.6   ## bblock 1, line 126,  t193,  t163(I1),  t192,  t165
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.6   ## bblock 1, line 126,  t141,  t163(I1),  t139,  t165
;;								## 105
	c0    add $r0.5 = $r0.5, $r0.7   ## bblock 1, line 126,  t224,  t192,  t0
	c0    add $r0.6 = $r0.2, 1   ## bblock 1, line 127,  t168,  t193,  1(SI32)
	c0    stw 0x88[$r0.1] = $r0.2  ## spill ## t193
;;								## 106
	c0    stw 0x8c[$r0.1] = $r0.9  ## spill ## t141
;;								## 107
	c0    stw 0x90[$r0.1] = $r0.6  ## spill ## t168
;;								## 108
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 126, t224, t75
;;								## 109
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t126
	      xnop 1
;;								## 111
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 127,  raddr(_i_div)(P32),  t126,  100(SI32)
;;								## 112
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 127,  raddr(_i_rem)(P32),  t84,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 113
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 127,  t86,  t85,  48(SI32)
	c0    ldw $r0.9 = 0x8c[$r0.1]  ## restore ## t141
;;								## 114
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 127,  t87(SI8),  t86
	c0    ldw $r0.6 = 0x90[$r0.1]  ## restore ## t168
;;								## 115
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 127,  t142(I1),  t87(SI8),  48(SI32)
	c0    ldw $r0.7 = 0x48[$r0.1]  ## restore ## t144(I1)
;;								## 116
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 127,  t166(I1),  t141,  t142(I1)
	c0    ldw $r0.4 = 0x88[$r0.1]  ## restore ## t193
;;								## 117
	c0    slct $r0.9 = $b0.0, $r0.9, $r0.6   ## bblock 1, line 127,  t143,  t166(I1),  t141,  t168
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t0
;;								## 118
	c0    norl $b0.1 = $r0.9, $r0.7   ## bblock 1, line 128,  t169(I1),  t143,  t144(I1)
	c0    ldw $r0.11 = 0x40[$r0.1]  ## restore ## t97
;;								## 119
	c0    slct $r0.6 = $b0.0, $r0.4, $r0.6   ## bblock 1, line 127,  t194,  t166(I1),  t193,  t168
	c0    ldw $r0.2 = 0x34[$r0.1]  ## restore ## t107
;;								## 120
	c0    add $r0.4 = $r0.4, $r0.5   ## bblock 1, line 127,  t226,  t193,  t0
	c0    add $r0.8 = $r0.6, $r0.5   ## bblock 1, line 128,  t228,  t194,  t0
	c0    add $r0.7 = $r0.6, 1   ## bblock 1, line 128,  t170,  t194,  1(SI32)
;;								## 121
	c0    stb 0[$r0.4] = $r0.3   ## bblock 1, line 127, t226, t86
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.7   ## bblock 1, line 128,  t195,  t169(I1),  t194,  t170
;;								## 122
	c0    stb 0[$r0.8] = $r0.11   ## bblock 1, line 128, t228, t97
	c0    add $r0.4 = $r0.6, 1   ## bblock 1, line 129,  t112,  t195,  1(SI32)
	c0    add $r0.7 = $r0.6, $r0.5   ## bblock 1, line 129,  t231,  t195,  t0
	c0    mov $r0.3 = $r0.5   ## t0
;;								## 123
	c0    add $r0.4 = $r0.4, $r0.5   ## bblock 1, line 130,  t230,  t112,  t0
	c0    stb 0[$r0.7] = $r0.2   ## bblock 1, line 129, t231, t107
;;								## 124
.call puts, caller, arg($r0.3:u32), ret()
	c0    stb 0[$r0.4] = $r0.0   ## bblock 1, line 130, t230, 0(SI32)
	c0    call $l0.0 = puts   ## bblock 1, line 131,  raddr(puts)(P32),  t0
;;								## 125
	c0    ldw $l0.0 = 0x1c[$r0.1]  ## restore ## t114
	      xnop 3
;;								## 129
.return ret()
	c0    return $r0.1 = $r0.1, (0xa0), $l0.0   ## bblock 20, line 132,  t115,  ?2.12?2auto_size(I32),  t114
;;								## 130
.trace 2
L54?3:
	c0    mov $r0.7 = $r0.2   ## t128
	c0    mov $r0.2 = $r0.3   ## t126
	c0    goto L55?3 ## goto
;;								## 0
.endp
.section .bss
.section .data
.equ ?2.12?2scratch.0, 0x0
.equ _?1PACKET.17, 0x10
.equ ?2.12?2ras_p, 0x1c
.equ ?2.12?2spill_p, 0x20
.section .data
.section .text
.equ ?2.12?2auto_size, 0xa0
 ## End puti
 ## Begin putf
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
putf::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t21
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t16
;;								## 2
.call _d_fix, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_fix   ## bblock 0, line 135,  raddr(_d_fix)(P32),  t15,  t16
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t15
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 0, line 136,  raddr(_d_ilfloat)(P32),  t37
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t37
;;								## 4
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t15
	c0    mov $r0.5 = $r0.3   ## t13
	c0    mov $r0.6 = $r0.4   ## t14
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t16
	      xnop 1
;;								## 7
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 0, line 136,  raddr(_d_sub)(P32),  t15,  t16,  t13,  t14
;;								## 8
	c0    mov $r0.3 = 1093567616   ## 1093567616(I32)
	c0    mov $r0.5 = $r0.3   ## t17
	c0    mov $r0.6 = $r0.4   ## t18
;;								## 9
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 0, line 136,  raddr(_d_mul)(P32),  1093567616(I32),  0(I32),  t17,  t18
	c0    mov $r0.4 = $r0.0   ## 0(I32)
;;								## 10
.call _d_fix, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_fix   ## bblock 0, line 136,  raddr(_d_fix)(P32),  t19,  t20
;;								## 11
.call abs, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = abs   ## bblock 0, line 136,  raddr(abs)(P32),  t8
;;								## 12
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t2
;;								## 13
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t37
	      xnop 1
;;								## 15
.call puti, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = puti   ## bblock 1, line 137,  raddr(puti)(P32),  t37
;;								## 16
.call putc, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putc   ## bblock 2, line 138,  raddr(putc)(P32),  46(SI32)
	c0    mov $r0.3 = 46   ## 46(SI32)
;;								## 17
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t2
	      xnop 1
;;								## 19
.call puti, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = puti   ## bblock 3, line 139,  raddr(puti)(P32),  t2
;;								## 20
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t21
	      xnop 3
;;								## 24
.return ret()
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 4, line 140,  t22,  ?2.13?2auto_size(I32),  t21
;;								## 25
.endp
.section .bss
.section .data
.equ ?2.13?2scratch.0, 0x0
.equ ?2.13?2ras_p, 0x10
.equ ?2.13?2spill_p, 0x14
.section .data
.section .text
.equ ?2.13?2auto_size, 0x40
 ## End putf
.equ _?1TEMPLATEPACKET.5, 0x0
 ## Begin blit
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32,$r0.5:u32)
blit::
.trace 7
	      ## auto_size == 0
	c0    shru $r0.15 = $r0.3, 5   ## bblock 0, line 28,  t1(I27),  t10,  5(SI32)
	c0    shru $r0.16 = $r0.4, 5   ## bblock 0, line 29,  t6(I27),  t12,  5(SI32)
;;								## 0
	c0    add $r0.17 = $r0.15, (src + 0)   ## bblock 0, line 28,  t186,  t1(I27),  addr(src?1.0)(P32)
	c0    add $r0.7 = $r0.16, (dst + 0)   ## bblock 0, line 29,  t205,  t6(I27),  addr(dst?1.0)(P32)
;;								## 1
	c0    and $r0.3 = $r0.3, 31   ## bblock 0, line 30,  t182,  t10,  31(I32)
	c0    and $r0.4 = $r0.4, 31   ## bblock 0, line 31,  t181,  t12,  31(I32)
	c0    ldw.d $r0.18 = (src + 0)[$r0.15]   ## [spec] bblock 13, line 37, t31, t1(I27)
;;								## 2
	c0    cmpgtu $b0.0 = $r0.3, $r0.4   ## bblock 0, line 32,  t561(I1),  t182,  t181
	c0    sub $r0.8 = $r0.3, $r0.4   ## [spec] bblock 13, line 34,  t188,  t182,  t181
	c0    sub $r0.20 = 32, $r0.4   ## [spec] bblock 13, line 36,  t22,  32(SI32),  t181
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 3
	c0    shl $r0.19 = $r0.19, $r0.20   ## [spec] bblock 13, line 36,  t23,  (~0x0)(I32),  t22
	c0    shru $r0.21 = $r0.19, $r0.3   ## [spec] bblock 13, line 37,  t28,  (~0x0)(I32),  t182
	c0    ldw.d $r0.16 = (dst + 0)[$r0.16]   ## [spec] bblock 13, line 36, t25, t6(I27)
;;								## 4
	c0    add $r0.18 = $r0.4, 32   ## [spec] bblock 13, line 35,  t572,  t181,  32(SI32)
	c0    and $r0.21 = $r0.21, $r0.18   ## [spec] bblock 13, line 37,  t34,  t28,  t31
	c0    add $r0.14 = $r0.5, (~0xbf)   ## [spec] bblock 13, line 0,  t340,  t206,  (~0xbf)(I32)
	c0    brf $b0.0, L56?3   ## bblock 0, line 32,  t561(I1)
;;								## 5
	c0    sub $r0.4 = $r0.18, $r0.3   ## bblock 13, line 35,  t187,  t572,  t182
	c0    shl $r0.21 = $r0.21, $r0.8   ## bblock 13, line 38,  t36,  t34,  t188
	c0    add $r0.13 = $r0.5, (~0x9f)   ## bblock 13, line 0,  t339,  t206,  (~0x9f)(I32)
	c0    add $r0.12 = $r0.5, (~0x7f)   ## bblock 13, line 0,  t338,  t206,  (~0x7f)(I32)
;;								## 6
	c0    and $r0.19 = $r0.19, $r0.16   ## bblock 13, line 36,  t33,  t23,  t25
	c0    add $r0.9 = $r0.5, (~0x1f)   ## bblock 13, line 0,  t341,  t206,  (~0x1f)(I32)
	c0    add $r0.11 = $r0.5, (~0x5f)   ## bblock 13, line 0,  t337,  t206,  (~0x5f)(I32)
	c0    add $r0.10 = $r0.5, (~0x3f)   ## bblock 13, line 0,  t336,  t206,  (~0x3f)(I32)
;;								## 7
	c0    or $r0.5 = $r0.19, $r0.21   ## bblock 13, line 38,  t183,  t33,  t36
	c0    add $r0.2 = $r0.15, ((src + 0) + 4)   ## bblock 13, line 37,  t198,  t1(I27),  (addr(src?1.0)(P32) + 0x4(I32))(P32)
	c0    mov $r0.6 = $r0.5   ## t206
;;								## 8
;;								## 9
.trace 1
L57?3:
	c0    cmpgeu $b0.0 = $r0.6, 32   ## bblock 14, line 39,  t573(I1),  t206,  32(SI32)
	c0    ldw.d $r0.3 = 0[$r0.2]   ## [spec] bblock 16, line 41, t53, t198
	c0    cmpgeu $b0.1 = $r0.9, 32   ## [spec] bblock 16, line 39-1,  t575(I1),  t341,  32(SI32)
	c0    cmpgeu $b0.2 = $r0.10, 32   ## [spec] bblock 75, line 39-2,  t591(I1),  t336,  32(SI32)
;;								## 0
	c0    cmpgeu $b0.3 = $r0.11, 32   ## [spec] bblock 72, line 39-3,  t590(I1),  t337,  32(SI32)
	c0    cmpgeu $b0.4 = $r0.12, 32   ## [spec] bblock 69, line 39-4,  t589(I1),  t338,  32(SI32)
	c0    cmpgeu $b0.5 = $r0.13, 32   ## [spec] bblock 66, line 39-5,  t588(I1),  t339,  32(SI32)
	c0    cmpgeu $b0.6 = $r0.14, 32   ## [spec] bblock 63, line 39-6,  t587(I1),  t340,  32(SI32)
;;								## 1
	c0    add $r0.12 = $r0.12, (~0xdf)   ## [spec] bblock 60, line 0,  t338,  t338,  (~0xdf)(I32)
	c0    add $r0.11 = $r0.11, (~0xdf)   ## [spec] bblock 60, line 0,  t337,  t337,  (~0xdf)(I32)
	c0    add $r0.10 = $r0.10, (~0xdf)   ## [spec] bblock 60, line 0,  t336,  t336,  (~0xdf)(I32)
	c0    brf $b0.0, L58?3   ## bblock 14, line 39,  t573(I1)
;;								## 2
	c0    shru $r0.15 = $r0.3, $r0.4   ## bblock 16, line 42,  t49,  t53,  t187
	c0    shl $r0.3 = $r0.3, $r0.8   ## bblock 16, line 43,  t221,  t53,  t188
	c0    add $r0.14 = $r0.14, (~0xdf)   ## [spec] bblock 60, line 0,  t340,  t340,  (~0xdf)(I32)
	c0    add $r0.13 = $r0.13, (~0xdf)   ## [spec] bblock 60, line 0,  t339,  t339,  (~0xdf)(I32)
;;								## 3
	c0    or $r0.15 = $r0.15, $r0.5   ## bblock 16, line 42,  t51,  t49,  t183
	c0    add $r0.9 = $r0.9, (~0xdf)   ## [spec] bblock 60, line 0,  t341,  t341,  (~0xdf)(I32)
;;								## 4
	c0    stw 0[$r0.7] = $r0.15   ## bblock 16, line 42, t205, t51
	c0    brf $b0.1, L59?3   ## bblock 16, line 39-1,  t575(I1)
;;								## 5
	c0    ldw $r0.15 = 4[$r0.2]   ## bblock 75, line 41-1, t317, t198
	      xnop 2
;;								## 8
	c0    shru $r0.16 = $r0.15, $r0.4   ## bblock 75, line 42-1,  t318,  t317,  t187
	c0    shl $r0.15 = $r0.15, $r0.8   ## bblock 75, line 43-1,  t320,  t317,  t188
;;								## 9
	c0    or $r0.3 = $r0.3, $r0.16   ## bblock 75, line 42-1,  t319,  t221,  t318
;;								## 10
	c0    stw 4[$r0.7] = $r0.3   ## bblock 75, line 42-1, t205, t319
	c0    brf $b0.2, L60?3   ## bblock 75, line 39-2,  t591(I1)
;;								## 11
	c0    ldw $r0.3 = 8[$r0.2]   ## bblock 72, line 41-2, t310, t198
	      xnop 2
;;								## 14
	c0    shru $r0.16 = $r0.3, $r0.4   ## bblock 72, line 42-2,  t311,  t310,  t187
	c0    shl $r0.3 = $r0.3, $r0.8   ## bblock 72, line 43-2,  t313,  t310,  t188
;;								## 15
	c0    or $r0.15 = $r0.15, $r0.16   ## bblock 72, line 42-2,  t312,  t320,  t311
;;								## 16
	c0    stw 8[$r0.7] = $r0.15   ## bblock 72, line 42-2, t205, t312
	c0    brf $b0.3, L61?3   ## bblock 72, line 39-3,  t590(I1)
;;								## 17
	c0    ldw $r0.15 = 12[$r0.2]   ## bblock 69, line 41-3, t303, t198
	      xnop 2
;;								## 20
	c0    shru $r0.16 = $r0.15, $r0.4   ## bblock 69, line 42-3,  t304,  t303,  t187
	c0    shl $r0.15 = $r0.15, $r0.8   ## bblock 69, line 43-3,  t306,  t303,  t188
;;								## 21
	c0    or $r0.3 = $r0.3, $r0.16   ## bblock 69, line 42-3,  t305,  t313,  t304
;;								## 22
	c0    stw 12[$r0.7] = $r0.3   ## bblock 69, line 42-3, t205, t305
	c0    brf $b0.4, L62?3   ## bblock 69, line 39-4,  t589(I1)
;;								## 23
	c0    ldw $r0.3 = 16[$r0.2]   ## bblock 66, line 41-4, t296, t198
	      xnop 2
;;								## 26
	c0    shru $r0.16 = $r0.3, $r0.4   ## bblock 66, line 42-4,  t297,  t296,  t187
	c0    shl $r0.3 = $r0.3, $r0.8   ## bblock 66, line 43-4,  t299,  t296,  t188
;;								## 27
	c0    or $r0.15 = $r0.15, $r0.16   ## bblock 66, line 42-4,  t298,  t306,  t297
;;								## 28
	c0    stw 16[$r0.7] = $r0.15   ## bblock 66, line 42-4, t205, t298
	c0    brf $b0.5, L63?3   ## bblock 66, line 39-5,  t588(I1)
;;								## 29
	c0    ldw $r0.15 = 20[$r0.2]   ## bblock 63, line 41-5, t289, t198
	      xnop 2
;;								## 32
	c0    shru $r0.16 = $r0.15, $r0.4   ## bblock 63, line 42-5,  t290,  t289,  t187
	c0    shl $r0.15 = $r0.15, $r0.8   ## bblock 63, line 43-5,  t292,  t289,  t188
;;								## 33
	c0    or $r0.3 = $r0.3, $r0.16   ## bblock 63, line 42-5,  t291,  t299,  t290
;;								## 34
	c0    stw 20[$r0.7] = $r0.3   ## bblock 63, line 42-5, t205, t291
	c0    brf $b0.6, L64?3   ## bblock 63, line 39-6,  t587(I1)
;;								## 35
	c0    ldw $r0.3 = 24[$r0.2]   ## bblock 60, line 41-6, t283, t198
	c0    add $r0.2 = $r0.2, 28   ## bblock 60, line 39-6,  t198,  t198,  28(SI32)
	c0    add $r0.6 = $r0.6, -224   ## bblock 60, line 39-6,  t206,  t206,  -224(SI32)
	      xnop 2
;;								## 38
	c0    shru $r0.16 = $r0.3, $r0.4   ## bblock 60, line 42-6,  t284,  t283,  t187
	c0    shl $r0.5 = $r0.3, $r0.8   ## bblock 60, line 43-6,  t183,  t283,  t188
;;								## 39
	c0    or $r0.15 = $r0.15, $r0.16   ## bblock 60, line 42-6,  t285,  t292,  t284
;;								## 40
	c0    stw 24[$r0.7] = $r0.15   ## bblock 60, line 42-6, t205, t285
	c0    add $r0.7 = $r0.7, 28   ## bblock 60, line 39-6,  t205,  t205,  28(SI32)
	c0    goto L57?3 ## goto
;;								## 41
.trace 20
L64?3:
	c0    add $r0.6 = $r0.6, (~0xbf)   ## bblock 61, line 0,  t286,  t206,  (~0xbf)(I32)
	c0    mov $r0.5 = $r0.15   ## bblock 61, line 0,  t287,  t292
	c0    add $r0.7 = $r0.7, 24   ## bblock 61, line 0,  t288,  t205,  24(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 19
L63?3:
	c0    add $r0.6 = $r0.6, (~0x9f)   ## bblock 64, line 0,  t286,  t206,  (~0x9f)(I32)
	c0    mov $r0.5 = $r0.3   ## bblock 64, line 0,  t287,  t299
	c0    add $r0.7 = $r0.7, 20   ## bblock 64, line 0,  t288,  t205,  20(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 18
L62?3:
	c0    add $r0.6 = $r0.6, (~0x7f)   ## bblock 67, line 0,  t286,  t206,  (~0x7f)(I32)
	c0    mov $r0.5 = $r0.15   ## bblock 67, line 0,  t287,  t306
	c0    add $r0.7 = $r0.7, 16   ## bblock 67, line 0,  t288,  t205,  16(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 17
L61?3:
	c0    add $r0.6 = $r0.6, (~0x5f)   ## bblock 70, line 0,  t286,  t206,  (~0x5f)(I32)
	c0    mov $r0.5 = $r0.3   ## bblock 70, line 0,  t287,  t313
	c0    add $r0.7 = $r0.7, 12   ## bblock 70, line 0,  t288,  t205,  12(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 16
L60?3:
	c0    add $r0.6 = $r0.6, (~0x3f)   ## bblock 73, line 0,  t286,  t206,  (~0x3f)(I32)
	c0    mov $r0.5 = $r0.15   ## bblock 73, line 0,  t287,  t320
	c0    add $r0.7 = $r0.7, 8   ## bblock 73, line 0,  t288,  t205,  8(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 15
L59?3:
	c0    add $r0.6 = $r0.6, (~0x1f)   ## bblock 76, line 0,  t286,  t206,  (~0x1f)(I32)
	c0    mov $r0.5 = $r0.3   ## bblock 76, line 0,  t287,  t221
	c0    add $r0.7 = $r0.7, 4   ## bblock 76, line 0,  t288,  t205,  4(I32)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
;;								## 0
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
	c0    goto L65?3 ## goto
;;								## 1
.trace 8
L58?3:
	   ## bblock 77, line 0,  t288,  t205## $r0.7(skipped)
	   ## bblock 77, line 0,  t286,  t206## $r0.6(skipped)
	c0    add $r0.8 = $r0.8, 32   ## bblock 15, line 45,  t574,  t188,  32(SI32)
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	   ## bblock 77, line 0,  t287,  t183## $r0.5(skipped)
	c0    sub $r0.8 = $r0.8, $r0.6   ## bblock 15, line 45,  t58,  t574,  t286
	c0    ldw $r0.2 = 0[$r0.7]   ## bblock 15, line 45, t61, t288
;;								## 1
L65?3:
	c0    shl $r0.19 = $r0.19, $r0.8   ## bblock 15, line 45,  t59,  (~0x0)(I32),  t58
	      xnop 1
;;								## 3
	c0    and $r0.19 = $r0.19, $r0.2   ## bblock 15, line 45,  t63,  t59,  t61
;;								## 4
	c0    or $r0.19 = $r0.19, $r0.5   ## bblock 15, line 46,  t65,  t63,  t287
;;								## 5
.return ret()
	c0    stw 0[$r0.7] = $r0.19   ## bblock 15, line 46, t288, t65
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 81,  t165,  ?2.14?2auto_size(I32),  t164
;;								## 6
.trace 9
L56?3:
	c0    cmpltu $b0.0 = $r0.3, $r0.4   ## bblock 1, line 48,  t562(I1),  t182,  t181
	c0    sub $r0.20 = 32, $r0.4   ## [spec] bblock 9, line 52,  t75,  32(SI32),  t181
	c0    ldw.d $r0.18 = 0[$r0.17]   ## [spec] bblock 9, line 53, t84, t186
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.20 = $r0.3, 32   ## [spec] bblock 9, line 51,  t568,  t182,  32(SI32)
	c0    shl $r0.19 = $r0.19, $r0.20   ## [spec] bblock 9, line 52,  t76,  (~0x0)(I32),  t75
	c0    shru $r0.16 = $r0.19, $r0.3   ## [spec] bblock 9, line 53,  t81,  (~0x0)(I32),  t182
	c0    ldw.d $r0.21 = 0[$r0.7]   ## [spec] bblock 9, line 52, t78, t205
;;								## 1
	c0    sub $r0.9 = $r0.20, $r0.4   ## [spec] bblock 9, line 51,  t202,  t568,  t181
	c0    add $r0.15 = $r0.5, (~0xbf)   ## [spec] bblock 9, line 0,  t406,  t206,  (~0xbf)(I32)
	c0    add $r0.14 = $r0.5, (~0x9f)   ## [spec] bblock 9, line 0,  t405,  t206,  (~0x9f)(I32)
	c0    brf $b0.0, L66?3   ## bblock 1, line 48,  t562(I1)
;;								## 2
	c0    and $r0.2 = $r0.16, $r0.18   ## bblock 9, line 53,  t233,  t81,  t84
	c0    add $r0.13 = $r0.5, (~0x7f)   ## bblock 9, line 0,  t404,  t206,  (~0x7f)(I32)
	c0    add $r0.12 = $r0.5, (~0x5f)   ## bblock 9, line 0,  t403,  t206,  (~0x5f)(I32)
	c0    add $r0.11 = $r0.5, (~0x3f)   ## bblock 9, line 0,  t402,  t206,  (~0x3f)(I32)
;;								## 3
	c0    sub $r0.3 = $r0.4, $r0.3   ## bblock 9, line 50,  t201,  t181,  t182
	c0    and $r0.5 = $r0.19, $r0.21   ## bblock 9, line 52,  t234,  t76,  t78
	c0    add $r0.8 = $r0.17, 4   ## bblock 9, line 53,  t231,  t186,  4(SI32)
	c0    mov $r0.6 = $r0.5   ## t206
;;								## 4
	c0    add $r0.10 = $r0.6, (~0x1f)   ## bblock 9, line 0,  t407,  t206,  (~0x1f)(I32)
;;								## 5
.trace 3
L67?3:
	c0    cmpgeu $b0.0 = $r0.6, 32   ## bblock 10, line 54,  t569(I1),  t206,  32(SI32)
	c0    shru $r0.4 = $r0.2, $r0.3   ## [spec] bblock 12, line 56,  t247,  t233,  t201
	c0    shl $r0.2 = $r0.2, $r0.9   ## [spec] bblock 12, line 57,  t244,  t233,  t202
	c0    cmpgeu $b0.1 = $r0.10, 32   ## [spec] bblock 12, line 54-1,  t571(I1),  t407,  32(SI32)
;;								## 0
	c0    or $r0.4 = $r0.4, $r0.5   ## [spec] bblock 12, line 56,  t248,  t247,  t234
	c0    cmpgeu $b0.2 = $r0.11, 32   ## [spec] bblock 56, line 54-2,  t586(I1),  t402,  32(SI32)
	c0    cmpgeu $b0.3 = $r0.12, 32   ## [spec] bblock 53, line 54-3,  t585(I1),  t403,  32(SI32)
	c0    cmpgeu $b0.4 = $r0.13, 32   ## [spec] bblock 50, line 54-4,  t584(I1),  t404,  32(SI32)
;;								## 1
	c0    cmpgeu $b0.0 = $r0.14, 32   ## [spec] bblock 47, line 54-5,  t583(I1),  t405,  32(SI32)
	c0    cmpgeu $b0.5 = $r0.15, 32   ## [spec] bblock 44, line 54-6,  t582(I1),  t406,  32(SI32)
	c0    add $r0.11 = $r0.11, (~0xdf)   ## [spec] bblock 41, line 0,  t402,  t402,  (~0xdf)(I32)
	c0    brf $b0.0, L68?3   ## bblock 10, line 54,  t569(I1)
;;								## 2
	c0    add $r0.15 = $r0.15, (~0xdf)   ## [spec] bblock 41, line 0,  t406,  t406,  (~0xdf)(I32)
	c0    add $r0.14 = $r0.14, (~0xdf)   ## [spec] bblock 41, line 0,  t405,  t405,  (~0xdf)(I32)
	c0    add $r0.13 = $r0.13, (~0xdf)   ## [spec] bblock 41, line 0,  t404,  t404,  (~0xdf)(I32)
	c0    add $r0.12 = $r0.12, (~0xdf)   ## [spec] bblock 41, line 0,  t403,  t403,  (~0xdf)(I32)
;;								## 3
	c0    stw 0[$r0.7] = $r0.4   ## bblock 12, line 56, t205, t248
	c0    add $r0.10 = $r0.10, (~0xdf)   ## [spec] bblock 41, line 0,  t407,  t407,  (~0xdf)(I32)
;;								## 4
	c0    ldw $r0.4 = 0[$r0.8]   ## bblock 12, line 58, t246, t231
	c0    brf $b0.1, L69?3   ## bblock 12, line 54-1,  t571(I1)
;;								## 5
	      xnop 1
;;								## 7
	c0    shru $r0.16 = $r0.4, $r0.3   ## bblock 56, line 56-1,  t278,  t246,  t201
	c0    shl $r0.4 = $r0.4, $r0.9   ## bblock 56, line 57-1,  t276,  t246,  t202
;;								## 8
	c0    or $r0.2 = $r0.2, $r0.16   ## bblock 56, line 56-1,  t279,  t244,  t278
;;								## 9
	c0    stw 4[$r0.7] = $r0.2   ## bblock 56, line 56-1, t205, t279
;;								## 10
	c0    ldw $r0.16 = 4[$r0.8]   ## bblock 56, line 58-1, t222, t231
	c0    brf $b0.2, L70?3   ## bblock 56, line 54-2,  t586(I1)
;;								## 11
	      xnop 1
;;								## 13
	c0    shru $r0.17 = $r0.16, $r0.3   ## bblock 53, line 56-2,  t95,  t222,  t201
	c0    shl $r0.16 = $r0.16, $r0.9   ## bblock 53, line 57-2,  t277,  t222,  t202
;;								## 14
	c0    or $r0.4 = $r0.4, $r0.17   ## bblock 53, line 56-2,  t97,  t276,  t95
;;								## 15
	c0    stw 8[$r0.7] = $r0.4   ## bblock 53, line 56-2, t205, t97
;;								## 16
	c0    ldw $r0.4 = 8[$r0.8]   ## bblock 53, line 58-2, t184, t231
	c0    brf $b0.3, L71?3   ## bblock 53, line 54-3,  t585(I1)
;;								## 17
	      xnop 1
;;								## 19
	c0    shru $r0.17 = $r0.4, $r0.3   ## bblock 50, line 56-3,  t213,  t184,  t201
	c0    shl $r0.4 = $r0.4, $r0.9   ## bblock 50, line 57-3,  t211,  t184,  t202
;;								## 20
	c0    or $r0.16 = $r0.16, $r0.17   ## bblock 50, line 56-3,  t210,  t277,  t213
;;								## 21
	c0    stw 12[$r0.7] = $r0.16   ## bblock 50, line 56-3, t205, t210
;;								## 22
	c0    ldw $r0.16 = 12[$r0.8]   ## bblock 50, line 58-3, t249, t231
	c0    brf $b0.4, L72?3   ## bblock 50, line 54-4,  t584(I1)
;;								## 23
	      xnop 1
;;								## 25
	c0    shru $r0.17 = $r0.16, $r0.3   ## bblock 47, line 56-4,  t232,  t249,  t201
	c0    shl $r0.16 = $r0.16, $r0.9   ## bblock 47, line 57-4,  t217,  t249,  t202
;;								## 26
	c0    or $r0.4 = $r0.4, $r0.17   ## bblock 47, line 56-4,  t223,  t211,  t232
;;								## 27
	c0    stw 16[$r0.7] = $r0.4   ## bblock 47, line 56-4, t205, t223
;;								## 28
	c0    ldw $r0.4 = 16[$r0.8]   ## bblock 47, line 58-4, t216, t231
	c0    brf $b0.0, L73?3   ## bblock 47, line 54-5,  t583(I1)
;;								## 29
	      xnop 1
;;								## 31
	c0    shru $r0.17 = $r0.4, $r0.3   ## bblock 44, line 56-5,  t218,  t216,  t201
	c0    shl $r0.4 = $r0.4, $r0.9   ## bblock 44, line 57-5,  t229,  t216,  t202
;;								## 32
	c0    or $r0.16 = $r0.16, $r0.17   ## bblock 44, line 56-5,  t224,  t217,  t218
;;								## 33
	c0    stw 20[$r0.7] = $r0.16   ## bblock 44, line 56-5, t205, t224
;;								## 34
	c0    ldw $r0.16 = 20[$r0.8]   ## bblock 44, line 58-5, t228, t231
	c0    brf $b0.5, L74?3   ## bblock 44, line 54-6,  t582(I1)
;;								## 35
	c0    add $r0.6 = $r0.6, -224   ## bblock 41, line 54-6,  t206,  t206,  -224(SI32)
	      xnop 1
;;								## 37
	c0    shru $r0.17 = $r0.16, $r0.3   ## bblock 41, line 56-6,  t236,  t228,  t201
	c0    shl $r0.5 = $r0.16, $r0.9   ## bblock 41, line 57-6,  t234,  t228,  t202
;;								## 38
	c0    or $r0.4 = $r0.4, $r0.17   ## bblock 41, line 56-6,  t235,  t229,  t236
;;								## 39
	c0    stw 24[$r0.7] = $r0.4   ## bblock 41, line 56-6, t205, t235
	c0    add $r0.7 = $r0.7, 28   ## bblock 41, line 54-6,  t205,  t205,  28(SI32)
;;								## 40
	c0    ldw $r0.2 = 24[$r0.8]   ## bblock 41, line 58-6, t233, t231
	c0    add $r0.8 = $r0.8, 28   ## bblock 41, line 54-6,  t231,  t231,  28(SI32)
	      xnop 1
;;								## 42
	c0    goto L67?3 ## goto
;;								## 43
.trace 26
L74?3:
	c0    add $r0.6 = $r0.6, (~0xbf)   ## bblock 42, line 0,  t180,  t206,  (~0xbf)(I32)
	c0    add $r0.7 = $r0.7, 24   ## bblock 42, line 0,  t204,  t205,  24(I32)
	c0    mov $r0.5 = $r0.4   ## bblock 42, line 0,  t200,  t229
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 1
.trace 25
L73?3:
	c0    add $r0.6 = $r0.6, (~0x9f)   ## bblock 45, line 0,  t180,  t206,  (~0x9f)(I32)
	c0    add $r0.7 = $r0.7, 20   ## bblock 45, line 0,  t204,  t205,  20(I32)
	c0    mov $r0.5 = $r0.16   ## bblock 45, line 0,  t200,  t217
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 1
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 2
.trace 24
L72?3:
	c0    add $r0.6 = $r0.6, (~0x7f)   ## bblock 48, line 0,  t180,  t206,  (~0x7f)(I32)
	c0    add $r0.7 = $r0.7, 16   ## bblock 48, line 0,  t204,  t205,  16(I32)
	c0    mov $r0.5 = $r0.4   ## bblock 48, line 0,  t200,  t211
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 1
.trace 23
L71?3:
	c0    add $r0.6 = $r0.6, (~0x5f)   ## bblock 51, line 0,  t180,  t206,  (~0x5f)(I32)
	c0    add $r0.7 = $r0.7, 12   ## bblock 51, line 0,  t204,  t205,  12(I32)
	c0    mov $r0.5 = $r0.16   ## bblock 51, line 0,  t200,  t277
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 1
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 2
.trace 22
L70?3:
	c0    add $r0.6 = $r0.6, (~0x3f)   ## bblock 54, line 0,  t180,  t206,  (~0x3f)(I32)
	c0    add $r0.7 = $r0.7, 8   ## bblock 54, line 0,  t204,  t205,  8(I32)
	c0    mov $r0.5 = $r0.4   ## bblock 54, line 0,  t200,  t276
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 1
.trace 21
L69?3:
	c0    add $r0.6 = $r0.6, (~0x1f)   ## bblock 57, line 0,  t180,  t206,  (~0x1f)(I32)
	c0    add $r0.7 = $r0.7, 4   ## bblock 57, line 0,  t204,  t205,  4(I32)
	c0    mov $r0.5 = $r0.2   ## bblock 57, line 0,  t200,  t244
	c0    add $r0.8 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.8, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 1
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
	c0    goto L75?3 ## goto
;;								## 2
.trace 11
L68?3:
	   ## bblock 58, line 0,  t204,  t205## $r0.7(skipped)
	   ## bblock 58, line 0,  t180,  t206## $r0.6(skipped)
	c0    add $r0.2 = $r0.3, 32   ## bblock 11, line 60,  t570,  t201,  32(SI32)
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	   ## bblock 58, line 0,  t200,  t234## $r0.5(skipped)
	c0    sub $r0.2 = $r0.2, $r0.6   ## bblock 11, line 60,  t106,  t570,  t180
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 11, line 60, t109, t204
;;								## 1
L75?3:
	c0    shl $r0.19 = $r0.19, $r0.2   ## bblock 11, line 60,  t107,  (~0x0)(I32),  t106
	      xnop 1
;;								## 3
	c0    and $r0.19 = $r0.19, $r0.4   ## bblock 11, line 60,  t111,  t107,  t109
;;								## 4
	c0    shru $r0.19 = $r0.19, $r0.3   ## bblock 11, line 61,  t113,  t111,  t201
;;								## 5
	c0    or $r0.19 = $r0.19, $r0.5   ## bblock 11, line 61,  t115,  t113,  t200
;;								## 6
.return ret()
	c0    stw 0[$r0.7] = $r0.19   ## bblock 11, line 61, t204, t115
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 81,  t165,  ?2.14?2auto_size(I32),  t164
;;								## 7
.trace 10
L66?3:
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 65,  t563(I1),  t182,  0(SI32)
	c0    add $r0.12 = $r0.5, (~0xdf)   ## [spec] bblock 71, line 0,  t487,  t206,  (~0xdf)(I32)
	c0    add $r0.11 = $r0.5, (~0xbf)   ## [spec] bblock 71, line 0,  t486,  t206,  (~0xbf)(I32)
	c0    add $r0.10 = $r0.5, (~0x9f)   ## [spec] bblock 71, line 0,  t485,  t206,  (~0x9f)(I32)
;;								## 0
	c0    add $r0.9 = $r0.5, (~0x7f)   ## [spec] bblock 71, line 0,  t484,  t206,  (~0x7f)(I32)
	c0    add $r0.8 = $r0.5, (~0x5f)   ## [spec] bblock 71, line 0,  t483,  t206,  (~0x5f)(I32)
	c0    add $r0.13 = $r0.5, (~0x3f)   ## [spec] bblock 71, line 0,  t482,  t206,  (~0x3f)(I32)
	c0    mov $r0.6 = $r0.5   ## t206
;;								## 1
	c0    mov $r0.2 = $r0.17   ## t186
	c0    mov $r0.14 = $r0.4   ## t181
	c0    br $b0.0, L76?3   ## bblock 2, line 65,  t563(I1)
;;								## 2
L77?3:
	c0    add $r0.4 = $r0.5, (~0x1f)   ## bblock 71, line 0,  t488,  t206,  (~0x1f)(I32)
;;								## 3
	c0    mov $r0.5 = $r0.13   ## [spec] t482
;;								## 4
	c0    mov $r0.13 = $r0.14   ## t181
;;								## 5
	c0    mov $r0.14 = $r0.3   ## t182
;;								## 6
.trace 4
L78?3:
	c0    cmpgeu $b0.0 = $r0.6, 32   ## bblock 3, line 72,  t564(I1),  t206,  32(SI32)
	c0    ldw.d $r0.3 = 0[$r0.2]   ## [spec] bblock 7, line 73, t272, t186
	c0    cmpgeu $b0.1 = $r0.4, 32   ## [spec] bblock 7, line 72-1,  t566(I1),  t488,  32(SI32)
	c0    cmpgeu $b0.2 = $r0.5, 32   ## [spec] bblock 37, line 72-2,  t581(I1),  t482,  32(SI32)
;;								## 0
	c0    cmpgeu $b0.3 = $r0.8, 32   ## [spec] bblock 34, line 72-3,  t580(I1),  t483,  32(SI32)
	c0    cmpgeu $b0.4 = $r0.9, 32   ## [spec] bblock 31, line 72-4,  t579(I1),  t484,  32(SI32)
	c0    cmpgeu $b0.5 = $r0.10, 32   ## [spec] bblock 28, line 72-5,  t578(I1),  t485,  32(SI32)
	c0    cmpgeu $b0.6 = $r0.11, 32   ## [spec] bblock 25, line 72-6,  t577(I1),  t486,  32(SI32)
;;								## 1
	c0    cmpgeu $b0.0 = $r0.12, 32   ## [spec] bblock 22, line 72-7,  t576(I1),  t487,  32(SI32)
	c0    add $r0.8 = $r0.8, (~0xff)   ## [spec] bblock 19, line 0,  t483,  t483,  (~0xff)(I32)
	c0    add $r0.5 = $r0.5, (~0xff)   ## [spec] bblock 19, line 0,  t482,  t482,  (~0xff)(I32)
	c0    brf $b0.0, L79?3   ## bblock 3, line 72,  t564(I1)
;;								## 2
	c0    add $r0.12 = $r0.12, (~0xff)   ## [spec] bblock 19, line 0,  t487,  t487,  (~0xff)(I32)
	c0    add $r0.11 = $r0.11, (~0xff)   ## [spec] bblock 19, line 0,  t486,  t486,  (~0xff)(I32)
	c0    add $r0.10 = $r0.10, (~0xff)   ## [spec] bblock 19, line 0,  t485,  t485,  (~0xff)(I32)
	c0    add $r0.9 = $r0.9, (~0xff)   ## [spec] bblock 19, line 0,  t484,  t484,  (~0xff)(I32)
;;								## 3
	c0    stw 0[$r0.7] = $r0.3   ## bblock 7, line 73, t205, t272
	c0    add $r0.4 = $r0.4, (~0xff)   ## [spec] bblock 19, line 0,  t488,  t488,  (~0xff)(I32)
	c0    brf $b0.1, L80?3   ## bblock 7, line 72-1,  t566(I1)
;;								## 4
	c0    ldw $r0.3 = 4[$r0.2]   ## bblock 37, line 73-1, t146, t186
	      xnop 2
;;								## 7
	c0    stw 4[$r0.7] = $r0.3   ## bblock 37, line 73-1, t205, t146
	c0    brf $b0.2, L81?3   ## bblock 37, line 72-2,  t581(I1)
;;								## 8
	c0    ldw $r0.3 = 8[$r0.2]   ## bblock 34, line 73-2, t258, t186
	      xnop 2
;;								## 11
	c0    stw 8[$r0.7] = $r0.3   ## bblock 34, line 73-2, t205, t258
	c0    brf $b0.3, L82?3   ## bblock 34, line 72-3,  t580(I1)
;;								## 12
	c0    ldw $r0.3 = 12[$r0.2]   ## bblock 31, line 73-3, t257, t186
	      xnop 2
;;								## 15
	c0    stw 12[$r0.7] = $r0.3   ## bblock 31, line 73-3, t205, t257
	c0    brf $b0.4, L83?3   ## bblock 31, line 72-4,  t579(I1)
;;								## 16
	c0    ldw $r0.3 = 16[$r0.2]   ## bblock 28, line 73-4, t262, t186
	      xnop 2
;;								## 19
	c0    stw 16[$r0.7] = $r0.3   ## bblock 28, line 73-4, t205, t262
	c0    brf $b0.5, L84?3   ## bblock 28, line 72-5,  t578(I1)
;;								## 20
	c0    ldw $r0.3 = 20[$r0.2]   ## bblock 25, line 73-5, t266, t186
	      xnop 2
;;								## 23
	c0    stw 20[$r0.7] = $r0.3   ## bblock 25, line 73-5, t205, t266
	c0    brf $b0.6, L85?3   ## bblock 25, line 72-6,  t577(I1)
;;								## 24
	c0    ldw $r0.3 = 24[$r0.2]   ## bblock 22, line 73-6, t270, t186
	      xnop 2
;;								## 27
	c0    stw 24[$r0.7] = $r0.3   ## bblock 22, line 73-6, t205, t270
	c0    brf $b0.0, L86?3   ## bblock 22, line 72-7,  t576(I1)
;;								## 28
	c0    ldw $r0.3 = 28[$r0.2]   ## bblock 19, line 73-7, t275, t186
	c0    add $r0.2 = $r0.2, 32   ## bblock 19, line 72-7,  t186,  t186,  32(SI32)
	c0    add $r0.6 = $r0.6, -256   ## bblock 19, line 72-7,  t206,  t206,  -256(SI32)
	      xnop 2
;;								## 31
	c0    stw 28[$r0.7] = $r0.3   ## bblock 19, line 73-7, t205, t275
	c0    add $r0.7 = $r0.7, 32   ## bblock 19, line 72-7,  t205,  t205,  32(SI32)
	c0    goto L78?3 ## goto
;;								## 32
.trace 33
L86?3:
	c0    add $r0.7 = $r0.7, 28   ## bblock 20, line 0,  t239,  t205,  28(I32)
	c0    add $r0.2 = $r0.2, 28   ## bblock 20, line 0,  t238,  t186,  28(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0xdf)   ## bblock 20, line 0,  t237,  t206,  (~0xdf)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 14
L88?3:
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 81,  t165,  ?2.14?2auto_size(I32),  t164
;;								## 0
.trace 32
L85?3:
	c0    add $r0.7 = $r0.7, 24   ## bblock 23, line 0,  t239,  t205,  24(I32)
	c0    add $r0.2 = $r0.2, 24   ## bblock 23, line 0,  t238,  t186,  24(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0xbf)   ## bblock 23, line 0,  t237,  t206,  (~0xbf)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 31
L84?3:
	c0    add $r0.7 = $r0.7, 20   ## bblock 26, line 0,  t239,  t205,  20(I32)
	c0    add $r0.2 = $r0.2, 20   ## bblock 26, line 0,  t238,  t186,  20(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0x9f)   ## bblock 26, line 0,  t237,  t206,  (~0x9f)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 30
L83?3:
	c0    add $r0.7 = $r0.7, 16   ## bblock 29, line 0,  t239,  t205,  16(I32)
	c0    add $r0.2 = $r0.2, 16   ## bblock 29, line 0,  t238,  t186,  16(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0x7f)   ## bblock 29, line 0,  t237,  t206,  (~0x7f)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 29
L82?3:
	c0    add $r0.7 = $r0.7, 12   ## bblock 32, line 0,  t239,  t205,  12(I32)
	c0    add $r0.2 = $r0.2, 12   ## bblock 32, line 0,  t238,  t186,  12(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0x5f)   ## bblock 32, line 0,  t237,  t206,  (~0x5f)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 28
L81?3:
	c0    add $r0.7 = $r0.7, 8   ## bblock 35, line 0,  t239,  t205,  8(I32)
	c0    add $r0.2 = $r0.2, 8   ## bblock 35, line 0,  t238,  t186,  8(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0x3f)   ## bblock 35, line 0,  t237,  t206,  (~0x3f)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 27
L80?3:
	c0    add $r0.7 = $r0.7, 4   ## bblock 38, line 0,  t239,  t205,  4(I32)
	c0    add $r0.2 = $r0.2, 4   ## bblock 38, line 0,  t238,  t186,  4(I32)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    add $r0.6 = $r0.6, (~0x1f)   ## bblock 38, line 0,  t237,  t206,  (~0x1f)(I32)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	      ## goto
;;
	c0    goto L87?3 ## goto
;;								## 1
.trace 12
L79?3:
	   ## bblock 39, line 0,  t238,  t186## $r0.2(skipped)
	   ## bblock 39, line 0,  t239,  t205## $r0.7(skipped)
	c0    sub $r0.14 = 32, $r0.14   ## [spec] bblock 6, line 77,  t155,  32(SI32),  t182
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	   ## bblock 39, line 0,  t237,  t206## $r0.6(skipped)
	c0    shru $r0.13 = $r0.19, $r0.13   ## [spec] bblock 6, line 76,  t150,  (~0x0)(I32),  t181
	c0    ldw.d $r0.3 = 0[$r0.7]   ## [spec] bblock 6, line 76, t152, t239
	c0    shl $r0.14 = $r0.19, $r0.14   ## [spec] bblock 6, line 77,  t156,  (~0x0)(I32),  t155
;;								## 1
L87?3:
	c0    cmpne $b0.0 = $r0.6, $r0.0   ## bblock 4, line 74,  t565(I1),  t237,  0(SI32)
	c0    ldw.d $r0.2 = 0[$r0.2]   ## [spec] bblock 6, line 77, t158, t238
	      xnop 1
;;								## 3
	c0    and $r0.13 = $r0.13, $r0.3   ## [spec] bblock 6, line 76,  t160,  t150,  t152
	c0    brf $b0.0, L88?3   ## bblock 4, line 74,  t565(I1)
;;								## 4
	c0    and $r0.14 = $r0.14, $r0.2   ## bblock 6, line 77,  t161,  t156,  t158
;;								## 5
	c0    or $r0.13 = $r0.13, $r0.14   ## bblock 6, line 78,  t162,  t160,  t161
;;								## 6
.return ret()
	c0    stw 0[$r0.7] = $r0.13   ## bblock 6, line 78, t239, t162
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 81,  t165,  ?2.14?2auto_size(I32),  t164
;;								## 7
.trace 13
L76?3:
	c0    sub $r0.15 = 32, $r0.14   ## bblock 8, line 67,  t119,  32(SI32),  t181
	c0    ldw $r0.4 = 0[$r0.7]   ## bblock 8, line 67, t122, t205
	c0    add $r0.16 = $r0.3, -32   ## bblock 8, line 70,  t567,  t182,  -32(SI32)
	c0    mov $r0.19 = (~0x0)   ## (~0x0)(I32)
;;								## 0
	c0    shl $r0.15 = $r0.19, $r0.15   ## bblock 8, line 67,  t120,  (~0x0)(I32),  t119
	c0    shru $r0.19 = $r0.19, $r0.3   ## bblock 8, line 68,  t125,  (~0x0)(I32),  t182
	c0    ldw $r0.17 = 0[$r0.2]   ## bblock 8, line 68, t128, t186
	c0    add $r0.5 = $r0.16, $r0.5   ## bblock 8, line 70,  t206,  t567,  t206
;;								## 1
	c0    add $r0.12 = $r0.5, (~0xdf)   ## bblock 71, line 0,  t487,  t206,  (~0xdf)(I32)
	c0    add $r0.11 = $r0.5, (~0xbf)   ## bblock 71, line 0,  t486,  t206,  (~0xbf)(I32)
	c0    add $r0.10 = $r0.5, (~0x9f)   ## bblock 71, line 0,  t485,  t206,  (~0x9f)(I32)
	c0    add $r0.9 = $r0.5, (~0x7f)   ## bblock 71, line 0,  t484,  t206,  (~0x7f)(I32)
;;								## 2
	c0    and $r0.15 = $r0.15, $r0.4   ## bblock 8, line 67,  t130,  t120,  t122
	c0    add $r0.2 = $r0.2, 4   ## bblock 8, line 68,  t186,  t186,  4(SI32)
	c0    add $r0.8 = $r0.5, (~0x5f)   ## bblock 71, line 0,  t483,  t206,  (~0x5f)(I32)
	c0    add $r0.13 = $r0.5, (~0x3f)   ## bblock 71, line 0,  t482,  t206,  (~0x3f)(I32)
;;								## 3
	c0    and $r0.19 = $r0.19, $r0.17   ## bblock 8, line 68,  t131,  t125,  t128
	c0    mov $r0.6 = $r0.5   ## t206
;;								## 4
	c0    or $r0.15 = $r0.15, $r0.19   ## bblock 8, line 69,  t132,  t130,  t131
;;								## 5
	c0    stw 0[$r0.7] = $r0.15   ## bblock 8, line 69, t205, t132
	c0    add $r0.7 = $r0.7, 4   ## bblock 8, line 69,  t205,  t205,  4(SI32)
	c0    goto L77?3 ## goto
;;								## 6
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.14?2auto_size, 0x0
 ## End blit
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
main::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x20)
	c0    mov $r0.4 = 29   ## 29(I32)
	c0    mov $r0.3 = 17   ## 17(I32)
;;								## 0
.call blit, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret()
	c0    call $l0.0 = blit   ## bblock 0, line 84,  raddr(blit)(P32),  17(I32),  29(I32),  32000(I32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t10
	c0    mov $r0.5 = 32000   ## 32000(I32)
;;								## 1
	c0    mov $r0.3 = 29   ## 29(I32)
	c0    mov $r0.4 = 17   ## 17(I32)
	c0    mov $r0.5 = 32000   ## 32000(I32)
;;								## 2
.call blit, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32), ret()
	c0    call $l0.0 = blit   ## bblock 1, line 85,  raddr(blit)(P32),  29(I32),  17(I32),  32000(I32)
;;								## 3
	c0    ldw $r0.2 = ((dst + 0) + 0)[$r0.0]   ## bblock 2, line 86, t1, 0(I32)
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 4
	c0    ldw.d $r0.4 = (((dst + 0) + 40) + 0)[$r0.0]   ## [spec] bblock 2, line 86, t5, 0(I32)
;;								## 5
	c0    ldw.d $r0.5 = (((dst + 0) + 16) + 0)[$r0.0]   ## [spec] bblock 2, line 86, t3, 0(I32)
;;								## 6
	c0    cmpne $r0.2 = $r0.2, 291   ## bblock 2, line 86,  t21(I1),  t1,  291(SI32)
;;								## 7
	c0    cmpne $r0.4 = $r0.4, 1080066048   ## bblock 2, line 86,  t24(I1),  t5,  1080066048(SI32)
;;								## 8
	c0    cmpeq $r0.5 = $r0.5, 1164411171   ## bblock 2, line 86,  t31,  t3,  1164411171(SI32)
	c0    norl $r0.2 = $r0.2, $r0.4   ## bblock 2, line 86,  t29,  t21(I1),  t24(I1)
;;								## 9
	c0    andl $b0.0 = $r0.2, $r0.5   ## bblock 2, line 86,  t30(I1),  t29,  t31
	      xnop 1
;;								## 11
	c0    br $b0.0, L89?3   ## bblock 2, line 86,  t30(I1)
;;								## 12
.call puts, caller, arg($r0.3:u32), ret()
	c0    call $l0.0 = puts   ## bblock 7, line 88,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
;;								## 13
L90?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t10
	      xnop 3
;;								## 17
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 6, line 94,  t11,  ?2.15?2auto_size(I32),  t10
;;								## 18
.trace 2
L89?3:
.call puts, caller, arg($r0.3:u32), ret()
	c0    call $l0.0 = puts   ## bblock 5, line 92,  raddr(puts)(P32),  addr(_?1STRINGVAR.2)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
	      ## goto
;;
	c0    goto L90?3 ## goto
;;								## 0
.endp
.section .bss
.section .data
_?1STRINGPACKET.1:
    .data1 98
    .data1 108
    .data1 105
    .data1 116
    .data1 58
    .data1 32
    .data1 102
    .data1 97
    .data1 105
    .data1 108
    .data1 101
    .data1 100
    .data1 10
    .data1 0
.skip 2
_?1STRINGPACKET.2:
    .data1 98
    .data1 108
    .data1 105
    .data1 116
    .data1 58
    .data1 32
    .data1 115
    .data1 117
    .data1 99
    .data1 99
    .data1 101
    .data1 115
    .data1 115
    .data1 10
    .data1 0
.equ ?2.15?2scratch.0, 0x0
.equ ?2.15?2ras_p, 0x10
.section .data
.section .text
.equ ?2.15?2auto_size, 0x20
 ## End main
.section .bss
.section .data
.skip 1
src::
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 22136
    .data4 305397760
    .data4 33818120
    .data4 1
    .data4 269488144
    .data4 305419896
    .data4 269488144
    .data4 305419896
    .data4 0
    .data4 0:959
.section .data
.comm dst, 0x1000, 4
.section .text
.import blit
.type blit,@function
.import _d_fix
.type _d_fix,@function
.import _i_rem
.type _i_rem,@function
.import _i_div
.type _i_div,@function
.import puti
.type puti,@function
.import puts
.type puts,@function
.import putchar
.type putchar,@function
.import putc
.type putc,@function
.import _d_le
.type _d_le,@function
.import _d_sub
.type _d_sub,@function
.import _d_eq
.type _d_eq,@function
.import cos
.type cos,@function
.import _d_ge
.type _d_ge,@function
.import _d_div
.type _d_div,@function
.import _d_add
.type _d_add,@function
.import _d_mul
.type _d_mul,@function
.import _d_ilfloat
.type _d_ilfloat,@function
.import _d_gt
.type _d_gt,@function
.import sin
.type sin,@function
.import _d_lt
.type _d_lt,@function
.import _d_neg
.type _d_neg,@function
.import fabs
.type fabs,@function
.import abs
.type abs,@function
