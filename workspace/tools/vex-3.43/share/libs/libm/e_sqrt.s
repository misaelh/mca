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
 ## Begin __ieee754_sqrt
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
__ieee754_sqrt::
.trace 9
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    mov $r0.7 = $r0.4   ## bblock 0, line 99,  t296,  t284
	c0    mov $r0.2 = $r0.3   ## bblock 0, line 99,  t294,  t283
	c0    ldw $r0.8 = ((_?1PACKET.1 + 4) + 0)[$r0.0]   ## bblock 0, line 99, t282, 0(I32)
	c0    and $r0.9 = $r0.3, 2146435072   ## bblock 0, line 113,  t4,  t283,  2146435072(I32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.9, 2146435072   ## bblock 0, line 113,  t586(I1),  t4,  2146435072(SI32)
	c0    mov $r0.5 = $r0.3   ## t283
	c0    mov $r0.6 = $r0.4   ## t284
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t266
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t283
;;								## 2
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t284
;;								## 3
	c0    ldw $r0.9 = ((_?1PACKET.1 + 0) + 0)[$r0.0]   ## bblock 0, line 99, t281, 0(I32)
;;								## 4
	c0    ldw $r0.10 = ((_?1PACKET.2 + 4) + 0)[$r0.0]   ## bblock 0, line 99, t280, 0(I32)
;;								## 5
	c0    ldw $r0.11 = ((_?1PACKET.2 + 0) + 0)[$r0.0]   ## bblock 0, line 99, t279, 0(I32)
	c0    brf $b0.0, L0?3   ## bblock 0, line 113,  t586(I1)
;;								## 6
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 41, line 114,  raddr(_d_mul)(P32),  t283,  t284,  t283,  t284
;;								## 7
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t283
	c0    mov $r0.5 = $r0.3   ## t262
	c0    mov $r0.6 = $r0.4   ## t263
;;								## 8
	c0    ldw $r0.4 = 0x18[$r0.1]  ## restore ## t284
;;								## 9
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 41, line 114,  raddr(_d_add)(P32),  t283,  t284,  t262,  t263
;;								## 10
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 11
;;								## 12
;;								## 13
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 41, line 114,  t267,  ?2.1?2auto_size(I32),  t266
;;								## 14
.trace 10
L0?3:
	c0    cmple $b0.0 = $r0.3, $r0.0   ## bblock 1, line 118,  t587(I1),  t283,  0(SI32)
	c0    and $r0.5 = $r0.3, 2147483647   ## [spec] bblock 37, line 119,  t14,  t283,  2147483647(I32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    or $r0.5 = $r0.5, $r0.4   ## [spec] bblock 37, line 119,  t15,  t14,  t284
;;								## 1
	c0    cmpeq $b0.0 = $r0.5, $r0.0   ## [spec] bblock 37, line 119,  t617(I1),  t15,  0(SI32)
	c0    brf $b0.0, L1?3   ## bblock 1, line 118,  t587(I1)
;;								## 2
;;								## 3
	c0    brf $b0.0, L2?3   ## bblock 37, line 119,  t617(I1)
;;								## 4
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 40, line 119,  t267,  ?2.1?2auto_size(I32),  t266
;;								## 5
.trace 18
L2?3:
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 38, line 120,  t618(I1),  t283,  0(SI32)
	c0    mov $r0.6 = $r0.4   ## t284
	c0    mov $r0.5 = $r0.3   ## t283
;;								## 0
;;								## 1
	c0    brf $b0.0, L3?3   ## bblock 38, line 120,  t618(I1)
;;								## 2
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 39, line 121,  raddr(_d_sub)(P32),  t283,  t284,  t283,  t284
;;								## 3
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 39, line 121,  raddr(_d_div)(P32),  t250,  t251,  t250,  t251
	c0    mov $r0.5 = $r0.3   ## t250
	c0    mov $r0.6 = $r0.4   ## t251
;;								## 4
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 5
;;								## 6
;;								## 7
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 39, line 121,  t267,  ?2.1?2auto_size(I32),  t266
;;								## 8
.trace 26
L3?3:
	c0    shr $r0.3 = $r0.3, 20   ## bblock 2, line 124,  t291(SI12),  t283,  20(SI32)
	c0    mov $r0.16 = $r0.9   ## t281
	c0    mov $r0.15 = $r0.8   ## t282
	c0    mov $r0.18 = $r0.11   ## t279
	c0    mov $r0.17 = $r0.10   ## t280
	c0    goto L4?3 ## goto
;;								## 0
.trace 5
L5?3:
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 31, line 126,  t612(I1),  t294,  0(SI32)
	c0    shru $r0.5 = $r0.3, 11   ## [spec] bblock 36, line 128,  t33(I21),  t296,  11(SI32)
	c0    shl $r0.4 = $r0.3, 21   ## [spec] bblock 36, line 128,  t373,  t296,  21(SI32)
;;								## 0
	c0    or $r0.5 = $r0.2, $r0.5   ## [spec] bblock 36, line 128,  t372,  t294,  t33(I21)
	c0    shru $r0.11 = $r0.4, 11   ## [spec] bblock 10, line 128-1,  t472(I21),  t373,  11(SI32)
	c0    shl $r0.10 = $r0.4, 21   ## [spec] bblock 10, line 128-1,  t470,  t373,  21(SI32)
;;								## 1
	c0    cmpeq $b0.0 = $r0.5, $r0.0   ## [spec] bblock 36, line 126-1,  t616(I1),  t372,  0(SI32)
	c0    or $r0.11 = $r0.5, $r0.11   ## [spec] bblock 10, line 128-1,  t490,  t372,  t472(I21)
	c0    shru $r0.13 = $r0.10, 11   ## [spec] bblock 24, line 128-2,  t481(I21),  t470,  11(SI32)
	c0    shl $r0.12 = $r0.10, 21   ## [spec] bblock 24, line 128-2,  t431,  t470,  21(SI32)
	c0    brf $b0.0, L6?3   ## bblock 31, line 126,  t612(I1)
;;								## 2
	c0    cmpeq $b0.1 = $r0.11, $r0.0   ## [spec] bblock 10, line 126-2,  t597(I1),  t490,  0(SI32)
	c0    or $r0.13 = $r0.11, $r0.13   ## [spec] bblock 24, line 128-2,  t480,  t490,  t481(I21)
	c0    add $r0.7 = $r0.7, -42   ## [spec] bblock 24, line 127-2,  t291(SI12),  t291(SI12),  -42(SI32)
	c0    shru $r0.14 = $r0.12, 11   ## [spec] bblock 22, line 128-3,  t483(I21),  t431,  11(SI32)
	c0    shl $r0.3 = $r0.12, 21   ## [spec] bblock 22, line 128-3,  t296,  t431,  21(SI32)
;;								## 3
	c0    cmpeq $b0.0 = $r0.13, $r0.0   ## [spec] bblock 24, line 126-3,  t609(I1),  t480,  0(SI32)
	c0    or $r0.2 = $r0.13, $r0.14   ## [spec] bblock 22, line 128-3,  t294,  t480,  t483(I21)
	c0    brf $b0.0, L7?3   ## bblock 36, line 126-1,  t616(I1)
;;								## 4
	c0    add $r0.9 = $r0.9, -42   ## [spec] bblock 22, line 127-3,  t482,  t482,  -42(SI32)
	c0    brf $b0.1, L8?3   ## bblock 10, line 126-2,  t597(I1)
;;								## 5
	c0    add $r0.6 = $r0.6, (~0x29)   ## bblock 24, line 0,  t553,  t553,  (~0x29)(I32)
	c0    brf $b0.0, L9?3   ## bblock 24, line 126-3,  t609(I1)
;;								## 6
	c0    add $r0.8 = $r0.8, (~0x29)   ## bblock 22, line 0,  t554,  t554,  (~0x29)(I32)
	c0    goto L5?3 ## goto
;;								## 7
.trace 30
L9?3:
	c0    mov $r0.9 = $r0.12   ## bblock 15, line 0,  t469,  t431
	c0    mov $r0.2 = $r0.13   ## bblock 15, line 0,  t468,  t480
	   ## bblock 15, line 0,  t367,  t554## $r0.8(skipped)
	   ## bblock 15, line 0,  t471,  t291(SI12)## $r0.7(skipped)
	c0    mov $r0.6 = $r0.0   ## bblock 32, line 130,  t393,  0(SI32)
;;								## 0
	c0    add $r0.10 = $r0.7, $r0.8   ## bblock 32, line 0,  t484,  t471,  t367
	c0    goto L10?3 ## goto
;;								## 1
.trace 6
L11?3:
	c0    and $r0.4 = $r0.2, $r0.3   ## bblock 33, line 130,  t38,  t468,  1048576(I32)
	c0    shl $r0.5 = $r0.2, 1   ## [spec] bblock 35, line 130,  t375,  t468,  1(SI32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## bblock 33, line 130,  t613(I1),  t38,  0(SI32)
	c0    and $r0.4 = $r0.5, $r0.3   ## [spec] bblock 35, line 130-1,  t458,  t375,  1048576(I32)
	c0    shl $r0.7 = $r0.5, 1   ## [spec] bblock 44, line 130-1,  t455,  t375,  1(SI32)
;;								## 1
	c0    cmpeq $b0.1 = $r0.4, $r0.0   ## [spec] bblock 35, line 130-1,  t615(I1),  t458,  0(SI32)
	c0    and $r0.4 = $r0.7, $r0.3   ## [spec] bblock 44, line 130-2,  t423,  t455,  1048576(I32)
	c0    shl $r0.8 = $r0.7, 1   ## [spec] bblock 11, line 130-2,  t460,  t455,  1(SI32)
;;								## 2
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## [spec] bblock 44, line 130-2,  t619(I1),  t423,  0(SI32)
	c0    and $r0.4 = $r0.8, $r0.3   ## [spec] bblock 11, line 130-3,  t489,  t460,  1048576(I32)
	c0    brf $b0.0, L12?3   ## bblock 33, line 130,  t613(I1)
;;								## 3
	c0    cmpeq $b0.1 = $r0.4, $r0.0   ## [spec] bblock 11, line 130-3,  t598(I1),  t489,  0(SI32)
	c0    shl $r0.2 = $r0.8, 1   ## [spec] bblock 25, line 130-3,  t468,  t460,  1(SI32)
	c0    brf $b0.1, L13?3   ## bblock 35, line 130-1,  t615(I1)
;;								## 4
	c0    brf $b0.0, L14?3   ## bblock 44, line 130-2,  t619(I1)
;;								## 5
	c0    brf $b0.1, L15?3   ## bblock 11, line 130-3,  t598(I1)
;;								## 6
	c0    add $r0.6 = $r0.6, 4   ## bblock 25, line 130-3,  t393,  t393,  4(SI32)
	c0    goto L11?3 ## goto
;;								## 7
.trace 33
L15?3:
	c0    add $r0.6 = $r0.6, 3   ## bblock 26, line 0,  t447,  t393,  3(I32)
	c0    mov $r0.2 = $r0.8   ## bblock 26, line 0,  t452,  t460
	c0    add $r0.10 = $r0.10, 1   ## bblock 34, line 131,  t614,  t484,  1(SI32)
	c0    goto L16?3 ## goto
;;								## 0
.trace 12
L17?3:
	c0    and $r0.2 = $r0.2, 1048575   ## bblock 3, line 136,  t58,  t294,  1048575(I32)
	c0    add $r0.4 = $r0.4, -1023   ## bblock 3, line 135,  t308,  t291(SI12),  -1023(SI32)
	c0    add $r0.8 = $r0.3, $r0.3   ## bblock 3, line 139,  t322,  t296,  t296
	c0    mov $r0.13 = $r0.0   ## bblock 3, line 0,  t424,  0(I32)
	c0    mov $r0.7 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
;;								## 0
	c0    or $r0.2 = $r0.2, 1048576   ## bblock 3, line 136,  t358,  t58,  1048576(I32)
	c0    and $r0.10 = $r0.4, 1   ## bblock 3, line 137,  t317,  t308,  1(I32)
	c0    and $r0.11 = $r0.3, $r0.7   ## bblock 3, line 138,  t318,  t296,  (~0x7fffffff)(I32)
	c0    shr $r0.28 = $r0.4, 1   ## bblock 3, line 141,  t312(SI31),  t308,  1(SI32)
	c0    mov $r0.30 = $r0.0   ## bblock 3, line 146,  t376,  0(SI32)
	c0    mov $r0.29 = $r0.0   ## bblock 3, line 146,  t387,  0(SI32)
	c0    mov $r0.9 = $r0.0   ## bblock 3, line 146,  t292,  0(SI32)
;;								## 1
	c0    shru $r0.11 = $r0.11, 31   ## bblock 3, line 138,  t319(I1),  t318,  31(SI32)
	c0    cmpne $b0.1 = $r0.10, $r0.0   ## bblock 3, line 138,  t590(I1),  t317,  0(I32)
	c0    cmpne $b0.0 = $r0.10, $r0.0   ## bblock 3, line 139,  t591(I1),  t317,  0(I32)
	c0    mov $r0.24 = $r0.18   ## t279
	c0    mov $r0.25 = $r0.17   ## t280
	c0    mov $r0.26 = $r0.16   ## t281
	c0    mov $r0.27 = $r0.15   ## t282
;;								## 2
	c0    add $r0.11 = $r0.2, $r0.11   ## bblock 3, line 138,  t589,  t358,  t319(I1)
	c0    slct $r0.8 = $b0.0, $r0.8, $r0.3   ## bblock 3, line 139,  t366,  t591(I1),  t322,  t296
;;								## 3
	c0    add $r0.11 = $r0.11, $r0.2   ## bblock 3, line 138,  t321,  t589,  t358
	c0    and $r0.4 = $r0.8, $r0.7   ## bblock 3, line 144,  t77,  t366,  (~0x7fffffff)(I32)
	c0    add $r0.6 = $r0.8, $r0.8   ## bblock 3, line 145,  t392,  t366,  t366
	c0    mov $r0.3 = $r0.0   ## bblock 3, line 146,  t389,  0(SI32)
;;								## 4
	c0    slct $r0.11 = $b0.1, $r0.11, $r0.2   ## bblock 3, line 138,  t309,  t590(I1),  t321,  t358
	c0    shru $r0.4 = $r0.4, 31   ## bblock 3, line 144,  t78(I1),  t77,  31(SI32)
;;								## 5
	c0    add $r0.4 = $r0.11, $r0.4   ## bblock 3, line 144,  t592,  t309,  t78(I1)
	c0    mov $r0.2 = 2097152   ## bblock 3, line 147,  t299(I31),  2097152(SI32)
;;								## 6
	c0    add $r0.5 = $r0.4, $r0.11   ## bblock 3, line 144,  t391,  t592,  t309
;;								## 7
.trace 1
L18?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 5, line 149,  t593(I1),  t299(I31),  0(SI32)
	c0    add $r0.4 = $r0.2, $r0.3   ## [spec] bblock 27, line 150,  t562,  t299(I31),  t389
	c0    add $r0.10 = $r0.2, $r0.9   ## [spec] bblock 27, line 154,  t416,  t299(I31),  t292
	c0    add $r0.11 = $r0.6, $r0.6   ## [spec] bblock 27, line 157,  t401,  t392,  t392
	c0    and $r0.8 = $r0.6, $r0.7   ## [spec] bblock 27, line 156,  t477,  t392,  (~0x7fffffff)(I32)
	c0    shru $r0.12 = $r0.2, 1   ## [spec] bblock 27, line 158,  t400(I31),  t299(I31),  1(SI32)
;;								## 0
	c0    add $r0.2 = $r0.2, $r0.4   ## [spec] bblock 27, line 152,  t413,  t299(I31),  t562
	c0    cmpgt $b0.1 = $r0.4, $r0.5   ## [spec] bblock 27, line 151,  t411(I1),  t562,  t391
	c0    sub $r0.14 = $r0.5, $r0.4   ## [spec] bblock 27, line 153,  t415,  t391,  t562
	c0    shru $r0.8 = $r0.8, 31   ## [spec] bblock 27, line 156,  t403(I1),  t477,  31(SI32)
	c0    cmpne $b0.2 = $r0.12, $r0.0   ## [spec] bblock 27, line 149-1,  t611(I1),  t400(I31),  0(SI32)
	c0    add $r0.15 = $r0.12, $r0.13   ## [spec] bblock 54, line 154-1,  t334,  t400(I31),  t424
	c0    add $r0.16 = $r0.11, $r0.11   ## [spec] bblock 54, line 157-1,  t396,  t401,  t401
	c0    and $r0.4 = $r0.11, $r0.7   ## [spec] bblock 54, line 156-1,  t103,  t401,  (~0x7fffffff)(I32)
;;								## 1
	c0    slct $r0.2 = $b0.1, $r0.3, $r0.2   ## [spec] bblock 27, line 152,  t414,  t411(I1),  t389,  t413
	c0    slct $r0.14 = $b0.1, $r0.5, $r0.14   ## [spec] bblock 27, line 153,  t475,  t411(I1),  t391,  t415
	c0    slct $r0.10 = $b0.1, $r0.9, $r0.10   ## [spec] bblock 27, line 154,  t476,  t411(I1),  t292,  t416
	c0    shru $r0.4 = $r0.4, 31   ## [spec] bblock 54, line 156-1,  t104(I1),  t103,  31(SI32)
	c0    shru $r0.17 = $r0.12, 1   ## [spec] bblock 54, line 158-1,  t397(I31),  t400(I31),  1(SI32)
	c0    add $r0.19 = $r0.16, $r0.16   ## [spec] bblock 51, line 157-2,  t405,  t396,  t396
	c0    and $r0.18 = $r0.16, $r0.7   ## [spec] bblock 51, line 156-2,  t410,  t396,  (~0x7fffffff)(I32)
	c0    brf $b0.0, L19?3   ## bblock 5, line 149,  t593(I1)
;;								## 2
	c0    add $r0.8 = $r0.14, $r0.8   ## bblock 27, line 156,  t610,  t475,  t403(I1)
	c0    add $r0.20 = $r0.2, $r0.12   ## [spec] bblock 54, line 150-1,  t564,  t414,  t400(I31)
	c0    cmpne $b0.0 = $r0.17, $r0.0   ## [spec] bblock 54, line 149-2,  t624(I1),  t397(I31),  0(SI32)
	c0    add $r0.21 = $r0.10, $r0.17   ## [spec] bblock 51, line 154-2,  t418,  t476,  t397(I31)
	c0    shru $r0.18 = $r0.18, 31   ## [spec] bblock 51, line 156-2,  t409(I1),  t410,  31(SI32)
	c0    shru $r0.22 = $r0.17, 1   ## [spec] bblock 51, line 158-2,  t406(I31),  t397(I31),  1(SI32)
	c0    add $r0.6 = $r0.19, $r0.19   ## [spec] bblock 48, line 157-3,  t392,  t405,  t405
	c0    and $r0.23 = $r0.19, $r0.7   ## [spec] bblock 48, line 156-3,  t433,  t405,  (~0x7fffffff)(I32)
;;								## 3
	c0    add $r0.8 = $r0.8, $r0.14   ## bblock 27, line 156,  t402,  t610,  t475
	c0    add $r0.12 = $r0.12, $r0.20   ## [spec] bblock 54, line 152-1,  t332,  t400(I31),  t564
	c0    cmpne $b0.1 = $r0.22, $r0.0   ## [spec] bblock 51, line 149-3,  t622(I1),  t406(I31),  0(SI32)
	c0    shru $r0.23 = $r0.23, 31   ## [spec] bblock 48, line 156-3,  t432(I1),  t433,  31(SI32)
	c0    brf $b0.2, L20?3   ## bblock 27, line 149-1,  t611(I1)
;;								## 4
	c0    cmpgt $b0.2 = $r0.20, $r0.8   ## bblock 54, line 151-1,  t331(I1),  t564,  t402
	c0    sub $r0.20 = $r0.8, $r0.20   ## bblock 54, line 153-1,  t333,  t402,  t564
;;								## 5
	c0    slct $r0.2 = $b0.2, $r0.2, $r0.12   ## bblock 54, line 152-1,  t443,  t331(I1),  t414,  t332
	c0    slct $r0.8 = $b0.2, $r0.8, $r0.20   ## bblock 54, line 153-1,  t360,  t331(I1),  t402,  t333
	c0    slct $r0.13 = $b0.2, $r0.13, $r0.15   ## bblock 54, line 154-1,  t395,  t331(I1),  t424,  t334
;;								## 6
	c0    add $r0.4 = $r0.8, $r0.4   ## bblock 54, line 156-1,  t623,  t360,  t104(I1)
	c0    add $r0.11 = $r0.2, $r0.17   ## [spec] bblock 51, line 150-2,  t566,  t443,  t397(I31)
	c0    add $r0.12 = $r0.13, $r0.22   ## [spec] bblock 48, line 154-3,  t441,  t395,  t406(I31)
;;								## 7
	c0    add $r0.4 = $r0.4, $r0.8   ## bblock 54, line 156-1,  t398,  t623,  t360
	c0    add $r0.17 = $r0.17, $r0.11   ## [spec] bblock 51, line 152-2,  t421,  t397(I31),  t566
	c0    brf $b0.0, L21?3   ## bblock 54, line 149-2,  t624(I1)
;;								## 8
	c0    cmpgt $b0.0 = $r0.11, $r0.4   ## bblock 51, line 151-2,  t420(I1),  t566,  t398
	c0    sub $r0.11 = $r0.4, $r0.11   ## bblock 51, line 153-2,  t419,  t398,  t566
;;								## 9
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.17   ## bblock 51, line 152-2,  t412,  t420(I1),  t443,  t421
	c0    slct $r0.4 = $b0.0, $r0.4, $r0.11   ## bblock 51, line 153-2,  t399,  t420(I1),  t398,  t419
	c0    slct $r0.9 = $b0.0, $r0.10, $r0.21   ## bblock 51, line 154-2,  t292,  t420(I1),  t476,  t418
;;								## 10
	c0    add $r0.18 = $r0.4, $r0.18   ## bblock 51, line 156-2,  t621,  t399,  t409(I1)
	c0    add $r0.8 = $r0.2, $r0.22   ## [spec] bblock 48, line 150-3,  t568,  t412,  t406(I31)
;;								## 11
	c0    add $r0.18 = $r0.18, $r0.4   ## bblock 51, line 156-2,  t407,  t621,  t399
	c0    add $r0.4 = $r0.22, $r0.8   ## [spec] bblock 48, line 152-3,  t445,  t406(I31),  t568
	c0    brf $b0.1, L22?3   ## bblock 51, line 149-3,  t622(I1)
;;								## 12
	c0    cmpgt $b0.0 = $r0.8, $r0.18   ## bblock 48, line 151-3,  t444(I1),  t568,  t407
	c0    sub $r0.8 = $r0.18, $r0.8   ## bblock 48, line 153-3,  t442,  t407,  t568
;;								## 13
	c0    slct $r0.3 = $b0.0, $r0.2, $r0.4   ## bblock 48, line 152-3,  t389,  t444(I1),  t412,  t445
	c0    slct $r0.18 = $b0.0, $r0.18, $r0.8   ## bblock 48, line 153-3,  t434,  t444(I1),  t407,  t442
	c0    slct $r0.13 = $b0.0, $r0.13, $r0.12   ## bblock 48, line 154-3,  t424,  t444(I1),  t395,  t441
	c0    shru $r0.2 = $r0.22, 1   ## bblock 48, line 158-3,  t299(I31),  t406(I31),  1(SI32)
;;								## 14
	c0    add $r0.23 = $r0.18, $r0.23   ## bblock 48, line 156-3,  t620,  t434,  t432(I1)
;;								## 15
	c0    add $r0.5 = $r0.23, $r0.18   ## bblock 48, line 156-3,  t391,  t620,  t434
	c0    goto L18?3 ## goto
;;								## 16
.trace 23
L22?3:
	c0    mov $r0.5 = $r0.19   ## bblock 49, line 0,  t311,  t405
	c0    mov $r0.7 = $r0.18   ## bblock 49, line 0,  t310,  t407
	c0    mov $r0.6 = $r0.2   ## bblock 49, line 0,  t384,  t412
	   ## bblock 49, line 0,  t368,  t395## $r0.13(skipped)
	   ## bblock 49, line 0,  t394,  t292## $r0.9(skipped)
	c0    mov $r0.2 = -2147483648   ## bblock 6, line 161,  t313(I31),  -2147483648(SI32)
	c0    mov $r0.17 = $r0.0   ## bblock 6, line 0,  t369,  0(I32)
;;								## 0
	c0    add $r0.34 = $r0.9, $r0.13   ## bblock 6, line 0,  t448,  t394,  t368
	c0    mov $r0.14 = $r0.29   ## t387
	c0    mov $r0.29 = $r0.24   ## t279
	c0    mov $r0.12 = -2147483648   ## -2147483648(SI32)
	c0    mov $r0.10 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
	c0    goto L23?3 ## goto
;;								## 1
.trace 2
L24?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 7, line 162,  t594(I1),  t313(I31),  0(SI32)
	c0    add $r0.4 = $r0.2, $r0.3   ## [spec] bblock 20, line 163,  t570,  t313(I31),  t376
	c0    cmplt $r0.9 = $r0.6, $r0.7   ## [spec] bblock 20, line 165,  t461,  t384,  t310
	c0    cmpeq $r0.8 = $r0.6, $r0.7   ## [spec] bblock 20, line 165,  t465,  t384,  t310
	c0    sub $r0.11 = $r0.7, $r0.6   ## [spec] bblock 20, line 168,  t573,  t310,  t384
	c0    add $r0.13 = $r0.6, 1   ## [spec] bblock 20, line 167,  t449,  t384,  1(SI32)
	c0    shru $r0.16 = $r0.2, 1   ## [spec] bblock 20, line 175,  t427(I31),  t313(I31),  1(SI32)
	c0    add $r0.15 = $r0.2, $r0.14   ## [spec] bblock 20, line 171,  t425,  t313(I31),  t387
;;								## 0
	c0    add $r0.2 = $r0.2, $r0.4   ## [spec] bblock 20, line 166,  t463,  t313(I31),  t570
	c0    cmpleu $r0.18 = $r0.4, $r0.5   ## [spec] bblock 20, line 165,  t464,  t570,  t311
	c0    cmpgeu $b0.1 = $r0.5, $r0.4   ## [spec] bblock 20, line 169,  t485(I1),  t311,  t570
	c0    sub $r0.19 = $r0.5, $r0.4   ## [spec] bblock 20, line 170,  t473,  t311,  t570
	c0    and $r0.4 = $r0.4, $r0.10   ## [spec] bblock 20, line 167,  t492,  t570,  (~0x7fffffff)(I32)
	c0    add $r0.20 = $r0.11, -1   ## [spec] bblock 20, line 169,  t438,  t573,  -1(SI32)
	c0    cmpne $b0.2 = $r0.16, $r0.0   ## [spec] bblock 20, line 162-1,  t608(I1),  t427(I31),  0(SI32)
	c0    add $r0.21 = $r0.16, $r0.17   ## [spec] bblock 64, line 171-1,  t535,  t427(I31),  t369
;;								## 1
	c0    andl $r0.8 = $r0.8, $r0.18   ## [spec] bblock 20, line 165,  t486,  t465,  t464
	c0    and $r0.18 = $r0.2, $r0.10   ## [spec] bblock 20, line 167,  t456,  t463,  (~0x7fffffff)(I32)
	c0    cmpeq $r0.4 = $r0.4, $r0.12   ## [spec] bblock 20, line 167,  t453,  t492,  -2147483648(SI32)
	c0    slct $r0.11 = $b0.1, $r0.11, $r0.20   ## [spec] bblock 20, line 169,  t439,  t485(I1),  t573,  t438
	c0    shru $r0.20 = $r0.16, 1   ## [spec] bblock 64, line 175-1,  t536(I31),  t427(I31),  1(SI32)
	c0    brf $b0.0, L25?3   ## bblock 7, line 162,  t594(I1)
;;								## 2
	c0    orl $b0.0 = $r0.9, $r0.8   ## bblock 20, line 165,  t488(I1),  t461,  t486
	c0    cmpeq $r0.18 = $r0.18, $r0.0   ## bblock 20, line 167,  t606,  t456,  0(I32)
	c0    cmpne $b0.1 = $r0.20, $r0.0   ## [spec] bblock 64, line 162-2,  t641(I1),  t536(I31),  0(SI32)
	c0    shru $r0.8 = $r0.20, 1   ## [spec] bblock 61, line 175-2,  t507(I31),  t536(I31),  1(SI32)
;;								## 3
	c0    andl $b0.3 = $r0.4, $r0.18   ## bblock 20, line 167,  t457(I1),  t453,  t606
	c0    slct $r0.2 = $b0.0, $r0.2, $r0.3   ## bblock 20, line 166,  t451,  t488(I1),  t463,  t376
	c0    slct $r0.19 = $b0.0, $r0.19, $r0.5   ## bblock 20, line 170,  t435,  t488(I1),  t473,  t311
	c0    slct $r0.11 = $b0.0, $r0.11, $r0.7   ## bblock 20, line 168,  t440,  t488(I1),  t439,  t310
	c0    slct $r0.15 = $b0.0, $r0.15, $r0.14   ## bblock 20, line 171,  t426,  t488(I1),  t425,  t387
	c0    cmpne $b0.4 = $r0.8, $r0.0   ## [spec] bblock 61, line 162-3,  t635(I1),  t507(I31),  0(SI32)
;;								## 4
	c0    slct $r0.13 = $b0.3, $r0.13, $r0.6   ## bblock 20, line 167,  t450,  t457(I1),  t449,  t384
	c0    and $r0.4 = $r0.19, $r0.10   ## bblock 20, line 173,  t436,  t435,  (~0x7fffffff)(I32)
	c0    add $r0.9 = $r0.19, $r0.19   ## bblock 20, line 174,  t437,  t435,  t435
	c0    add $r0.18 = $r0.2, $r0.16   ## [spec] bblock 64, line 163-1,  t574,  t451,  t427(I31)
	c0    add $r0.19 = $r0.15, $r0.20   ## [spec] bblock 61, line 171-2,  t506,  t426,  t536(I31)
;;								## 5
	c0    slct $r0.13 = $b0.0, $r0.13, $r0.6   ## bblock 20, line 167,  t479,  t488(I1),  t450,  t384
	c0    shru $r0.4 = $r0.4, 31   ## bblock 20, line 173,  t428(I1),  t436,  31(SI32)
	c0    add $r0.16 = $r0.16, $r0.18   ## [spec] bblock 64, line 166-1,  t511,  t427(I31),  t574
	c0    cmpleu $r0.22 = $r0.18, $r0.9   ## [spec] bblock 64, line 165-1,  t515,  t574,  t437
	c0    cmpgeu $b0.0 = $r0.9, $r0.18   ## [spec] bblock 64, line 169-1,  t518(I1),  t437,  t574
	c0    sub $r0.23 = $r0.9, $r0.18   ## [spec] bblock 64, line 170-1,  t519,  t437,  t574
	c0    and $r0.18 = $r0.18, $r0.10   ## [spec] bblock 64, line 167-1,  t520,  t574,  (~0x7fffffff)(I32)
;;								## 6
	c0    add $r0.4 = $r0.11, $r0.4   ## bblock 20, line 173,  t607,  t440,  t428(I1)
	c0    and $r0.24 = $r0.16, $r0.10   ## [spec] bblock 64, line 167-1,  t521,  t511,  (~0x7fffffff)(I32)
	c0    cmpeq $r0.18 = $r0.18, $r0.12   ## [spec] bblock 64, line 167-1,  t522,  t520,  -2147483648(SI32)
	c0    add $r0.25 = $r0.13, 1   ## [spec] bblock 64, line 167-1,  t525,  t479,  1(SI32)
;;								## 7
	c0    add $r0.4 = $r0.4, $r0.11   ## bblock 20, line 173,  t430,  t607,  t440
	c0    cmpeq $r0.24 = $r0.24, $r0.0   ## [spec] bblock 64, line 167-1,  t639,  t521,  0(I32)
	c0    brf $b0.2, L26?3   ## bblock 20, line 162-1,  t608(I1)
;;								## 8
	c0    cmplt $r0.26 = $r0.13, $r0.4   ## bblock 64, line 165-1,  t512,  t479,  t430
	c0    cmpeq $r0.11 = $r0.13, $r0.4   ## bblock 64, line 165-1,  t513,  t479,  t430
	c0    sub $r0.27 = $r0.4, $r0.13   ## bblock 64, line 168-1,  t577,  t430,  t479
	c0    andl $b0.2 = $r0.18, $r0.24   ## bblock 64, line 167-1,  t524(I1),  t522,  t639
;;								## 9
	c0    andl $r0.11 = $r0.11, $r0.22   ## bblock 64, line 165-1,  t516,  t513,  t515
	c0    slct $r0.25 = $b0.2, $r0.25, $r0.13   ## bblock 64, line 167-1,  t526,  t524(I1),  t525,  t479
	c0    add $r0.18 = $r0.27, -1   ## bblock 64, line 169-1,  t532,  t577,  -1(SI32)
;;								## 10
	c0    orl $b0.2 = $r0.26, $r0.11   ## bblock 64, line 165-1,  t517(I1),  t512,  t516
	c0    slct $r0.27 = $b0.0, $r0.27, $r0.18   ## bblock 64, line 169-1,  t533,  t518(I1),  t577,  t532
;;								## 11
	c0    slct $r0.25 = $b0.2, $r0.25, $r0.13   ## bblock 64, line 167-1,  t527,  t517(I1),  t526,  t479
	c0    slct $r0.16 = $b0.2, $r0.16, $r0.2   ## bblock 64, line 166-1,  t528,  t517(I1),  t511,  t451
	c0    slct $r0.23 = $b0.2, $r0.23, $r0.9   ## bblock 64, line 170-1,  t529,  t517(I1),  t519,  t437
	c0    slct $r0.27 = $b0.2, $r0.27, $r0.4   ## bblock 64, line 168-1,  t534,  t517(I1),  t533,  t430
	c0    slct $r0.21 = $b0.2, $r0.21, $r0.17   ## bblock 64, line 171-1,  t540,  t517(I1),  t535,  t369
	c0    shru $r0.2 = $r0.8, 1   ## [spec] bblock 58, line 175-3,  t313(I31),  t507(I31),  1(SI32)
;;								## 12
	c0    and $r0.4 = $r0.23, $r0.10   ## bblock 64, line 173-1,  t530,  t529,  (~0x7fffffff)(I32)
	c0    add $r0.9 = $r0.23, $r0.23   ## bblock 64, line 174-1,  t531,  t529,  t529
	c0    add $r0.11 = $r0.16, $r0.20   ## [spec] bblock 61, line 163-2,  t578,  t528,  t536(I31)
	c0    add $r0.13 = $r0.25, 1   ## [spec] bblock 61, line 167-2,  t349,  t527,  1(SI32)
	c0    add $r0.18 = $r0.21, $r0.8   ## [spec] bblock 58, line 171-3,  t356,  t540,  t507(I31)
;;								## 13
	c0    shru $r0.4 = $r0.4, 31   ## bblock 64, line 173-1,  t537(I1),  t530,  31(SI32)
	c0    add $r0.20 = $r0.20, $r0.11   ## [spec] bblock 61, line 166-2,  t494,  t536(I31),  t578
	c0    cmpleu $r0.22 = $r0.11, $r0.9   ## [spec] bblock 61, line 165-2,  t127,  t578,  t531
	c0    cmpgeu $b0.0 = $r0.9, $r0.11   ## [spec] bblock 61, line 169-2,  t352(I1),  t531,  t578
	c0    sub $r0.23 = $r0.9, $r0.11   ## [spec] bblock 61, line 170-2,  t355,  t531,  t578
	c0    and $r0.11 = $r0.11, $r0.10   ## [spec] bblock 61, line 167-2,  t344,  t578,  (~0x7fffffff)(I32)
;;								## 14
	c0    add $r0.4 = $r0.27, $r0.4   ## bblock 64, line 173-1,  t640,  t534,  t537(I1)
	c0    and $r0.24 = $r0.20, $r0.10   ## [spec] bblock 61, line 167-2,  t346,  t494,  (~0x7fffffff)(I32)
	c0    cmpeq $r0.11 = $r0.11, $r0.12   ## [spec] bblock 61, line 167-2,  t500,  t344,  -2147483648(SI32)
;;								## 15
	c0    add $r0.4 = $r0.4, $r0.27   ## bblock 64, line 173-1,  t539,  t640,  t534
	c0    cmpeq $r0.24 = $r0.24, $r0.0   ## [spec] bblock 61, line 167-2,  t633,  t346,  0(I32)
	c0    brf $b0.1, L27?3   ## bblock 64, line 162-2,  t641(I1)
;;								## 16
	c0    cmplt $r0.27 = $r0.25, $r0.4   ## bblock 61, line 165-2,  t121,  t527,  t539
	c0    cmpeq $r0.26 = $r0.25, $r0.4   ## bblock 61, line 165-2,  t493,  t527,  t539
	c0    sub $r0.28 = $r0.4, $r0.25   ## bblock 61, line 168-2,  t581,  t539,  t527
	c0    andl $b0.1 = $r0.11, $r0.24   ## bblock 61, line 167-2,  t499(I1),  t500,  t633
;;								## 17
	c0    andl $r0.26 = $r0.26, $r0.22   ## bblock 61, line 165-2,  t497,  t493,  t127
	c0    slct $r0.13 = $b0.1, $r0.13, $r0.25   ## bblock 61, line 167-2,  t498,  t499(I1),  t349,  t527
	c0    add $r0.11 = $r0.28, -1   ## bblock 61, line 169-2,  t503,  t581,  -1(SI32)
;;								## 18
	c0    orl $b0.1 = $r0.27, $r0.26   ## bblock 61, line 165-2,  t342(I1),  t121,  t497
	c0    slct $r0.28 = $b0.0, $r0.28, $r0.11   ## bblock 61, line 169-2,  t504,  t352(I1),  t581,  t503
;;								## 19
	c0    slct $r0.13 = $b0.1, $r0.13, $r0.25   ## bblock 61, line 167-2,  t293,  t342(I1),  t498,  t527
	c0    slct $r0.20 = $b0.1, $r0.20, $r0.16   ## bblock 61, line 166-2,  t297,  t342(I1),  t494,  t528
	c0    slct $r0.23 = $b0.1, $r0.23, $r0.9   ## bblock 61, line 170-2,  t502,  t342(I1),  t355,  t531
	c0    slct $r0.28 = $b0.1, $r0.28, $r0.4   ## bblock 61, line 168-2,  t505,  t342(I1),  t504,  t539
	c0    slct $r0.14 = $b0.1, $r0.19, $r0.15   ## bblock 61, line 171-2,  t387,  t342(I1),  t506,  t426
;;								## 20
	c0    and $r0.4 = $r0.23, $r0.10   ## bblock 61, line 173-2,  t501,  t502,  (~0x7fffffff)(I32)
	c0    add $r0.9 = $r0.23, $r0.23   ## bblock 61, line 174-2,  t509,  t502,  t502
	c0    add $r0.11 = $r0.20, $r0.8   ## [spec] bblock 58, line 163-3,  t582,  t297,  t507(I31)
	c0    add $r0.15 = $r0.13, 1   ## [spec] bblock 58, line 167-3,  t377,  t293,  1(SI32)
;;								## 21
	c0    shru $r0.4 = $r0.4, 31   ## bblock 61, line 173-2,  t508(I1),  t501,  31(SI32)
	c0    add $r0.8 = $r0.8, $r0.11   ## [spec] bblock 58, line 166-3,  t343,  t507(I31),  t582
	c0    cmpleu $r0.16 = $r0.11, $r0.9   ## [spec] bblock 58, line 165-3,  t385,  t582,  t509
	c0    cmpgeu $b0.0 = $r0.9, $r0.11   ## [spec] bblock 58, line 169-3,  t382(I1),  t509,  t582
	c0    sub $r0.19 = $r0.9, $r0.11   ## [spec] bblock 58, line 170-3,  t381,  t509,  t582
	c0    and $r0.11 = $r0.11, $r0.10   ## [spec] bblock 58, line 167-3,  t380,  t582,  (~0x7fffffff)(I32)
;;								## 22
	c0    add $r0.4 = $r0.28, $r0.4   ## bblock 61, line 173-2,  t634,  t505,  t508(I1)
	c0    and $r0.22 = $r0.8, $r0.10   ## [spec] bblock 58, line 167-3,  t379,  t343,  (~0x7fffffff)(I32)
	c0    cmpeq $r0.11 = $r0.11, $r0.12   ## [spec] bblock 58, line 167-3,  t345,  t380,  -2147483648(SI32)
;;								## 23
	c0    add $r0.4 = $r0.4, $r0.28   ## bblock 61, line 173-2,  t374,  t634,  t505
	c0    cmpeq $r0.22 = $r0.22, $r0.0   ## [spec] bblock 58, line 167-3,  t628,  t379,  0(I32)
	c0    brf $b0.4, L28?3   ## bblock 61, line 162-3,  t635(I1)
;;								## 24
	c0    cmplt $r0.24 = $r0.13, $r0.4   ## bblock 58, line 165-3,  t388,  t293,  t374
	c0    cmpeq $r0.23 = $r0.13, $r0.4   ## bblock 58, line 165-3,  t124,  t293,  t374
	c0    sub $r0.25 = $r0.4, $r0.13   ## bblock 58, line 168-3,  t585,  t374,  t293
	c0    andl $b0.1 = $r0.11, $r0.22   ## bblock 58, line 167-3,  t348(I1),  t345,  t628
;;								## 25
	c0    andl $r0.23 = $r0.23, $r0.16   ## bblock 58, line 165-3,  t128,  t124,  t385
	c0    slct $r0.15 = $b0.1, $r0.15, $r0.13   ## bblock 58, line 167-3,  t350,  t348(I1),  t377,  t293
	c0    add $r0.11 = $r0.25, -1   ## bblock 58, line 169-3,  t353,  t585,  -1(SI32)
;;								## 26
	c0    orl $b0.1 = $r0.24, $r0.23   ## bblock 58, line 165-3,  t383(I1),  t388,  t128
	c0    slct $r0.25 = $b0.0, $r0.25, $r0.11   ## bblock 58, line 169-3,  t354,  t382(I1),  t585,  t353
;;								## 27
	c0    slct $r0.6 = $b0.1, $r0.15, $r0.13   ## bblock 58, line 167-3,  t384,  t383(I1),  t350,  t293
	c0    slct $r0.3 = $b0.1, $r0.8, $r0.20   ## bblock 58, line 166-3,  t376,  t383(I1),  t343,  t297
	c0    slct $r0.19 = $b0.1, $r0.19, $r0.9   ## bblock 58, line 170-3,  t363,  t383(I1),  t381,  t509
	c0    slct $r0.25 = $b0.1, $r0.25, $r0.4   ## bblock 58, line 168-3,  t364,  t383(I1),  t354,  t374
	c0    slct $r0.17 = $b0.1, $r0.18, $r0.21   ## bblock 58, line 171-3,  t369,  t383(I1),  t356,  t540
;;								## 28
	c0    and $r0.4 = $r0.19, $r0.10   ## bblock 58, line 173-3,  t159,  t363,  (~0x7fffffff)(I32)
	c0    add $r0.5 = $r0.19, $r0.19   ## bblock 58, line 174-3,  t311,  t363,  t363
;;								## 29
	c0    shru $r0.4 = $r0.4, 31   ## bblock 58, line 173-3,  t160(I1),  t159,  31(SI32)
;;								## 30
	c0    add $r0.4 = $r0.25, $r0.4   ## bblock 58, line 173-3,  t629,  t364,  t160(I1)
;;								## 31
	c0    add $r0.7 = $r0.4, $r0.25   ## bblock 58, line 173-3,  t310,  t629,  t364
	c0    goto L24?3 ## goto
;;								## 32
.trace 25
L28?3:
	   ## bblock 59, line 0,  t495,  t509## $r0.9(skipped)
	c0    mov $r0.7 = $r0.4   ## bblock 59, line 0,  t370,  t374
	c0    mov $r0.17 = $r0.21   ## bblock 59, line 0,  t496,  t540
	   ## bblock 59, line 0,  t295,  t387## $r0.14(skipped)
	c0    shr $r0.6 = $r0.34, 1   ## [spec] bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    and $r0.4 = $r0.34, 1   ## [spec] bblock 9, line 193,  t200,  t448,  1(I32)
	c0    shl $r0.12 = $r0.33, 20   ## [spec] bblock 9, line 194,  t206,  t312(SI31),  20(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    add $r0.14 = $r0.14, $r0.17   ## bblock 8, line 0,  t390,  t295,  t496
	c0    or $r0.5 = $r0.9, $r0.7   ## bblock 8, line 179,  t171,  t495,  t370
	c0    cmpeq $b0.0 = $r0.4, 1   ## [spec] bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    add $r0.6 = $r0.6, 1071644672   ## [spec] bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 1
	c0    shru $r0.2 = $r0.14, 1   ## [spec] bblock 9, line 192,  t365(I31),  t390,  1(SI32)
	c0    add $r0.3 = $r0.6, $r0.12   ## [spec] bblock 9, line 194,  t218,  t596,  t206
	c0    cmpne $b0.1 = $r0.5, $r0.0   ## bblock 8, line 179,  t595(I1),  t171,  0(SI32)
	c0    goto L29?3 ## goto
;;								## 2
.trace 17
L31?3:
	c0    stw 0x1c[$r0.1] = $r0.34  ## spill ## t448
	c0    mov $r0.6 = $r0.30   ## t280
	c0    mov $r0.5 = $r0.29   ## t279
;;								## 0
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t206
;;								## 1
	c0    stw 0x24[$r0.1] = $r0.14  ## spill ## t390
;;								## 2
	c0    stw 0x28[$r0.1] = $r0.4  ## spill ## t315
;;								## 3
	c0    stw 0x2c[$r0.1] = $r0.3  ## spill ## t218
	c0    mov $r0.4 = $r0.32   ## t282
;;								## 4
	c0    stw 0x30[$r0.1] = $r0.30  ## spill ## t280
	c0    mov $r0.3 = $r0.31   ## t281
;;								## 5
	c0    stw 0x34[$r0.1] = $r0.29  ## spill ## t279
;;								## 6
	c0    stw 0x38[$r0.1] = $r0.32  ## spill ## t282
;;								## 7
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 12, line 180,  raddr(_d_sub)(P32),  t281,  t282,  t279,  t280
	c0    stw 0x3c[$r0.1] = $r0.31  ## spill ## t281
;;								## 8
	c0    ldw $r0.6 = 0x38[$r0.1]  ## restore ## t282
;;								## 9
	c0    ldw $r0.5 = 0x3c[$r0.1]  ## restore ## t281
;;								## 10
.call _d_ge, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_ge   ## bblock 12, line 181,  raddr(_d_ge)(P32),  t226,  t227,  t281,  t282
;;								## 11
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 12, line 181,  t599(I1),  t212,  0(I1)
	c0    ldw $r0.4 = 0x30[$r0.1]  ## restore ## t280
;;								## 12
	c0    ldw $r0.3 = 0x34[$r0.1]  ## restore ## t279
;;								## 13
	c0    ldw $r0.6 = 0x38[$r0.1]  ## restore ## t282
	c0    brf $b0.0, L32?3   ## bblock 12, line 181,  t599(I1)
;;								## 14
	c0    ldw $r0.5 = 0x3c[$r0.1]  ## restore ## t281
;;								## 15
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 13, line 182,  raddr(_d_add)(P32),  t279,  t280,  t281,  t282
;;								## 16
	c0    ldw $r0.14 = 0x24[$r0.1]  ## restore ## t390
;;								## 17
	c0    ldw $r0.34 = 0x1c[$r0.1]  ## restore ## t448
;;								## 18
	c0    cmpeq $b0.0 = $r0.14, (~0x0)   ## bblock 13, line 183,  t600(I1),  t390,  (~0x0)(I32)
	c0    ldw $r0.12 = 0x20[$r0.1]  ## restore ## t206
;;								## 19
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 20
	c0    brf $b0.0, L33?3   ## bblock 13, line 183,  t600(I1)
;;								## 21
	c0    mov $r0.14 = $r0.0   ## bblock 19, line 183,  t390,  0(SI32)
	c0    add $r0.34 = $r0.34, 1   ## bblock 19, line 183,  t448,  t448,  1(SI32)
;;								## 22
	c0    shr $r0.6 = $r0.34, 1   ## bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    shru $r0.14 = $r0.14, 1   ## bblock 9, line 192,  t365(I31),  t390,  1(SI32)
	c0    and $r0.2 = $r0.34, 1   ## bblock 9, line 193,  t200,  t448,  1(I32)
;;								## 23
	c0    cmpeq $b0.0 = $r0.2, 1   ## bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    or $r0.10 = $r0.14, (~0x7fffffff)   ## bblock 9, line 193,  t324,  t365(I31),  (~0x7fffffff)(I32)
	c0    add $r0.6 = $r0.6, 1071644672   ## bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 24
	c0    slct $r0.4 = $b0.0, $r0.10, $r0.14   ## bblock 9, line 193,  t315,  t323(I1),  t324,  t365(I31)
	c0    add $r0.3 = $r0.6, $r0.12   ## bblock 9, line 194,  t218,  t596,  t206
	c0    goto L30?3 ## goto
;;								## 25
.trace 32
L33?3:
	c0    stw 0x20[$r0.1] = $r0.12  ## spill ## t206
;;								## 0
	c0    stw 0x1c[$r0.1] = $r0.34  ## spill ## t448
;;								## 1
	c0    ldw $r0.6 = 0x38[$r0.1]  ## restore ## t282
;;								## 2
	c0    ldw $r0.5 = 0x3c[$r0.1]  ## restore ## t281
;;								## 3
.call _d_gt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_gt   ## bblock 14, line 184,  raddr(_d_gt)(P32),  t301,  t302,  t281,  t282
;;								## 4
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 14, line 185,  t601(I1),  t335,  0(I32)
	c0    cmpne $b0.1 = $r0.3, $r0.0   ## bblock 14, line 186,  t602(I1),  t335,  0(I32)
	c0    ldw $r0.14 = 0x24[$r0.1]  ## restore ## t390
;;								## 5
	c0    ldw $r0.34 = 0x1c[$r0.1]  ## restore ## t448
;;								## 6
	c0    cmpeq $b0.2 = $r0.14, (~0x1)   ## bblock 14, line 185,  t336(I1),  t390,  (~0x1)(I32)
	c0    add $r0.5 = $r0.14, 2   ## bblock 14, line 186,  t339,  t390,  2(SI32)
	c0    and $r0.2 = $r0.14, 1   ## bblock 14, line 188,  t340,  t390,  1(I32)
	c0    ldw $r0.12 = 0x20[$r0.1]  ## restore ## t206
;;								## 7
	c0    add $r0.6 = $r0.34, 1   ## bblock 14, line 185,  t337,  t448,  1(SI32)
	c0    add $r0.14 = $r0.14, $r0.2   ## bblock 14, line 188,  t341,  t390,  t340
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 8
	c0    slct $r0.6 = $b0.2, $r0.6, $r0.34   ## bblock 14, line 185,  t338,  t336(I1),  t337,  t448
	c0    slct $r0.14 = $b0.1, $r0.5, $r0.14   ## bblock 14, line 186,  t390,  t602(I1),  t339,  t341
;;								## 9
	c0    slct $r0.34 = $b0.0, $r0.6, $r0.34   ## bblock 14, line 185,  t448,  t601(I1),  t338,  t448
	c0    shru $r0.2 = $r0.14, 1   ## bblock 9, line 192,  t365(I31),  t390,  1(SI32)
;;								## 10
	c0    shr $r0.6 = $r0.34, 1   ## bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    and $r0.5 = $r0.34, 1   ## bblock 9, line 193,  t200,  t448,  1(I32)
	c0    or $r0.10 = $r0.2, (~0x7fffffff)   ## bblock 9, line 193,  t324,  t365(I31),  (~0x7fffffff)(I32)
;;								## 11
	c0    cmpeq $b0.0 = $r0.5, 1   ## bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    add $r0.6 = $r0.6, 1071644672   ## bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 12
	c0    slct $r0.4 = $b0.0, $r0.10, $r0.2   ## bblock 9, line 193,  t315,  t323(I1),  t324,  t365(I31)
	c0    add $r0.3 = $r0.6, $r0.12   ## bblock 9, line 194,  t218,  t596,  t206
	c0    goto L30?3 ## goto
;;								## 13
.trace 22
L32?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    ldw $r0.3 = 0x2c[$r0.1]  ## restore ## t218
;;								## 1
	c0    ldw $r0.4 = 0x28[$r0.1]  ## restore ## t315
;;								## 2
	c0    goto L30?3 ## goto
;;								## 3
.trace 24
L27?3:
	   ## bblock 62, line 0,  t495,  t531## $r0.9(skipped)
	c0    mov $r0.7 = $r0.4   ## bblock 62, line 0,  t370,  t539
	c0    mov $r0.17 = $r0.21   ## bblock 62, line 0,  t496,  t540
	   ## bblock 62, line 0,  t295,  t426## $r0.15(skipped)
	c0    shr $r0.6 = $r0.34, 1   ## [spec] bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    and $r0.4 = $r0.34, 1   ## [spec] bblock 9, line 193,  t200,  t448,  1(I32)
	c0    shl $r0.12 = $r0.33, 20   ## [spec] bblock 9, line 194,  t206,  t312(SI31),  20(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    add $r0.14 = $r0.15, $r0.17   ## bblock 8, line 0,  t390,  t295,  t496
	c0    or $r0.5 = $r0.9, $r0.7   ## bblock 8, line 179,  t171,  t495,  t370
	c0    cmpeq $b0.0 = $r0.4, 1   ## [spec] bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    add $r0.6 = $r0.6, 1071644672   ## [spec] bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 1
	c0    shru $r0.2 = $r0.14, 1   ## [spec] bblock 9, line 192,  t365(I31),  t390,  1(SI32)
	c0    add $r0.3 = $r0.6, $r0.12   ## [spec] bblock 9, line 194,  t218,  t596,  t206
	c0    cmpne $b0.1 = $r0.5, $r0.0   ## bblock 8, line 179,  t595(I1),  t171,  0(SI32)
	c0    goto L29?3 ## goto
;;								## 2
.trace 21
L26?3:
	   ## bblock 65, line 0,  t495,  t437## $r0.9(skipped)
	c0    mov $r0.7 = $r0.4   ## bblock 65, line 0,  t370,  t430
	   ## bblock 65, line 0,  t496,  t369## $r0.17(skipped)
	   ## bblock 65, line 0,  t295,  t426## $r0.15(skipped)
	c0    shr $r0.6 = $r0.34, 1   ## [spec] bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    and $r0.4 = $r0.34, 1   ## [spec] bblock 9, line 193,  t200,  t448,  1(I32)
	c0    shl $r0.12 = $r0.33, 20   ## [spec] bblock 9, line 194,  t206,  t312(SI31),  20(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    add $r0.14 = $r0.15, $r0.17   ## bblock 8, line 0,  t390,  t295,  t496
	c0    or $r0.5 = $r0.9, $r0.7   ## bblock 8, line 179,  t171,  t495,  t370
	c0    cmpeq $b0.0 = $r0.4, 1   ## [spec] bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    add $r0.6 = $r0.6, 1071644672   ## [spec] bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 1
	c0    shru $r0.2 = $r0.14, 1   ## [spec] bblock 9, line 192,  t365(I31),  t390,  1(SI32)
	c0    add $r0.3 = $r0.6, $r0.12   ## [spec] bblock 9, line 194,  t218,  t596,  t206
	c0    cmpne $b0.1 = $r0.5, $r0.0   ## bblock 8, line 179,  t595(I1),  t171,  0(SI32)
	c0    goto L29?3 ## goto
;;								## 2
.trace 14
L25?3:
	   ## bblock 66, line 0,  t495,  t311## $r0.5(skipped)
	   ## bblock 66, line 0,  t370,  t310## $r0.7(skipped)
	   ## bblock 66, line 0,  t496,  t369## $r0.17(skipped)
	   ## bblock 66, line 0,  t295,  t387## $r0.14(skipped)
	c0    shr $r0.6 = $r0.34, 1   ## [spec] bblock 9, line 191,  t195(SI31),  t448,  1(SI32)
	c0    and $r0.2 = $r0.34, 1   ## [spec] bblock 9, line 193,  t200,  t448,  1(I32)
	c0    shl $r0.12 = $r0.33, 20   ## [spec] bblock 9, line 194,  t206,  t312(SI31),  20(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t266
;;								## 0
	c0    add $r0.14 = $r0.14, $r0.17   ## bblock 8, line 0,  t390,  t295,  t496
	c0    or $r0.5 = $r0.5, $r0.7   ## bblock 8, line 179,  t171,  t495,  t370
	c0    cmpeq $b0.0 = $r0.2, 1   ## [spec] bblock 9, line 193,  t323(I1),  t200,  1(SI32)
	c0    add $r0.6 = $r0.6, 1071644672   ## [spec] bblock 9, line 194,  t596,  t195(SI31),  1071644672(SI32)
;;								## 1
	c0    cmpne $b0.1 = $r0.5, $r0.0   ## bblock 8, line 179,  t595(I1),  t171,  0(SI32)
	c0    shru $r0.2 = $r0.14, 1   ## [spec] bblock 9, line 192,  t365(I31),  t390,  1(SI32)
	c0    add $r0.3 = $r0.6, $r0.12   ## [spec] bblock 9, line 194,  t218,  t596,  t206
;;								## 2
L29?3:
	c0    or $r0.10 = $r0.2, $r0.10   ## [spec] bblock 9, line 193,  t324,  t365(I31),  (~0x7fffffff)(I32)
;;								## 3
	c0    slct $r0.4 = $b0.0, $r0.10, $r0.2   ## [spec] bblock 9, line 193,  t315,  t323(I1),  t324,  t365(I31)
	c0    br $b0.1, L31?3   ## bblock 8, line 179,  t595(I1)
;;								## 4
L30?3:
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 9, line 196,  t267,  ?2.1?2auto_size(I32),  t266
;;								## 5
.trace 20
L21?3:
	c0    mov $r0.5 = $r0.16   ## bblock 52, line 0,  t311,  t396
	c0    mov $r0.7 = $r0.4   ## bblock 52, line 0,  t310,  t398
	c0    mov $r0.6 = $r0.2   ## bblock 52, line 0,  t384,  t443
	   ## bblock 52, line 0,  t368,  t395## $r0.13(skipped)
	c0    mov $r0.9 = $r0.10   ## bblock 52, line 0,  t394,  t476
	c0    mov $r0.2 = -2147483648   ## bblock 6, line 161,  t313(I31),  -2147483648(SI32)
	c0    mov $r0.17 = $r0.0   ## bblock 6, line 0,  t369,  0(I32)
;;								## 0
	c0    add $r0.34 = $r0.9, $r0.13   ## bblock 6, line 0,  t448,  t394,  t368
	c0    mov $r0.14 = $r0.29   ## t387
	c0    mov $r0.29 = $r0.24   ## t279
	c0    mov $r0.12 = -2147483648   ## -2147483648(SI32)
	c0    mov $r0.10 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
	c0    goto L23?3 ## goto
;;								## 1
.trace 19
L20?3:
	c0    mov $r0.5 = $r0.11   ## bblock 55, line 0,  t311,  t401
	c0    mov $r0.7 = $r0.8   ## bblock 55, line 0,  t310,  t402
	c0    mov $r0.6 = $r0.2   ## bblock 55, line 0,  t384,  t414
	   ## bblock 55, line 0,  t368,  t424## $r0.13(skipped)
	c0    mov $r0.9 = $r0.10   ## bblock 55, line 0,  t394,  t476
	c0    mov $r0.2 = -2147483648   ## bblock 6, line 161,  t313(I31),  -2147483648(SI32)
	c0    mov $r0.17 = $r0.0   ## bblock 6, line 0,  t369,  0(I32)
;;								## 0
	c0    add $r0.34 = $r0.9, $r0.13   ## bblock 6, line 0,  t448,  t394,  t368
	c0    mov $r0.14 = $r0.29   ## t387
	c0    mov $r0.29 = $r0.24   ## t279
	c0    mov $r0.12 = -2147483648   ## -2147483648(SI32)
	c0    mov $r0.10 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
	c0    goto L23?3 ## goto
;;								## 1
.trace 13
L19?3:
	c0    mov $r0.7 = $r0.5   ## bblock 56, line 0,  t310,  t391
	   ## bblock 56, line 0,  t368,  t424## $r0.13(skipped)
	   ## bblock 56, line 0,  t394,  t292## $r0.9(skipped)
	c0    mov $r0.2 = -2147483648   ## bblock 6, line 161,  t313(I31),  -2147483648(SI32)
	c0    mov $r0.17 = $r0.0   ## bblock 6, line 0,  t369,  0(I32)
	c0    mov $r0.14 = $r0.29   ## t387
	c0    mov $r0.4 = $r0.6   ## t392
;;								## 0
	c0    mov $r0.5 = $r0.4   ## bblock 56, line 0,  t311,  t392
	c0    mov $r0.6 = $r0.3   ## bblock 56, line 0,  t384,  t389
	c0    add $r0.34 = $r0.9, $r0.13   ## bblock 6, line 0,  t448,  t394,  t368
	c0    mov $r0.29 = $r0.24   ## t279
	c0    mov $r0.12 = -2147483648   ## -2147483648(SI32)
	c0    mov $r0.10 = (~0x7fffffff)   ## (~0x7fffffff)(I32)
;;								## 1
L23?3:
	c0    mov $r0.31 = $r0.26   ## t281
	c0    mov $r0.32 = $r0.27   ## t282
	c0    mov $r0.33 = $r0.28   ## t312(SI31)
	c0    mov $r0.3 = $r0.30   ## t376
;;								## 2
	c0    mov $r0.30 = $r0.25   ## t280
	c0    goto L24?3 ## goto
;;								## 3
.trace 31
L14?3:
	c0    add $r0.6 = $r0.6, 2   ## bblock 30, line 0,  t447,  t393,  2(I32)
	c0    mov $r0.2 = $r0.7   ## bblock 30, line 0,  t452,  t455
	c0    add $r0.10 = $r0.10, 1   ## bblock 34, line 131,  t614,  t484,  1(SI32)
	c0    goto L16?3 ## goto
;;								## 0
.trace 29
L13?3:
	c0    add $r0.6 = $r0.6, 1   ## bblock 45, line 0,  t447,  t393,  1(I32)
	c0    mov $r0.2 = $r0.5   ## bblock 45, line 0,  t452,  t375
	c0    add $r0.10 = $r0.10, 1   ## bblock 34, line 131,  t614,  t484,  1(SI32)
	c0    goto L16?3 ## goto
;;								## 0
.trace 16
L12?3:
	   ## bblock 46, line 0,  t452,  t468## $r0.2(skipped)
	   ## bblock 46, line 0,  t447,  t393## $r0.6(skipped)
	c0    add $r0.10 = $r0.10, 1   ## bblock 34, line 131,  t614,  t484,  1(SI32)
;;								## 0
L16?3:
	c0    sub $r0.4 = $r0.10, $r0.6   ## bblock 34, line 131,  t291(SI12),  t614,  t447
	c0    sub $r0.5 = 32, $r0.6   ## bblock 34, line 132,  t49,  32(SI32),  t447
	c0    shl $r0.3 = $r0.9, $r0.6   ## bblock 34, line 133,  t296,  t469,  t447
;;								## 1
	c0    shru $r0.9 = $r0.9, $r0.5   ## bblock 34, line 132,  t50,  t469,  t49
;;								## 2
	c0    or $r0.2 = $r0.9, $r0.2   ## bblock 34, line 132,  t294,  t50,  t452
	c0    goto L17?3 ## goto
;;								## 3
.trace 28
L8?3:
	c0    mov $r0.9 = $r0.10   ## bblock 23, line 0,  t469,  t470
	c0    mov $r0.2 = $r0.11   ## bblock 23, line 0,  t468,  t490
	   ## bblock 23, line 0,  t367,  t554## $r0.8(skipped)
	c0    mov $r0.7 = $r0.6   ## bblock 23, line 0,  t471,  t553
	c0    mov $r0.6 = $r0.0   ## bblock 32, line 130,  t393,  0(SI32)
;;								## 0
	c0    add $r0.10 = $r0.7, $r0.8   ## bblock 32, line 0,  t484,  t471,  t367
	c0    goto L10?3 ## goto
;;								## 1
.trace 27
L7?3:
	c0    mov $r0.2 = $r0.5   ## bblock 4, line 0,  t468,  t372
	   ## bblock 4, line 0,  t367,  t482## $r0.9(skipped)
	c0    mov $r0.7 = $r0.6   ## bblock 4, line 0,  t471,  t553
	c0    mov $r0.6 = $r0.0   ## bblock 32, line 130,  t393,  0(SI32)
;;								## 0
	c0    mov $r0.9 = $r0.4   ## bblock 4, line 0,  t469,  t373
	c0    add $r0.10 = $r0.7, $r0.9   ## bblock 32, line 0,  t484,  t471,  t367
	c0    goto L10?3 ## goto
;;								## 1
.trace 15
L6?3:
	   ## bblock 42, line 0,  t468,  t294## $r0.2(skipped)
	   ## bblock 42, line 0,  t367,  t482## $r0.9(skipped)
	   ## bblock 42, line 0,  t471,  t291(SI12)## $r0.7(skipped)
	c0    mov $r0.6 = $r0.0   ## bblock 32, line 130,  t393,  0(SI32)
;;								## 0
	c0    add $r0.10 = $r0.7, $r0.9   ## bblock 32, line 0,  t484,  t471,  t367
;;								## 1
	c0    mov $r0.9 = $r0.3   ## bblock 42, line 0,  t469,  t296
;;								## 2
L10?3:
	c0    mov $r0.3 = 1048576   ## 1048576(I32)
	c0    goto L11?3 ## goto
;;								## 3
.trace 11
L1?3:
	c0    shr $r0.3 = $r0.3, 20   ## bblock 2, line 124,  t291(SI12),  t283,  20(SI32)
	c0    mov $r0.17 = $r0.10   ## t280
	c0    mov $r0.18 = $r0.11   ## t279
	c0    mov $r0.15 = $r0.8   ## t282
	c0    mov $r0.16 = $r0.9   ## t281
;;								## 0
L4?3:
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 2, line 125,  t588(I1),  t291(SI12),  0(SI32)
	c0    add $r0.6 = $r0.3, (~0x14)   ## [spec] bblock 21, line 0,  t553,  t291(SI12),  (~0x14)(I32)
	c0    mov $r0.8 = (~0x14)   ## [spec] bblock 21, line 0,  t554,  (~0x14)(I32)
	c0    mov $r0.9 = $r0.0   ## [spec] bblock 21, line 0,  t482,  0(SI32)
	c0    mov $r0.4 = $r0.3   ## t291(SI12)
;;								## 1
;;								## 2
	c0    mov $r0.3 = $r0.7   ## t296
	c0    brf $b0.0, L17?3   ## bblock 2, line 125,  t588(I1)
;;								## 3
	c0    mov $r0.7 = $r0.4   ## t291(SI12)
	c0    goto L5?3 ## goto
;;								## 4
.endp
.section .bss
.section .data
.equ ?2.1?2scratch.0, 0x0
.equ ?2.1?2ras_p, 0x10
.equ ?2.1?2spill_p, 0x14
.section .data
.section .text
.equ ?2.1?2auto_size, 0x40
 ## End __ieee754_sqrt
.section .bss
.section .data
_?1PACKET.2:
    .real8 0x01a56e1fc2f8f359
_?1PACKET.1:
    .real8 0x3ff0000000000000
.section .data
.section .text
.import _d_mul
.type _d_mul,@function
.import _d_div
.type _d_div,@function
.import _d_gt
.type _d_gt,@function
.import _d_add
.type _d_add,@function
.import _d_ge
.type _d_ge,@function
.import _d_sub
.type _d_sub,@function
