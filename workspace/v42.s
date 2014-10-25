 ## Target: VEX 1 cluster (big endian)
.comment ""
.comment "Copyright (C) 1990-2010 Hewlett-Packard Company"
.comment "VEX C compiler version 3.43 (20110131 release)"
.comment ""
.comment "-dir /home/alex/Documents/MCA/workspace/tools/vex-3.43 -mas_G -ms -O4 -fmm=misa.mm -o v42"
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
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 0, line 15,  t18(I1),  t3,  0(SI32)
;;								## 0
	c0    sub $r0.2 = $r0.0, $r0.3   ## bblock 0, line 15,  t2,  0(I32),  t3
;;								## 1
.return ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.2, $r0.3   ## bblock 0, line 15,  t4,  t18(I1),  t2,  t3
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 15,  t6,  ?2.1?2auto_size(I32),  t5
;;								## 2
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.1?2auto_size, 0x0
 ## End abs
 ## Begin puti
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-160, arg($r0.3:s32)
puti::
.trace 1
	c0    add $r0.1 = $r0.1, (-0xa0)
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 19,  t129,  0(SI32)
;;								## 0
	c0    add $r0.5 = $r0.1, 0x10   ## bblock 0, line 20,  t0,  t116,  offset(buf?1.4)=0x10(P32)
	c0    stw 0x1c[$r0.1] = $l0.0  ## spill ## t115
;;								## 1
	c0    cmplt $b0.0 = $r0.3, $r0.0   ## bblock 0, line 21,  t213(I1),  t127,  0(SI32)
	c0    stw 0x20[$r0.1] = $r0.5  ## spill ## t0
;;								## 2
	c0    mov $r0.6 = 45   ## 45(SI32)
	c0    mov $r0.4 = 1000000000   ## 1000000000(SI32)
;;								## 3
	c0    brf $b0.0, L0?3   ## bblock 0, line 21,  t213(I1)
;;								## 4
	c0    sub $r0.2 = $r0.0, $r0.3   ## bblock 30, line 23,  t127,  0(I32),  t127
	c0    mov $r0.7 = 1   ## bblock 30, line 24,  t129,  1(SI32)
;;								## 5
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t127
	c0    mov $r0.3 = $r0.2   ## t127
;;								## 6
	c0    stw 0x28[$r0.1] = $r0.7  ## spill ## t129
;;								## 7
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    stb 0[$r0.5] = $r0.6   ## bblock 30, line 24, t0, 45(SI32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 26,  raddr(_i_div)(P32),  t127,  1000000000(SI32)
;;								## 8
L1?3:
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 26,  raddr(_i_rem)(P32),  t7,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 9
	c0    mov $r0.4 = 10   ## 10(SI32)
	c0    stw 0x2c[$r0.1] = $r0.3  ## spill ## t8
;;								## 10
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 11
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 50,  raddr(_i_div)(P32),  t127,  10(SI32)
;;								## 12
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 50,  raddr(_i_rem)(P32),  t95,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 13
	c0    mov $r0.4 = 10   ## 10(SI32)
	c0    stw 0x30[$r0.1] = $r0.3  ## spill ## t96
;;								## 14
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 15
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 53,  raddr(_i_rem)(P32),  t127,  10(SI32)
;;								## 16
	c0    add $r0.5 = $r0.3, 48   ## bblock 1, line 53,  t107,  t106,  48(SI32)
	c0    ldw $r0.2 = 0x2c[$r0.1]  ## restore ## t8
;;								## 17
	c0    mov $r0.4 = 100000000   ## 100000000(SI32)
	c0    stw 0x34[$r0.1] = $r0.5  ## spill ## t107
;;								## 18
	c0    add $r0.2 = $r0.2, 48   ## bblock 1, line 26,  t9,  t8,  48(SI32)
	c0    ldw $r0.5 = 0x28[$r0.1]  ## restore ## t129
;;								## 19
	c0    sxtb $r0.6 = $r0.2   ## bblock 1, line 26,  t10(SI8),  t9
	c0    ldw $r0.7 = 0x30[$r0.1]  ## restore ## t96
;;								## 20
	c0    cmpne $b0.0 = $r0.6, 48   ## bblock 1, line 27,  t146(I1),  t10(SI8),  48(SI32)
	c0    add $r0.8 = $r0.5, 1   ## bblock 1, line 28,  t148,  t129,  1(SI32)
;;								## 21
	c0    slct $r0.6 = $b0.0, $r0.8, $r0.5   ## bblock 1, line 28,  t188,  t146(I1),  t148,  t129
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.0   ## bblock 1, line 28,  t130,  t146(I1),  t148,  0(SI32)
;;								## 22
	c0    add $r0.8 = $r0.6, 1   ## bblock 1, line 31,  t151,  t188,  1(SI32)
	c0    stw 0x38[$r0.1] = $r0.6  ## spill ## t188
;;								## 23
	c0    add $r0.6 = $r0.7, 48   ## bblock 1, line 50,  t97,  t96,  48(SI32)
	c0    stw 0x3c[$r0.1] = $r0.9  ## spill ## t130
;;								## 24
	c0    sxtb $r0.7 = $r0.6   ## bblock 1, line 50,  t98(SI8),  t97
	c0    stw 0x40[$r0.1] = $r0.8  ## spill ## t151
;;								## 25
	c0    cmpne $r0.8 = $r0.7, 48   ## bblock 1, line 51,  t145(I1),  t98(SI8),  48(SI32)
	c0    stw 0x44[$r0.1] = $r0.6  ## spill ## t97
;;								## 26
	c0    stw 0x48[$r0.1] = $r0.8  ## spill ## t145(I1)
;;								## 27
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 28
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 29
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 26,  t214,  t129,  t0
;;								## 30
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    stb 0[$r0.5] = $r0.2   ## bblock 1, line 26, t214, t9
	c0    call $l0.0 = _i_div   ## bblock 1, line 29,  raddr(_i_div)(P32),  t127,  100000000(SI32)
;;								## 31
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 29,  raddr(_i_rem)(P32),  t18,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 32
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 29,  t20,  t19,  48(SI32)
	c0    ldw $r0.9 = 0x3c[$r0.1]  ## restore ## t130
;;								## 33
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 29,  t21(SI8),  t20
	c0    ldw $r0.6 = 0x38[$r0.1]  ## restore ## t188
;;								## 34
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 30,  t131(I1),  t21(SI8),  48(SI32)
	c0    ldw $r0.8 = 0x40[$r0.1]  ## restore ## t151
;;								## 35
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 30,  t149(I1),  t130,  t131(I1)
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t0
;;								## 36
	c0    slct $r0.2 = $b0.0, $r0.6, $r0.8   ## bblock 1, line 31,  t189,  t149(I1),  t188,  t151
	c0    slct $r0.7 = $b0.0, $r0.9, $r0.8   ## bblock 1, line 31,  t132,  t149(I1),  t130,  t151
;;								## 37
	c0    add $r0.8 = $r0.2, 1   ## bblock 1, line 34,  t154,  t189,  1(SI32)
	c0    stw 0x4c[$r0.1] = $r0.2  ## spill ## t189
;;								## 38
	c0    add $r0.6 = $r0.6, $r0.5   ## bblock 1, line 29,  t215,  t188,  t0
	c0    stw 0x50[$r0.1] = $r0.7  ## spill ## t132
;;								## 39
	c0    mov $r0.4 = 10000000   ## 10000000(SI32)
	c0    stw 0x54[$r0.1] = $r0.8  ## spill ## t154
;;								## 40
	c0    stb 0[$r0.6] = $r0.3   ## bblock 1, line 29, t215, t20
;;								## 41
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 42
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 32,  raddr(_i_div)(P32),  t127,  10000000(SI32)
;;								## 43
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 32,  raddr(_i_rem)(P32),  t29,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 44
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 32,  t31,  t30,  48(SI32)
	c0    ldw $r0.7 = 0x50[$r0.1]  ## restore ## t132
;;								## 45
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 32,  t32(SI8),  t31
	c0    ldw $r0.5 = 0x4c[$r0.1]  ## restore ## t189
;;								## 46
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 33,  t133(I1),  t32(SI8),  48(SI32)
	c0    ldw $r0.8 = 0x54[$r0.1]  ## restore ## t154
;;								## 47
	c0    norl $b0.0 = $r0.7, $r0.2   ## bblock 1, line 33,  t152(I1),  t132,  t133(I1)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 48
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.8   ## bblock 1, line 34,  t190,  t152(I1),  t189,  t154
	c0    slct $r0.9 = $b0.0, $r0.7, $r0.8   ## bblock 1, line 34,  t134,  t152(I1),  t132,  t154
;;								## 49
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 37,  t157,  t190,  1(SI32)
	c0    stw 0x58[$r0.1] = $r0.2  ## spill ## t190
;;								## 50
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 32,  t217,  t189,  t0
	c0    stw 0x5c[$r0.1] = $r0.9  ## spill ## t134
;;								## 51
	c0    mov $r0.4 = 1000000   ## 1000000(SI32)
	c0    stw 0x60[$r0.1] = $r0.7  ## spill ## t157
;;								## 52
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 32, t217, t31
;;								## 53
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 54
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 35,  raddr(_i_div)(P32),  t127,  1000000(SI32)
;;								## 55
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 35,  raddr(_i_rem)(P32),  t40,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 56
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 35,  t42,  t41,  48(SI32)
	c0    ldw $r0.9 = 0x5c[$r0.1]  ## restore ## t134
;;								## 57
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 35,  t43(SI8),  t42
	c0    ldw $r0.5 = 0x58[$r0.1]  ## restore ## t190
;;								## 58
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 36,  t135(I1),  t43(SI8),  48(SI32)
	c0    ldw $r0.7 = 0x60[$r0.1]  ## restore ## t157
;;								## 59
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 36,  t155(I1),  t134,  t135(I1)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 60
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.7   ## bblock 1, line 37,  t191,  t155(I1),  t190,  t157
	c0    slct $r0.8 = $b0.0, $r0.9, $r0.7   ## bblock 1, line 37,  t136,  t155(I1),  t134,  t157
;;								## 61
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 40,  t160,  t191,  1(SI32)
	c0    stw 0x64[$r0.1] = $r0.2  ## spill ## t191
;;								## 62
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 35,  t219,  t190,  t0
	c0    stw 0x68[$r0.1] = $r0.8  ## spill ## t136
;;								## 63
	c0    mov $r0.4 = 100000   ## 100000(SI32)
	c0    stw 0x6c[$r0.1] = $r0.7  ## spill ## t160
;;								## 64
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 35, t219, t42
;;								## 65
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 66
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 38,  raddr(_i_div)(P32),  t127,  100000(SI32)
;;								## 67
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 38,  raddr(_i_rem)(P32),  t51,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 68
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 38,  t53,  t52,  48(SI32)
	c0    ldw $r0.8 = 0x68[$r0.1]  ## restore ## t136
;;								## 69
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 38,  t54(SI8),  t53
	c0    ldw $r0.5 = 0x64[$r0.1]  ## restore ## t191
;;								## 70
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 39,  t137(I1),  t54(SI8),  48(SI32)
	c0    ldw $r0.7 = 0x6c[$r0.1]  ## restore ## t160
;;								## 71
	c0    norl $b0.0 = $r0.8, $r0.2   ## bblock 1, line 39,  t158(I1),  t136,  t137(I1)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 72
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.7   ## bblock 1, line 40,  t192,  t158(I1),  t191,  t160
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.7   ## bblock 1, line 40,  t138,  t158(I1),  t136,  t160
;;								## 73
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 43,  t163,  t192,  1(SI32)
	c0    stw 0x70[$r0.1] = $r0.2  ## spill ## t192
;;								## 74
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 38,  t221,  t191,  t0
	c0    stw 0x74[$r0.1] = $r0.9  ## spill ## t138
;;								## 75
	c0    mov $r0.4 = 10000   ## 10000(SI32)
	c0    stw 0x78[$r0.1] = $r0.7  ## spill ## t163
;;								## 76
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 38, t221, t53
;;								## 77
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 78
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 41,  raddr(_i_div)(P32),  t127,  10000(SI32)
;;								## 79
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 41,  raddr(_i_rem)(P32),  t62,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 80
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 41,  t64,  t63,  48(SI32)
	c0    ldw $r0.9 = 0x74[$r0.1]  ## restore ## t138
;;								## 81
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 41,  t65(SI8),  t64
	c0    ldw $r0.5 = 0x70[$r0.1]  ## restore ## t192
;;								## 82
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 42,  t139(I1),  t65(SI8),  48(SI32)
	c0    ldw $r0.7 = 0x78[$r0.1]  ## restore ## t163
;;								## 83
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 42,  t161(I1),  t138,  t139(I1)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 84
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.7   ## bblock 1, line 43,  t193,  t161(I1),  t192,  t163
	c0    slct $r0.8 = $b0.0, $r0.9, $r0.7   ## bblock 1, line 43,  t140,  t161(I1),  t138,  t163
;;								## 85
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 46,  t166,  t193,  1(SI32)
	c0    stw 0x7c[$r0.1] = $r0.2  ## spill ## t193
;;								## 86
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 41,  t223,  t192,  t0
	c0    stw 0x80[$r0.1] = $r0.8  ## spill ## t140
;;								## 87
	c0    mov $r0.4 = 1000   ## 1000(SI32)
	c0    stw 0x84[$r0.1] = $r0.7  ## spill ## t166
;;								## 88
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 41, t223, t64
;;								## 89
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 90
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 44,  raddr(_i_div)(P32),  t127,  1000(SI32)
;;								## 91
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 44,  raddr(_i_rem)(P32),  t73,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 92
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 44,  t75,  t74,  48(SI32)
	c0    ldw $r0.8 = 0x80[$r0.1]  ## restore ## t140
;;								## 93
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 44,  t76(SI8),  t75
	c0    ldw $r0.5 = 0x7c[$r0.1]  ## restore ## t193
;;								## 94
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 45,  t141(I1),  t76(SI8),  48(SI32)
	c0    ldw $r0.7 = 0x84[$r0.1]  ## restore ## t166
;;								## 95
	c0    norl $b0.0 = $r0.8, $r0.2   ## bblock 1, line 45,  t164(I1),  t140,  t141(I1)
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t0
;;								## 96
	c0    slct $r0.2 = $b0.0, $r0.5, $r0.7   ## bblock 1, line 46,  t194,  t164(I1),  t193,  t166
	c0    slct $r0.9 = $b0.0, $r0.8, $r0.7   ## bblock 1, line 46,  t142,  t164(I1),  t140,  t166
;;								## 97
	c0    add $r0.7 = $r0.2, 1   ## bblock 1, line 49,  t169,  t194,  1(SI32)
	c0    stw 0x88[$r0.1] = $r0.2  ## spill ## t194
;;								## 98
	c0    add $r0.5 = $r0.5, $r0.6   ## bblock 1, line 44,  t225,  t193,  t0
	c0    stw 0x8c[$r0.1] = $r0.9  ## spill ## t142
;;								## 99
	c0    mov $r0.4 = 100   ## 100(SI32)
	c0    stw 0x90[$r0.1] = $r0.7  ## spill ## t169
;;								## 100
	c0    stb 0[$r0.5] = $r0.3   ## bblock 1, line 44, t225, t75
;;								## 101
	c0    ldw $r0.3 = 0x24[$r0.1]  ## restore ## t127
;;								## 102
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 47,  raddr(_i_div)(P32),  t127,  100(SI32)
;;								## 103
.call _i_rem, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_rem   ## bblock 1, line 47,  raddr(_i_rem)(P32),  t84,  10(SI32)
	c0    mov $r0.4 = 10   ## 10(SI32)
;;								## 104
	c0    add $r0.3 = $r0.3, 48   ## bblock 1, line 47,  t86,  t85,  48(SI32)
	c0    ldw $r0.9 = 0x8c[$r0.1]  ## restore ## t142
;;								## 105
	c0    sxtb $r0.2 = $r0.3   ## bblock 1, line 47,  t87(SI8),  t86
	c0    ldw $r0.7 = 0x90[$r0.1]  ## restore ## t169
;;								## 106
	c0    cmpne $r0.2 = $r0.2, 48   ## bblock 1, line 48,  t143(I1),  t87(SI8),  48(SI32)
	c0    ldw $r0.8 = 0x48[$r0.1]  ## restore ## t145(I1)
;;								## 107
	c0    norl $b0.0 = $r0.9, $r0.2   ## bblock 1, line 48,  t167(I1),  t142,  t143(I1)
	c0    ldw $r0.4 = 0x88[$r0.1]  ## restore ## t194
;;								## 108
	c0    slct $r0.9 = $b0.0, $r0.9, $r0.7   ## bblock 1, line 49,  t144,  t167(I1),  t142,  t169
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t0
;;								## 109
	c0    slct $r0.7 = $b0.0, $r0.4, $r0.7   ## bblock 1, line 49,  t195,  t167(I1),  t194,  t169
	c0    norl $b0.1 = $r0.9, $r0.8   ## bblock 1, line 51,  t170(I1),  t144,  t145(I1)
;;								## 110
	c0    add $r0.6 = $r0.7, $r0.5   ## bblock 1, line 50,  t229,  t195,  t0
	c0    add $r0.2 = $r0.7, 1   ## bblock 1, line 52,  t171,  t195,  1(SI32)
;;								## 111
	c0    add $r0.4 = $r0.4, $r0.5   ## bblock 1, line 47,  t227,  t194,  t0
	c0    slct $r0.7 = $b0.1, $r0.7, $r0.2   ## bblock 1, line 52,  t196,  t170(I1),  t195,  t171
;;								## 112
	c0    add $r0.2 = $r0.7, 1   ## bblock 1, line 54,  t112,  t196,  1(SI32)
	c0    ldw $r0.8 = 0x44[$r0.1]  ## restore ## t97
;;								## 113
	c0    add $r0.2 = $r0.2, $r0.5   ## bblock 1, line 55,  t231,  t112,  t0
	c0    add $r0.7 = $r0.7, $r0.5   ## bblock 1, line 53,  t232,  t196,  t0
;;								## 114
	c0    ldw $r0.9 = 0x34[$r0.1]  ## restore ## t107
;;								## 115
	c0    stb 0[$r0.4] = $r0.3   ## bblock 1, line 47, t227, t86
;;								## 116
	c0    stb 0[$r0.6] = $r0.8   ## bblock 1, line 50, t229, t97
	c0    mov $r0.3 = $r0.5   ## t0
;;								## 117
	c0    stb 0[$r0.2] = $r0.0   ## bblock 1, line 55, t231, 0(SI32)
;;								## 118
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    stb 0[$r0.7] = $r0.9   ## bblock 1, line 53, t232, t107
	c0    call $l0.0 = puts   ## bblock 1, line 56,  raddr(puts)(P32),  t0
;;								## 119
	c0    ldw $l0.0 = 0x1c[$r0.1]  ## restore ## t115
	      xnop 2
;;								## 122
.return ret()
	c0    return $r0.1 = $r0.1, (0xa0), $l0.0   ## bblock 20, line 57,  t116,  ?2.2?2auto_size(I32),  t115
;;								## 123
.trace 2
L0?3:
	c0    stw 0x28[$r0.1] = $r0.2  ## spill ## t129
;;								## 0
.call _i_div, caller, arg($r0.3:s32,$r0.4:s32), ret($r0.3:s32)
	c0    call $l0.0 = _i_div   ## bblock 1, line 26,  raddr(_i_div)(P32),  t127,  1000000000(SI32)
	c0    stw 0x24[$r0.1] = $r0.3  ## spill ## t127
;;								## 1
	c0    goto L1?3 ## goto
;;								## 2
.endp
.section .bss
.section .data
.equ ?2.2?2scratch.0, 0x0
.equ _?1PACKET.3, 0x10
.equ ?2.2?2ras_p, 0x1c
.equ ?2.2?2spill_p, 0x20
.section .data
.section .text
.equ ?2.2?2auto_size, 0xa0
 ## End puti
 ## Begin putf
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
putf::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t22
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t17
;;								## 2
.call _d_fix, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_fix   ## bblock 0, line 60,  raddr(_d_fix)(P32),  t16,  t17
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t16
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 0, line 61,  raddr(_d_ilfloat)(P32),  t38
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t38
;;								## 4
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t16
	c0    mov $r0.5 = $r0.3   ## t14
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t17
	c0    mov $r0.6 = $r0.4   ## t15
;;								## 6
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 0, line 61,  raddr(_d_sub)(P32),  t16,  t17,  t14,  t15
;;								## 7
	c0    mov $r0.3 = 1093567616   ## 1093567616(I32)
	c0    mov $r0.5 = $r0.3   ## t18
;;								## 8
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.4   ## t19
;;								## 9
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 0, line 61,  raddr(_d_mul)(P32),  1093567616(I32),  0(I32),  t18,  t19
;;								## 10
.call _d_fix, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_fix   ## bblock 0, line 61,  raddr(_d_fix)(P32),  t20,  t21
;;								## 11
.call abs, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = abs   ## bblock 0, line 61,  raddr(abs)(P32),  t8
;;								## 12
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t2
;;								## 13
	c0    ldw $r0.3 = 0x1c[$r0.1]  ## restore ## t38
;;								## 14
.call puti, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = puti   ## bblock 1, line 62,  raddr(puti)(P32),  t38
;;								## 15
.call putc, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = putc   ## bblock 2, line 63,  raddr(putc)(P32),  46(SI32)
	c0    mov $r0.3 = 46   ## 46(SI32)
;;								## 16
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t2
;;								## 17
.call puti, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = puti   ## bblock 3, line 64,  raddr(puti)(P32),  t2
;;								## 18
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t22
	      xnop 2
;;								## 21
.return ret()
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 4, line 65,  t23,  ?2.3?2auto_size(I32),  t22
;;								## 22
.endp
.section .bss
.section .data
.equ ?2.3?2scratch.0, 0x0
.equ ?2.3?2ras_p, 0x10
.equ ?2.3?2spill_p, 0x14
.section .data
.section .text
.equ ?2.3?2auto_size, 0x40
 ## End putf
.equ _?1TEMPLATEPACKET.11, 0x0
 ## Begin memcpy
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32,$r0.5:u32)
memcpy::
.trace 3
	      ## auto_size == 0
	c0    mov $r0.2 = $r0.4   ## t21
;;								## 0
	c0    add $r0.4 = $r0.5, (~0x6)   ## bblock 0, line 0,  t49,  t24,  (~0x6)(I32)
	c0    mov $r0.5 = $r0.3   ## t20
;;								## 1
.trace 1
L2?3:
	c0    cmpne $b0.0 = $r0.4, -7   ## bblock 1, line 68,  t73(I1),  t49,  -7(SI32)
	c0    ldb.d $r0.3 = 0[$r0.2]   ## [spec] bblock 3, line 70, t25(SI8), t21
;;								## 0
	c0    cmpne $b0.1 = $r0.4, -6   ## [spec] bblock 3, line 68-1,  t74(I1),  t49,  -6(SI32)
	c0    cmpne $b0.2 = $r0.4, -5   ## [spec] bblock 23, line 68-2,  t80(I1),  t49,  -5(SI32)
;;								## 1
	c0    cmpne $b0.0 = $r0.4, -4   ## [spec] bblock 20, line 68-3,  t79(I1),  t49,  -4(SI32)
	c0    brf $b0.0, L3?3   ## bblock 1, line 68,  t73(I1)
;;								## 2
	c0    cmpne $b0.3 = $r0.4, -3   ## [spec] bblock 17, line 68-4,  t78(I1),  t49,  -3(SI32)
	c0    cmpne $b0.4 = $r0.4, -2   ## [spec] bblock 14, line 68-5,  t77(I1),  t49,  -2(SI32)
;;								## 3
	c0    mov $r0.6 = $r0.4   ## [spec] bblock 11, line 0,  t28,  t49
	c0    cmpne $b0.5 = $r0.4, -1   ## [spec] bblock 11, line 68-6,  t76(I1),  t49,  -1(SI32)
;;								## 4
	c0    add $r0.4 = $r0.4, (~0x7)   ## [spec] bblock 8, line 0,  t49,  t49,  (~0x7)(I32)
	c0    cmpne $b0.6 = $r0.6, $r0.0   ## [spec] bblock 8, line 68-7,  t75(I1),  t28,  0(SI32)
;;								## 5
	c0    stb 0[$r0.5] = $r0.3   ## bblock 3, line 70, t20, t25(SI8)
	c0    brf $b0.1, L4?3   ## bblock 3, line 68-1,  t74(I1)
;;								## 6
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 23, line 70-1, t44(SI8), t21
	      xnop 1
;;								## 8
	c0    stb 0[$r0.5] = $r0.3   ## bblock 23, line 70-1, t20, t44(SI8)
	c0    brf $b0.2, L5?3   ## bblock 23, line 68-2,  t80(I1)
;;								## 9
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 20, line 70-2, t41(SI8), t21
	      xnop 1
;;								## 11
	c0    stb 0[$r0.5] = $r0.3   ## bblock 20, line 70-2, t20, t41(SI8)
	c0    brf $b0.0, L6?3   ## bblock 20, line 68-3,  t79(I1)
;;								## 12
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 17, line 70-3, t38(SI8), t21
	      xnop 1
;;								## 14
	c0    stb 0[$r0.5] = $r0.3   ## bblock 17, line 70-3, t20, t38(SI8)
	c0    brf $b0.3, L7?3   ## bblock 17, line 68-4,  t78(I1)
;;								## 15
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 14, line 70-4, t35(SI8), t21
	      xnop 1
;;								## 17
	c0    stb 0[$r0.5] = $r0.3   ## bblock 14, line 70-4, t20, t35(SI8)
	c0    brf $b0.4, L8?3   ## bblock 14, line 68-5,  t77(I1)
;;								## 18
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 11, line 70-5, t32(SI8), t21
	      xnop 1
;;								## 20
	c0    stb 0[$r0.5] = $r0.3   ## bblock 11, line 70-5, t20, t32(SI8)
	c0    brf $b0.5, L9?3   ## bblock 11, line 68-6,  t76(I1)
;;								## 21
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 8, line 70-6, t29(SI8), t21
	      xnop 1
;;								## 23
	c0    stb 0[$r0.5] = $r0.3   ## bblock 8, line 70-6, t20, t29(SI8)
	c0    brf $b0.6, L10?3   ## bblock 8, line 68-7,  t75(I1)
;;								## 24
	c0    ldb $r0.3 = 0[$r0.2]   ## bblock 5, line 70-7, t3(SI8), t21
	      xnop 1
;;								## 26
	c0    stb 0[$r0.5] = $r0.3   ## bblock 5, line 70-7, t20, t3(SI8)
	c0    goto L2?3 ## goto
;;								## 27
.trace 11
L10?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 10
L9?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 9
L8?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 8
L7?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 7
L6?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 6
L5?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 5
L4?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.trace 4
L3?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 72,  t7,  ?2.4?2auto_size(I32),  t6
	c0    mov $r0.3 = $r0.5   ## t20
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.4?2auto_size, 0x0
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
;;								## 0
	c0    mov $r0.12 = 6   ## bblock 0, line 0,  t85,  6(I32)
	c0    mov $r0.11 = 5   ## bblock 0, line 0,  t82,  5(I32)
;;								## 1
	c0    mov $r0.10 = 4   ## bblock 0, line 0,  t79,  4(I32)
	c0    mov $r0.9 = 3   ## bblock 0, line 0,  t76,  3(I32)
;;								## 2
	c0    mov $r0.7 = 1   ## bblock 0, line 0,  t91,  1(I32)
	c0    mov $r0.8 = 2   ## bblock 0, line 0,  t73,  2(I32)
;;								## 3
	c0    mov $r0.6 = $r0.4   ## bblock 0, line 74,  t94,  t35
	c0    mov $r0.4 = $r0.3   ## bblock 0, line 74,  t95,  t34
;;								## 4
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 77,  t38,  0(SI32)
	c0    mov $r0.3 = $r0.5   ## t36
;;								## 5
.trace 1
L11?3:
	c0    cmpltu $b0.0 = $r0.2, $r0.3   ## bblock 1, line 77,  t179(I1),  t38,  t36
	c0    ldb.d $r0.5 = 0[$r0.4]   ## [spec] bblock 3, line 79, t7(SI8), t95
;;								## 0
	c0    ldb.d $r0.14 = 0[$r0.6]   ## [spec] bblock 3, line 79, t11(SI8), t94
	c0    cmpltu $b0.1 = $r0.7, $r0.3   ## [spec] bblock 5, line 77-1,  t182(I1),  t91,  t36
;;								## 1
	c0    ldb.d $r0.15 = 1[$r0.4]   ## [spec] bblock 51, line 79-1, t69(SI8), t95
	c0    brf $b0.0, L12?3   ## bblock 1, line 77,  t179(I1)
;;								## 2
	c0    cmplt $b0.0 = $r0.5, $r0.14   ## bblock 3, line 79,  t180(I1),  t7(SI8),  t11(SI8)
	c0    cmpgt $b0.2 = $r0.5, $r0.14   ## [spec] bblock 4, line 81,  t181(I1),  t7(SI8),  t11(SI8)
;;								## 3
	c0    ldb.d $r0.5 = 1[$r0.6]   ## [spec] bblock 51, line 79-1, t71(SI8), t94
	c0    cmpltu $b0.3 = $r0.8, $r0.3   ## [spec] bblock 53, line 77-2,  t202(I1),  t73,  t36
;;								## 4
	c0    ldb.d $r0.14 = 2[$r0.4]   ## [spec] bblock 44, line 79-2, t64(SI8), t95
	c0    br $b0.0, L13?3   ## bblock 3, line 79,  t180(I1)
;;								## 5
	c0    cmplt $b0.0 = $r0.15, $r0.5   ## [spec] bblock 51, line 79-1,  t200(I1),  t69(SI8),  t71(SI8)
	c0    br $b0.2, L14?3   ## bblock 4, line 81,  t181(I1)
;;								## 6
	c0    cmpgt $b0.1 = $r0.15, $r0.5   ## [spec] bblock 52, line 81-1,  t201(I1),  t69(SI8),  t71(SI8)
	c0    brf $b0.1, L15?3   ## bblock 5, line 77-1,  t182(I1)
;;								## 7
	c0    ldb.d $r0.5 = 2[$r0.6]   ## [spec] bblock 44, line 79-2, t66(SI8), t94
	c0    br $b0.0, L16?3   ## bblock 51, line 79-1,  t200(I1)
;;								## 8
	c0    cmpltu $b0.0 = $r0.9, $r0.3   ## [spec] bblock 46, line 77-3,  t199(I1),  t76,  t36
	c0    br $b0.1, L17?3   ## bblock 52, line 81-1,  t201(I1)
;;								## 9
	c0    cmplt $b0.1 = $r0.14, $r0.5   ## [spec] bblock 44, line 79-2,  t197(I1),  t64(SI8),  t66(SI8)
	c0    brf $b0.3, L18?3   ## bblock 53, line 77-2,  t202(I1)
;;								## 10
	c0    cmpgt $b0.2 = $r0.14, $r0.5   ## [spec] bblock 45, line 81-2,  t198(I1),  t64(SI8),  t66(SI8)
	c0    ldb.d $r0.5 = 3[$r0.4]   ## [spec] bblock 37, line 79-3, t59(SI8), t95
;;								## 11
	c0    ldb.d $r0.14 = 3[$r0.6]   ## [spec] bblock 37, line 79-3, t61(SI8), t94
	c0    br $b0.1, L19?3   ## bblock 44, line 79-2,  t197(I1)
;;								## 12
	c0    cmpltu $b0.1 = $r0.10, $r0.3   ## [spec] bblock 39, line 77-4,  t196(I1),  t79,  t36
	c0    br $b0.2, L20?3   ## bblock 45, line 81-2,  t198(I1)
;;								## 13
	c0    cmplt $b0.0 = $r0.5, $r0.14   ## [spec] bblock 37, line 79-3,  t194(I1),  t59(SI8),  t61(SI8)
	c0    brf $b0.0, L21?3   ## bblock 46, line 77-3,  t199(I1)
;;								## 14
	c0    cmpgt $b0.2 = $r0.5, $r0.14   ## [spec] bblock 38, line 81-3,  t195(I1),  t59(SI8),  t61(SI8)
	c0    ldb.d $r0.5 = 4[$r0.4]   ## [spec] bblock 30, line 79-4, t54(SI8), t95
;;								## 15
	c0    ldb.d $r0.14 = 4[$r0.6]   ## [spec] bblock 30, line 79-4, t56(SI8), t94
	c0    br $b0.0, L22?3   ## bblock 37, line 79-3,  t194(I1)
;;								## 16
	c0    cmpltu $b0.0 = $r0.11, $r0.3   ## [spec] bblock 32, line 77-5,  t193(I1),  t82,  t36
	c0    br $b0.2, L23?3   ## bblock 38, line 81-3,  t195(I1)
;;								## 17
	c0    cmplt $b0.1 = $r0.5, $r0.14   ## [spec] bblock 30, line 79-4,  t191(I1),  t54(SI8),  t56(SI8)
	c0    brf $b0.1, L24?3   ## bblock 39, line 77-4,  t196(I1)
;;								## 18
	c0    cmpgt $b0.2 = $r0.5, $r0.14   ## [spec] bblock 31, line 81-4,  t192(I1),  t54(SI8),  t56(SI8)
	c0    ldb.d $r0.5 = 5[$r0.4]   ## [spec] bblock 23, line 79-5, t49(SI8), t95
;;								## 19
	c0    ldb.d $r0.14 = 5[$r0.6]   ## [spec] bblock 23, line 79-5, t51(SI8), t94
	c0    br $b0.1, L25?3   ## bblock 30, line 79-4,  t191(I1)
;;								## 20
	c0    cmpltu $b0.1 = $r0.12, $r0.3   ## [spec] bblock 25, line 77-6,  t190(I1),  t85,  t36
	c0    br $b0.2, L26?3   ## bblock 31, line 81-4,  t192(I1)
;;								## 21
	c0    cmplt $b0.0 = $r0.5, $r0.14   ## [spec] bblock 23, line 79-5,  t188(I1),  t49(SI8),  t51(SI8)
	c0    brf $b0.0, L27?3   ## bblock 32, line 77-5,  t193(I1)
;;								## 22
	c0    cmpgt $b0.2 = $r0.5, $r0.14   ## [spec] bblock 24, line 81-5,  t189(I1),  t49(SI8),  t51(SI8)
	c0    ldb.d $r0.5 = 6[$r0.4]   ## [spec] bblock 16, line 79-6, t46(SI8), t95
;;								## 23
	c0    ldb.d $r0.14 = 6[$r0.6]   ## [spec] bblock 16, line 79-6, t45(SI8), t94
	c0    br $b0.0, L28?3   ## bblock 23, line 79-5,  t188(I1)
;;								## 24
	c0    cmpltu $b0.0 = $r0.13, $r0.3   ## [spec] bblock 18, line 77-7,  t187(I1),  t88,  t36
	c0    br $b0.2, L29?3   ## bblock 24, line 81-5,  t189(I1)
;;								## 25
	c0    cmplt $b0.1 = $r0.5, $r0.14   ## [spec] bblock 16, line 79-6,  t185(I1),  t46(SI8),  t45(SI8)
	c0    brf $b0.1, L30?3   ## bblock 25, line 77-6,  t190(I1)
;;								## 26
	c0    cmpgt $b0.2 = $r0.5, $r0.14   ## [spec] bblock 17, line 81-6,  t186(I1),  t46(SI8),  t45(SI8)
	c0    ldb.d $r0.5 = 7[$r0.4]   ## [spec] bblock 9, line 79-7, t41(SI8), t95
;;								## 27
	c0    ldb.d $r0.14 = 7[$r0.6]   ## [spec] bblock 9, line 79-7, t39(SI8), t94
	c0    br $b0.1, L31?3   ## bblock 16, line 79-6,  t185(I1)
;;								## 28
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 11, line 77-7,  t38,  t38,  8(SI32)
	c0    br $b0.2, L32?3   ## bblock 17, line 81-6,  t186(I1)
;;								## 29
	c0    cmplt $b0.0 = $r0.5, $r0.14   ## [spec] bblock 9, line 79-7,  t183(I1),  t41(SI8),  t39(SI8)
	c0    brf $b0.0, L33?3   ## bblock 18, line 77-7,  t187(I1)
;;								## 30
	c0    cmpgt $b0.1 = $r0.5, $r0.14   ## [spec] bblock 10, line 81-7,  t184(I1),  t41(SI8),  t39(SI8)
	c0    add $r0.8 = $r0.8, 8   ## [spec] bblock 11, line 0,  t73,  t73,  8(I32)
;;								## 31
	c0    add $r0.9 = $r0.9, 8   ## [spec] bblock 11, line 0,  t76,  t76,  8(I32)
	c0    br $b0.0, L34?3   ## bblock 9, line 79-7,  t183(I1)
;;								## 32
	c0    add $r0.10 = $r0.10, 8   ## [spec] bblock 11, line 0,  t79,  t79,  8(I32)
	c0    br $b0.1, L35?3   ## bblock 10, line 81-7,  t184(I1)
;;								## 33
	c0    add $r0.12 = $r0.12, 8   ## bblock 11, line 0,  t85,  t85,  8(I32)
	c0    add $r0.11 = $r0.11, 8   ## bblock 11, line 0,  t82,  t82,  8(I32)
;;								## 34
	c0    add $r0.7 = $r0.7, 8   ## bblock 11, line 0,  t91,  t91,  8(I32)
	c0    add $r0.13 = $r0.13, 8   ## bblock 11, line 0,  t88,  t88,  8(I32)
;;								## 35
	c0    add $r0.4 = $r0.4, 8   ## bblock 11, line 0,  t95,  t95,  8(I32)
	c0    add $r0.6 = $r0.6, 8   ## bblock 11, line 0,  t94,  t94,  8(I32)
	      ## goto
;;
	c0    goto L11?3 ## goto
;;								## 36
.trace 27
L35?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 26
L34?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 25
L33?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 24
L32?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 23
L31?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 22
L30?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 21
L29?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 20
L28?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 19
L27?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 18
L26?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 17
L25?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 16
L24?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 15
L23?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 14
L22?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 13
L21?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 12
L20?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 11
L19?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 10
L18?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 9
L17?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 8
L16?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 7
L15?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.trace 6
L14?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 82,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
.trace 5
L13?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 80,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.trace 4
L12?3:
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 84,  t21,  ?2.5?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 0
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.5?2auto_size, 0x0
 ## End strncmp
 ## Begin rand
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
rand::
.trace 1
	      ## auto_size == 0
;;								## 0
	c0    ldw $r0.2 = ((_?1PACKET.7 + 0) + 0)[$r0.0]   ## bblock 0, line 86, t0, 0(I32)
	      xnop 1
;;								## 2
	c0    mpylu $r0.4 = $r0.2, 1103515245   ## bblock 0, line 89,  t18,  t0,  1103515245(SI32)
;;								## 3
	c0    mpyhs $r0.2 = $r0.2, 1103515245   ## bblock 0, line 89,  t19,  t0,  1103515245(SI32)
	      xnop 1
;;								## 5
	c0    add $r0.4 = $r0.4, $r0.2   ## bblock 0, line 89,  t1,  t18,  t19
;;								## 6
	c0    add $r0.4 = $r0.4, 12345   ## bblock 0, line 89,  t3,  t1,  12345(SI32)
;;								## 7
	c0    stw ((_?1PACKET.7 + 0) + 0)[$r0.0] = $r0.4   ## bblock 0, line 90, 0(I32), t3
	c0    shru $r0.2 = $r0.4, 16   ## bblock 0, line 90,  t4(I16),  t3,  16(I32)
;;								## 8
	c0    and $r0.3 = $r0.2, 32767   ## bblock 0, line 90,  t5,  t4(I16),  32767(I32)
;;								## 9
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 0, line 90,  t7,  ?2.6?2auto_size(I32),  t6
;;								## 10
.endp
.section .bss
.section .data
_?1PACKET.7:
    .data4 1
.section .data
.section .text
.equ ?2.6?2auto_size, 0x0
 ## End rand
 ## Begin fabsd
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
fabsd::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t16
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t13
;;								## 2
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 0, line 94,  raddr(_d_neg)(P32),  t12,  t13
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t12
;;								## 3
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t10
;;								## 4
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t11
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t13
;;								## 6
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t12
;;								## 7
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 0, line 94,  raddr(_d_lt)(P32),  t12,  t13,  0(I32),  0(I32)
;;								## 8
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 0, line 94,  t31(I1),  t5,  0(I1)
	c0    ldw $r0.2 = 0x18[$r0.1]  ## restore ## t12
;;								## 9
	c0    cmpne $b0.1 = $r0.3, $r0.0   ## bblock 0, line 94,  t32(I1),  t5,  0(I1)
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t10
;;								## 10
	c0    ldw $r0.6 = 0x14[$r0.1]  ## restore ## t13
;;								## 11
	c0    slct $r0.3 = $b0.0, $r0.5, $r0.2   ## bblock 0, line 94,  t14,  t31(I1),  t10,  t12
	c0    ldw $r0.2 = 0x20[$r0.1]  ## restore ## t11
;;								## 12
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t16
;;								## 13
	c0    slct $r0.4 = $b0.1, $r0.2, $r0.6   ## bblock 0, line 94,  t15,  t32(I1),  t11,  t13
	      xnop 1
;;								## 15
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 0, line 94,  t17,  ?2.7?2auto_size(I32),  t16
;;								## 16
.endp
.section .bss
.section .data
.equ ?2.7?2scratch.0, 0x0
.equ ?2.7?2ras_p, 0x10
.equ ?2.7?2spill_p, 0x14
.section .data
.section .text
.equ ?2.7?2auto_size, 0x40
 ## End fabsd
 ## Begin sind
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-128, arg($r0.3:u32,$r0.4:u32)
sind::
.trace 9
	c0    add $r0.1 = $r0.1, (-0x80)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t137
;;								## 1
	c0    stw 0x30[$r0.1] = $r0.57  ## spill ## t141
;;								## 2
	c0    mov $r0.57 = $r0.3   ## t150
	c0    stw 0x34[$r0.1] = $r0.58  ## spill ## t142
;;								## 3
	c0    mov $r0.58 = $r0.4   ## t151
;;								## 4
.trace 1
L36?3:
	c0    mov $r0.5 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.3 = $r0.57   ## t150
;;								## 0
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.4 = $r0.58   ## t151
;;								## 1
.call _d_gt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_gt   ## bblock 1, line 101,  raddr(_d_gt)(P32),  t150,  t151,  1075388923(I32),  1413754136(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 101,  t163(I1),  t44,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 3
	c0    mov $r0.3 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.5 = $r0.57   ## t150
;;								## 4
	c0    mov $r0.6 = $r0.58   ## t151
	c0    brf $b0.0, L37?3   ## bblock 1, line 101,  t163(I1)
;;								## 5
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 9, line 102,  raddr(_d_add)(P32),  (~0x3fe6de04)(I32),  1413754136(I32),  t150,  t151
;;								## 6
	c0    mov $r0.57 = $r0.3   ## t150
	c0    mov $r0.58 = $r0.4   ## t151
	      ## goto
;;
	c0    goto L36?3 ## goto
;;								## 7
.trace 8
L37?3:
	   ## bblock 11, line 0,  t158,  t151## $r0.58(skipped)
	   ## bblock 11, line 0,  t157,  t150## $r0.57(skipped)
;;								## 0
.trace 2
L38?3:
	c0    mov $r0.5 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.3 = $r0.57   ## t157
;;								## 0
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.4 = $r0.58   ## t158
;;								## 1
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 2, line 103,  raddr(_d_lt)(P32),  t157,  t158,  (~0x3fe6de04)(I32),  1413754136(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 103,  t164(I1),  t45,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 3
	c0    mov $r0.3 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.5 = $r0.57   ## t157
;;								## 4
	c0    mov $r0.6 = $r0.58   ## t158
	c0    brf $b0.0, L39?3   ## bblock 2, line 103,  t164(I1)
;;								## 5
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 8, line 104,  raddr(_d_add)(P32),  1075388923(I32),  1413754136(I32),  t157,  t158
;;								## 6
	c0    mov $r0.57 = $r0.3   ## t157
	c0    mov $r0.58 = $r0.4   ## t158
	      ## goto
;;
	c0    goto L38?3 ## goto
;;								## 7
.trace 10
L39?3:
	c0    stw 0x38[$r0.1] = $r0.59  ## spill ## t143
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw 0x3c[$r0.1] = $r0.60  ## spill ## t144
;;								## 1
	c0    stw 0x40[$r0.1] = $r0.61  ## spill ## t145
;;								## 2
	c0    stw 0x44[$r0.1] = $r0.62  ## spill ## t146
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 12, line 107,  raddr(_d_ilfloat)(P32),  1(SI32)
	c0    stw 0x48[$r0.1] = $r0.63  ## spill ## t147
;;								## 4
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x4c[$r0.1] = $r0.3  ## spill ## t65
;;								## 5
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x50[$r0.1] = $r0.4  ## spill ## t66
;;								## 6
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 107,  raddr(_d_mul)(P32),  t65,  t66,  1073741824(I32),  0(I32)
;;								## 7
	c0    mov $r0.6 = $r0.58   ## t158
	c0    stw 0x54[$r0.1] = $r0.3  ## spill ## t61
;;								## 8
	c0    mov $r0.3 = $r0.57   ## t157
	c0    stw 0x58[$r0.1] = $r0.4  ## spill ## t62
;;								## 9
	c0    mov $r0.4 = $r0.58   ## t158
	c0    mov $r0.5 = $r0.57   ## t157
;;								## 10
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 106,  raddr(_d_mul)(P32),  t157,  t158,  t157,  t158
;;								## 11
	c0    stw 0x5c[$r0.1] = $r0.3  ## spill ## t109
;;								## 12
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    stw 0x60[$r0.1] = $r0.4  ## spill ## t110
;;								## 13
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.5 = 0x54[$r0.1]  ## restore ## t61
;;								## 14
	c0    ldw $r0.6 = 0x58[$r0.1]  ## restore ## t62
;;								## 15
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 107,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t61,  t62
;;								## 16
	c0    stw 0x64[$r0.1] = $r0.3  ## spill ## t63
;;								## 17
	c0    stw 0x68[$r0.1] = $r0.4  ## spill ## t64
;;								## 18
	c0    ldw $r0.3 = 0x5c[$r0.1]  ## restore ## t109
;;								## 19
	c0    ldw $r0.4 = 0x60[$r0.1]  ## restore ## t110
;;								## 20
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 12, line 107,  raddr(_d_neg)(P32),  t109,  t110
;;								## 21
	c0    stw 0x6c[$r0.1] = $r0.3  ## spill ## t111
;;								## 22
	c0    stw 0x70[$r0.1] = $r0.4  ## spill ## t112
;;								## 23
	c0    ldw $r0.5 = 0x4c[$r0.1]  ## restore ## t65
;;								## 24
	c0    ldw $r0.6 = 0x50[$r0.1]  ## restore ## t66
;;								## 25
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 107,  raddr(_d_div)(P32),  t111,  t112,  t65,  t66
;;								## 26
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 27
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 107,  raddr(_d_div)(P32),  t77,  t78,  1073741824(I32),  0(I32)
;;								## 28
	c0    ldw $r0.5 = 0x64[$r0.1]  ## restore ## t63
;;								## 29
	c0    ldw $r0.6 = 0x68[$r0.1]  ## restore ## t64
;;								## 30
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 107,  raddr(_d_div)(P32),  t79,  t80,  t63,  t64
;;								## 31
	c0    mov $r0.6 = $r0.58   ## t158
	c0    mov $r0.5 = $r0.57   ## t157
;;								## 32
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 107,  raddr(_d_mul)(P32),  t81,  t82,  t157,  t158
;;								## 33
	c0    mov $r0.6 = $r0.58   ## t158
	c0    stw 0x28[$r0.1] = $r0.3  ## spill ## t153
;;								## 34
	c0    mov $r0.5 = $r0.57   ## t157
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t154
;;								## 35
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 108,  raddr(_d_add)(P32),  t153,  t154,  t157,  t158
;;								## 36
	c0    mov $r0.59 = 2   ## bblock 12, line 109,  t152,  2(SI32)
	c0    ldw $r0.60 = 0x6c[$r0.1]  ## restore ## t111
;;								## 37
	c0    ldw $r0.61 = 0x70[$r0.1]  ## restore ## t112
	c0    mov $r0.62 = $r0.3   ## t155
;;								## 38
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t153
	c0    mov $r0.2 = $r0.4   ## t156
;;								## 39
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t154
;;								## 40
;;								## 41
.trace 3
L40?3:
	c0    mov $r0.3 = $r0.57   ## t153
	c0    mov $r0.4 = $r0.58   ## t154
;;								## 0
.call fabsd, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabsd   ## bblock 4, line 110,  raddr(fabsd)(P32),  t153,  t154
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t156
;;								## 1
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
;;								## 2
.call _d_ge, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_ge   ## bblock 5, line 110,  raddr(_d_ge)(P32),  t93,  t94,  1055193269(I32),  (~0x771c970e)(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 3
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 5, line 110,  t165(I1),  t49,  0(I1)
	c0    mov $r0.3 = $r0.59   ## t152
	      xnop 1
;;								## 5
	c0    brf $b0.0, L41?3   ## bblock 5, line 110,  t165(I1)
;;								## 6
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 7, line 113,  raddr(_d_ilfloat)(P32),  t152
;;								## 7
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t103
;;								## 8
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t104
;;								## 9
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 113,  raddr(_d_mul)(P32),  t103,  t104,  1073741824(I32),  0(I32)
;;								## 10
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    mov $r0.5 = $r0.3   ## t99
;;								## 11
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.4   ## t100
;;								## 12
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 113,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t99,  t100
;;								## 13
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t101
;;								## 14
	c0    mov $r0.3 = $r0.60   ## t111
	c0    stw 0x24[$r0.1] = $r0.4  ## spill ## t102
;;								## 15
	c0    mov $r0.4 = $r0.61   ## t112
	c0    ldw $r0.5 = 0x18[$r0.1]  ## restore ## t103
;;								## 16
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t104
;;								## 17
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 113,  raddr(_d_div)(P32),  t111,  t112,  t103,  t104
;;								## 18
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 19
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 113,  raddr(_d_div)(P32),  t115,  t116,  1073741824(I32),  0(I32)
;;								## 20
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t101
;;								## 21
	c0    ldw $r0.6 = 0x24[$r0.1]  ## restore ## t102
;;								## 22
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 113,  raddr(_d_div)(P32),  t117,  t118,  t101,  t102
;;								## 23
	c0    mov $r0.5 = $r0.57   ## t153
	c0    mov $r0.6 = $r0.58   ## t154
;;								## 24
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 113,  raddr(_d_mul)(P32),  t119,  t120,  t153,  t154
;;								## 25
	c0    mov $r0.5 = $r0.62   ## t155
	c0    stw 0x28[$r0.1] = $r0.3  ## spill ## t153
;;								## 26
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t154
;;								## 27
	c0    ldw $r0.6 = 0x14[$r0.1]  ## restore ## t156
;;								## 28
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 114,  raddr(_d_add)(P32),  t153,  t154,  t155,  t156
;;								## 29
	c0    add $r0.59 = $r0.59, 1   ## bblock 7, line 115,  t152,  t152,  1(SI32)
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t154
;;								## 30
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t153
	c0    mov $r0.2 = $r0.4   ## t156
;;								## 31
	c0    mov $r0.62 = $r0.3   ## t155
	c0    goto L40?3 ## goto
;;								## 32
.trace 7
L41?3:
	c0    mov $r0.3 = $r0.62   ## t155
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t137
;;								## 0
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t156
	      xnop 1
;;								## 2
	c0    ldw $r0.57 = 0x30[$r0.1]  ## restore ## t141
;;								## 3
	c0    ldw $r0.58 = 0x34[$r0.1]  ## restore ## t142
;;								## 4
	c0    ldw $r0.59 = 0x38[$r0.1]  ## restore ## t143
;;								## 5
	c0    ldw $r0.60 = 0x3c[$r0.1]  ## restore ## t144
;;								## 6
	c0    ldw $r0.61 = 0x40[$r0.1]  ## restore ## t145
;;								## 7
	c0    ldw $r0.62 = 0x44[$r0.1]  ## restore ## t146
;;								## 8
	c0    ldw $r0.63 = 0x48[$r0.1]  ## restore ## t147
;;								## 9
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 13, line 117,  t138,  ?2.8?2auto_size(I32),  t137
;;								## 10
.endp
.section .bss
.section .data
.equ ?2.8?2scratch.0, 0x0
.equ ?2.8?2ras_p, 0x10
.equ ?2.8?2spill_p, 0x14
.section .data
.section .text
.equ ?2.8?2auto_size, 0x80
 ## End sind
 ## Begin cosd
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-128, arg($r0.3:u32,$r0.4:u32)
cosd::
.trace 7
	c0    add $r0.1 = $r0.1, (-0x80)
	c0    mov $r0.6 = $r0.4   ## t56
;;								## 0
	c0    mov $r0.5 = $r0.3   ## t55
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t143
;;								## 1
	c0    stw 0x30[$r0.1] = $r0.57  ## spill ## t147
	c0    mov $r0.3 = 1073291771   ## 1073291771(I32)
;;								## 2
	c0    stw 0x34[$r0.1] = $r0.58  ## spill ## t148
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 3
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 0, line 124,  raddr(_d_add)(P32),  1073291771(I32),  1413754136(I32),  t55,  t56
;;								## 4
	c0    mov $r0.57 = $r0.3   ## t156
	c0    mov $r0.58 = $r0.4   ## t157
;;								## 5
.trace 1
L42?3:
	c0    mov $r0.5 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.3 = $r0.57   ## t156
;;								## 0
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.4 = $r0.58   ## t157
;;								## 1
.call _d_gt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_gt   ## bblock 1, line 125,  raddr(_d_gt)(P32),  t156,  t157,  1075388923(I32),  1413754136(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 1, line 125,  t169(I1),  t46,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 3
	c0    mov $r0.3 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.5 = $r0.57   ## t156
;;								## 4
	c0    mov $r0.6 = $r0.58   ## t157
	c0    brf $b0.0, L43?3   ## bblock 1, line 125,  t169(I1)
;;								## 5
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 9, line 126,  raddr(_d_add)(P32),  (~0x3fe6de04)(I32),  1413754136(I32),  t156,  t157
;;								## 6
	c0    mov $r0.57 = $r0.3   ## t156
	c0    mov $r0.58 = $r0.4   ## t157
	      ## goto
;;
	c0    goto L42?3 ## goto
;;								## 7
.trace 8
L43?3:
	   ## bblock 11, line 0,  t164,  t157## $r0.58(skipped)
	   ## bblock 11, line 0,  t163,  t156## $r0.57(skipped)
;;								## 0
.trace 2
L44?3:
	c0    mov $r0.5 = (~0x3fe6de04)   ## (~0x3fe6de04)(I32)
	c0    mov $r0.3 = $r0.57   ## t163
;;								## 0
	c0    mov $r0.6 = 1413754136   ## 1413754136(I32)
	c0    mov $r0.4 = $r0.58   ## t164
;;								## 1
.call _d_lt, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_lt   ## bblock 2, line 127,  raddr(_d_lt)(P32),  t163,  t164,  (~0x3fe6de04)(I32),  1413754136(I32)
;;								## 2
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 2, line 127,  t170(I1),  t47,  0(I1)
	c0    mov $r0.4 = 1413754136   ## 1413754136(I32)
;;								## 3
	c0    mov $r0.3 = 1075388923   ## 1075388923(I32)
	c0    mov $r0.5 = $r0.57   ## t163
;;								## 4
	c0    mov $r0.6 = $r0.58   ## t164
	c0    brf $b0.0, L45?3   ## bblock 2, line 127,  t170(I1)
;;								## 5
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 8, line 128,  raddr(_d_add)(P32),  1075388923(I32),  1413754136(I32),  t163,  t164
;;								## 6
	c0    mov $r0.57 = $r0.3   ## t163
	c0    mov $r0.58 = $r0.4   ## t164
	      ## goto
;;
	c0    goto L44?3 ## goto
;;								## 7
.trace 10
L45?3:
	c0    stw 0x38[$r0.1] = $r0.59  ## spill ## t149
	c0    mov $r0.3 = 1   ## 1(SI32)
;;								## 0
	c0    stw 0x3c[$r0.1] = $r0.60  ## spill ## t150
;;								## 1
	c0    stw 0x40[$r0.1] = $r0.61  ## spill ## t151
;;								## 2
	c0    stw 0x44[$r0.1] = $r0.62  ## spill ## t152
;;								## 3
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 12, line 131,  raddr(_d_ilfloat)(P32),  1(SI32)
	c0    stw 0x48[$r0.1] = $r0.63  ## spill ## t153
;;								## 4
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x4c[$r0.1] = $r0.3  ## spill ## t71
;;								## 5
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x50[$r0.1] = $r0.4  ## spill ## t72
;;								## 6
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 131,  raddr(_d_mul)(P32),  t71,  t72,  1073741824(I32),  0(I32)
;;								## 7
	c0    mov $r0.6 = $r0.58   ## t164
	c0    stw 0x54[$r0.1] = $r0.3  ## spill ## t67
;;								## 8
	c0    mov $r0.3 = $r0.57   ## t163
	c0    stw 0x58[$r0.1] = $r0.4  ## spill ## t68
;;								## 9
	c0    mov $r0.4 = $r0.58   ## t164
	c0    mov $r0.5 = $r0.57   ## t163
;;								## 10
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 130,  raddr(_d_mul)(P32),  t163,  t164,  t163,  t164
;;								## 11
	c0    stw 0x5c[$r0.1] = $r0.3  ## spill ## t115
;;								## 12
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    stw 0x60[$r0.1] = $r0.4  ## spill ## t116
;;								## 13
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    ldw $r0.5 = 0x54[$r0.1]  ## restore ## t67
;;								## 14
	c0    ldw $r0.6 = 0x58[$r0.1]  ## restore ## t68
;;								## 15
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 131,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t67,  t68
;;								## 16
	c0    stw 0x64[$r0.1] = $r0.3  ## spill ## t69
;;								## 17
	c0    stw 0x68[$r0.1] = $r0.4  ## spill ## t70
;;								## 18
	c0    ldw $r0.3 = 0x5c[$r0.1]  ## restore ## t115
;;								## 19
	c0    ldw $r0.4 = 0x60[$r0.1]  ## restore ## t116
;;								## 20
.call _d_neg, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_neg   ## bblock 12, line 131,  raddr(_d_neg)(P32),  t115,  t116
;;								## 21
	c0    stw 0x6c[$r0.1] = $r0.3  ## spill ## t117
;;								## 22
	c0    stw 0x70[$r0.1] = $r0.4  ## spill ## t118
;;								## 23
	c0    ldw $r0.5 = 0x4c[$r0.1]  ## restore ## t71
;;								## 24
	c0    ldw $r0.6 = 0x50[$r0.1]  ## restore ## t72
;;								## 25
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 131,  raddr(_d_div)(P32),  t117,  t118,  t71,  t72
;;								## 26
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 27
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 131,  raddr(_d_div)(P32),  t83,  t84,  1073741824(I32),  0(I32)
;;								## 28
	c0    ldw $r0.5 = 0x64[$r0.1]  ## restore ## t69
;;								## 29
	c0    ldw $r0.6 = 0x68[$r0.1]  ## restore ## t70
;;								## 30
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 12, line 131,  raddr(_d_div)(P32),  t85,  t86,  t69,  t70
;;								## 31
	c0    mov $r0.6 = $r0.58   ## t164
	c0    mov $r0.5 = $r0.57   ## t163
;;								## 32
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 12, line 131,  raddr(_d_mul)(P32),  t87,  t88,  t163,  t164
;;								## 33
	c0    mov $r0.6 = $r0.58   ## t164
	c0    stw 0x28[$r0.1] = $r0.3  ## spill ## t159
;;								## 34
	c0    mov $r0.5 = $r0.57   ## t163
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t160
;;								## 35
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 12, line 132,  raddr(_d_add)(P32),  t159,  t160,  t163,  t164
;;								## 36
	c0    mov $r0.59 = 2   ## bblock 12, line 133,  t158,  2(SI32)
	c0    ldw $r0.60 = 0x6c[$r0.1]  ## restore ## t117
;;								## 37
	c0    ldw $r0.61 = 0x70[$r0.1]  ## restore ## t118
	c0    mov $r0.62 = $r0.3   ## t161
;;								## 38
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t159
	c0    mov $r0.2 = $r0.4   ## t162
;;								## 39
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t160
;;								## 40
;;								## 41
.trace 3
L46?3:
	c0    mov $r0.3 = $r0.57   ## t159
	c0    mov $r0.4 = $r0.58   ## t160
;;								## 0
.call fabsd, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabsd   ## bblock 4, line 134,  raddr(fabsd)(P32),  t159,  t160
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t162
;;								## 1
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
;;								## 2
.call _d_ge, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_ge   ## bblock 5, line 134,  raddr(_d_ge)(P32),  t99,  t100,  1055193269(I32),  (~0x771c970e)(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 3
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 5, line 134,  t171(I1),  t51,  0(I1)
	c0    mov $r0.3 = $r0.59   ## t158
	      xnop 1
;;								## 5
	c0    brf $b0.0, L47?3   ## bblock 5, line 134,  t171(I1)
;;								## 6
.call _d_ilfloat, caller, arg($r0.3:s32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_ilfloat   ## bblock 7, line 137,  raddr(_d_ilfloat)(P32),  t158
;;								## 7
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t109
;;								## 8
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## t110
;;								## 9
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 137,  raddr(_d_mul)(P32),  t109,  t110,  1073741824(I32),  0(I32)
;;								## 10
	c0    mov $r0.3 = 1072693248   ## 1072693248(I32)
	c0    mov $r0.5 = $r0.3   ## t105
;;								## 11
	c0    mov $r0.4 = $r0.0   ## 0(I32)
	c0    mov $r0.6 = $r0.4   ## t106
;;								## 12
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 137,  raddr(_d_add)(P32),  1072693248(I32),  0(I32),  t105,  t106
;;								## 13
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t107
;;								## 14
	c0    mov $r0.3 = $r0.60   ## t117
	c0    stw 0x24[$r0.1] = $r0.4  ## spill ## t108
;;								## 15
	c0    mov $r0.4 = $r0.61   ## t118
	c0    ldw $r0.5 = 0x18[$r0.1]  ## restore ## t109
;;								## 16
	c0    ldw $r0.6 = 0x1c[$r0.1]  ## restore ## t110
;;								## 17
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 137,  raddr(_d_div)(P32),  t117,  t118,  t109,  t110
;;								## 18
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 19
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 137,  raddr(_d_div)(P32),  t121,  t122,  1073741824(I32),  0(I32)
;;								## 20
	c0    ldw $r0.5 = 0x20[$r0.1]  ## restore ## t107
;;								## 21
	c0    ldw $r0.6 = 0x24[$r0.1]  ## restore ## t108
;;								## 22
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 137,  raddr(_d_div)(P32),  t123,  t124,  t107,  t108
;;								## 23
	c0    mov $r0.5 = $r0.57   ## t159
	c0    mov $r0.6 = $r0.58   ## t160
;;								## 24
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 137,  raddr(_d_mul)(P32),  t125,  t126,  t159,  t160
;;								## 25
	c0    mov $r0.5 = $r0.62   ## t161
	c0    stw 0x28[$r0.1] = $r0.3  ## spill ## t159
;;								## 26
	c0    stw 0x2c[$r0.1] = $r0.4  ## spill ## t160
;;								## 27
	c0    ldw $r0.6 = 0x14[$r0.1]  ## restore ## t162
;;								## 28
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 138,  raddr(_d_add)(P32),  t159,  t160,  t161,  t162
;;								## 29
	c0    add $r0.59 = $r0.59, 1   ## bblock 7, line 139,  t158,  t158,  1(SI32)
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t160
;;								## 30
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t159
	c0    mov $r0.2 = $r0.4   ## t162
;;								## 31
	c0    mov $r0.62 = $r0.3   ## t161
	c0    goto L46?3 ## goto
;;								## 32
.trace 9
L47?3:
	c0    mov $r0.3 = $r0.62   ## t161
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t143
;;								## 0
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t162
	      xnop 1
;;								## 2
	c0    ldw $r0.57 = 0x30[$r0.1]  ## restore ## t147
;;								## 3
	c0    ldw $r0.58 = 0x34[$r0.1]  ## restore ## t148
;;								## 4
	c0    ldw $r0.59 = 0x38[$r0.1]  ## restore ## t149
;;								## 5
	c0    ldw $r0.60 = 0x3c[$r0.1]  ## restore ## t150
;;								## 6
	c0    ldw $r0.61 = 0x40[$r0.1]  ## restore ## t151
;;								## 7
	c0    ldw $r0.62 = 0x44[$r0.1]  ## restore ## t152
;;								## 8
	c0    ldw $r0.63 = 0x48[$r0.1]  ## restore ## t153
;;								## 9
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x80), $l0.0   ## bblock 13, line 141,  t144,  ?2.9?2auto_size(I32),  t143
;;								## 10
.endp
.section .bss
.section .data
.equ ?2.9?2scratch.0, 0x0
.equ ?2.9?2ras_p, 0x10
.equ ?2.9?2spill_p, 0x14
.section .data
.section .text
.equ ?2.9?2auto_size, 0x80
 ## End cosd
 ## Begin tand
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
tand::
.trace 1
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t15
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.4  ## spill ## t29
;;								## 2
.call cosd, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = cosd   ## bblock 0, line 145,  raddr(cosd)(P32),  t28,  t29
	c0    stw 0x18[$r0.1] = $r0.3  ## spill ## t28
;;								## 3
	c0    stw 0x1c[$r0.1] = $r0.3  ## spill ## t7
;;								## 4
	c0    stw 0x20[$r0.1] = $r0.4  ## spill ## t8
;;								## 5
	c0    ldw $r0.4 = 0x14[$r0.1]  ## restore ## t29
;;								## 6
	c0    ldw $r0.3 = 0x18[$r0.1]  ## restore ## t28
;;								## 7
.call sind, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = sind   ## bblock 1, line 145,  raddr(sind)(P32),  t28,  t29
;;								## 8
	c0    ldw $r0.5 = 0x1c[$r0.1]  ## restore ## t7
;;								## 9
	c0    ldw $r0.6 = 0x20[$r0.1]  ## restore ## t8
;;								## 10
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 2, line 145,  raddr(_d_div)(P32),  t11,  t12,  t7,  t8
;;								## 11
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t15
	      xnop 2
;;								## 14
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 2, line 145,  t16,  ?2.10?2auto_size(I32),  t15
;;								## 15
.endp
.section .bss
.section .data
.equ ?2.10?2scratch.0, 0x0
.equ ?2.10?2ras_p, 0x10
.equ ?2.10?2spill_p, 0x14
.section .data
.section .text
.equ ?2.10?2auto_size, 0x40
 ## End tand
 ## Begin sqrtd
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg($r0.3:u32,$r0.4:u32)
sqrtd::
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
	c0    call $l0.0 = _d_div   ## bblock 0, line 149,  raddr(_d_div)(P32),  t91,  t92,  1076101120(I32),  0(I32)
	c0    stw 0x20[$r0.1] = $r0.3  ## spill ## t91
;;								## 3
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 154,  t93,  0(SI32)
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t101
;;								## 4
	c0    mov $r0.5 = $r0.0   ## 0(I32)
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t102
;;								## 5
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t93
;;								## 6
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## t92
;;								## 7
	c0    ldw $r0.3 = 0x20[$r0.1]  ## restore ## t91
;;								## 8
.call _d_eq, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_eq   ## bblock 0, line 155,  raddr(_d_eq)(P32),  t91,  t92,  0(I32),  0(I32)
;;								## 9
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 0, line 155,  t111(I1),  t27,  0(I1)
	c0    mov $r0.4 = $r0.0   ## [spec] bblock 10, line 156,  t105,  0(I32)
;;								## 10
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t78
;;								## 11
	c0    mov $r0.3 = $r0.0   ## [spec] bblock 10, line 156,  t106,  0(I32)
	c0    brf $b0.0, L48?3   ## bblock 0, line 155,  t111(I1)
;;								## 12
;;								## 13
L49?3:
.return ret($r0.3:u32,$r0.4:u32)
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 3, line 172,  t79,  ?2.11?2auto_size(I32),  t78
;;								## 14
.trace 5
L48?3:
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
;;								## 10
;;								## 11
.trace 1
L50?3:
	c0    cmplt $b0.0 = $r0.57, $r0.0   ## bblock 2, line 159,  t112(I1),  t107,  0(SI32)
	c0    cmpeq $b0.1 = $r0.58, $r0.0   ## [spec] bblock 4, line 161,  t113(I1),  t93,  0(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.59   ## t101
	c0    mov $r0.5 = $r0.59   ## t101
;;								## 1
	c0    mov $r0.4 = $r0.60   ## t102
	c0    brf $b0.0, L51?3   ## bblock 2, line 159,  t112(I1)
;;								## 2
	c0    mov $r0.6 = $r0.60   ## t102
	c0    brf $b0.1, L52?3   ## bblock 4, line 161,  t113(I1)
;;								## 3
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 163,  raddr(_d_mul)(P32),  t101,  t102,  t101,  t102
;;								## 4
	c0    mov $r0.5 = $r0.3   ## t46
	c0    mov $r0.6 = $r0.4   ## t47
;;								## 5
	c0    mov $r0.3 = $r0.61   ## t91
	c0    mov $r0.4 = $r0.62   ## t92
;;								## 6
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 7, line 163,  raddr(_d_sub)(P32),  t91,  t92,  t46,  t47
;;								## 7
	c0    mov $r0.6 = $r0.0   ## 0(I32)
	c0    mov $r0.5 = 1073741824   ## 1073741824(I32)
;;								## 8
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 163,  raddr(_d_div)(P32),  t50,  t51,  1073741824(I32),  0(I32)
;;								## 9
	c0    mov $r0.5 = $r0.59   ## t101
	c0    mov $r0.6 = $r0.60   ## t102
;;								## 10
.call _d_div, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_div   ## bblock 7, line 163,  raddr(_d_div)(P32),  t52,  t53,  t101,  t102
;;								## 11
	c0    mov $r0.5 = $r0.59   ## t101
	c0    mov $r0.6 = $r0.60   ## t102
;;								## 12
.call _d_add, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_add   ## bblock 7, line 164,  raddr(_d_add)(P32),  t56,  t57,  t101,  t102
;;								## 13
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t101
	c0    mov $r0.5 = $r0.3   ## t101
;;								## 14
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t102
	c0    mov $r0.6 = $r0.4   ## t102
;;								## 15
.call _d_mul, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_mul   ## bblock 7, line 165,  raddr(_d_mul)(P32),  t101,  t102,  t101,  t102
;;								## 16
	c0    mov $r0.5 = $r0.3   ## t66
	c0    mov $r0.6 = $r0.4   ## t67
;;								## 17
	c0    mov $r0.3 = $r0.61   ## t91
	c0    mov $r0.4 = $r0.62   ## t92
;;								## 18
.call _d_sub, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = _d_sub   ## bblock 7, line 165,  raddr(_d_sub)(P32),  t91,  t92,  t66,  t67
;;								## 19
.call fabsd, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32,$r0.4:u32)
	c0    call $l0.0 = fabsd   ## bblock 7, line 166,  raddr(fabsd)(P32),  t72,  t73
;;								## 20
	c0    mov $r0.5 = 1055193269   ## 1055193269(I32)
;;								## 21
.call _d_le, caller, arg($r0.3:u32,$r0.4:u32,$r0.5:u32,$r0.6:u32), ret($r0.3:s32)
	c0    call $l0.0 = _d_le   ## bblock 8, line 166,  raddr(_d_le)(P32),  t74,  t75,  1055193269(I32),  (~0x771c970e)(I32)
	c0    mov $r0.6 = (~0x771c970e)   ## (~0x771c970e)(I32)
;;								## 22
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 8, line 167,  t114(I1),  t103,  0(I32)
	c0    add $r0.57 = $r0.57, 1   ## bblock 6, line 0,  t107,  t107,  1(I32)
;;								## 23
	c0    slct $r0.58 = $b0.0, $r0.58, 1   ## bblock 8, line 167,  t93,  t114(I1),  t93,  1(SI32)
	c0    ldw $r0.60 = 0x18[$r0.1]  ## restore ## t102
;;								## 24
L53?3:
	c0    ldw $r0.59 = 0x14[$r0.1]  ## restore ## t101
;;								## 25
	c0    goto L50?3 ## goto
;;								## 26
.trace 3
L52?3:
	c0    add $r0.57 = $r0.57, 1   ## bblock 6, line 0,  t107,  t107,  1(I32)
	c0    stw 0x18[$r0.1] = $r0.60  ## spill ## t102
;;								## 0
	c0    stw 0x14[$r0.1] = $r0.59  ## spill ## t101
;;								## 1
	c0    ldw $r0.60 = 0x18[$r0.1]  ## restore ## t102
	c0    goto L53?3 ## goto
;;								## 2
.trace 6
L51?3:
	c0    mov $r0.4 = $r0.60   ## bblock 5, line 0,  t105,  t102
	c0    mov $r0.3 = $r0.59   ## bblock 5, line 0,  t106,  t101
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t78
;;								## 1
	c0    ldw $r0.57 = 0x28[$r0.1]  ## restore ## t82
;;								## 2
	c0    ldw $r0.58 = 0x2c[$r0.1]  ## restore ## t83
;;								## 3
	c0    ldw $r0.59 = 0x30[$r0.1]  ## restore ## t84
;;								## 4
	c0    ldw $r0.60 = 0x34[$r0.1]  ## restore ## t85
;;								## 5
	c0    ldw $r0.61 = 0x38[$r0.1]  ## restore ## t86
;;								## 6
	c0    ldw $r0.62 = 0x3c[$r0.1]  ## restore ## t87
;;								## 7
	c0    goto L49?3 ## goto
;;								## 8
.endp
.section .bss
.section .data
.equ ?2.11?2scratch.0, 0x0
.equ ?2.11?2ras_p, 0x10
.equ ?2.11?2spill_p, 0x14
.section .data
.section .text
.equ ?2.11?2auto_size, 0x40
 ## End sqrtd
.equ _?1TEMPLATEPACKET.7, 0x0
 ## Begin getdata
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
getdata::
.trace 1
	      ## auto_size == 0
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
	c0    ldw $r0.2 = ((_?1PACKET.20 + 0) + 0)[$r0.0]   ## bblock 0, line 337, t0, 0(I32)
;;								## 1
	c0    ldw $r0.4 = ((_?1PACKET.21 + 0) + 0)[$r0.0]   ## bblock 0, line 337, t1, 0(I32)
;;								## 2
	c0    mov $r0.5 = (inbuf + 0)   ## addr(inbuf?1.0)(P32)
;;								## 3
	c0    cmpgeu $b0.0 = $r0.2, $r0.4   ## bblock 0, line 337,  t25(I1),  t0,  t1
	c0    cmpeq $b0.1 = $r0.4, $r0.0   ## [spec] bblock 2, line 339,  t26(I1),  t1,  0x0(P32)
;;								## 4
	c0    mov $r0.2 = ((inbuf + 0) + 7554)   ## (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 5
	c0    brf $b0.0, L54?3   ## bblock 0, line 337,  t25(I1)
;;								## 6
	c0    brf $b0.1, L55?3   ## bblock 2, line 339,  t26(I1)
;;								## 7
	c0    stw ((_?1PACKET.20 + 0) + 0)[$r0.0] = $r0.5   ## bblock 6, line 341, 0(I32), addr(inbuf?1.0)(P32)
;;								## 8
	c0    stw ((_?1PACKET.21 + 0) + 0)[$r0.0] = $r0.2   ## bblock 6, line 342, 0(I32), (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 9
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 343,  t15,  ?2.12?2auto_size(I32),  t14
;;								## 10
.trace 3
L55?3:
	c0    ldw $r0.2 = ((_?1PACKET.20 + 0) + 0)[$r0.0]   ## bblock 3, line 345, t7, 0(I32)
	c0    mov $r0.3 = -6   ## -6(SI32)
;;								## 0
	c0    ldw $r0.4 = ((_?1PACKET.21 + 0) + 0)[$r0.0]   ## bblock 3, line 345, t8, 0(I32)
	      xnop 1
;;								## 2
	c0    cmpgtu $b0.0 = $r0.2, $r0.4   ## bblock 3, line 345,  t27(I1),  t7,  t8
	      xnop 1
;;								## 4
	c0    brf $b0.0, L56?3   ## bblock 3, line 345,  t27(I1)
;;								## 5
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 346,  t15,  ?2.12?2auto_size(I32),  t14
;;								## 6
.trace 4
L56?3:
	c0    ldw $r0.2 = ((_?1PACKET.20 + 0) + 0)[$r0.0]   ## bblock 4, line 347, t9, 0(I32)
	c0    mov $r0.3 = -5   ## -5(SI32)
	      xnop 1
;;								## 1
	c0    add $r0.2 = $r0.2, 1   ## bblock 4, line 347,  t10,  t9,  1(SI32)
;;								## 2
	c0    stw ((_?1PACKET.20 + 0) + 0)[$r0.0] = $r0.2   ## bblock 4, line 347, 0(I32), t10
;;								## 3
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 4, line 348,  t15,  ?2.12?2auto_size(I32),  t14
;;								## 4
.trace 2
L54?3:
	c0    ldw $r0.2 = ((_?1PACKET.20 + 0) + 0)[$r0.0]   ## bblock 1, line 350, t11, 0(I32)
	      xnop 1
;;								## 1
	c0    add $r0.4 = $r0.2, 1   ## bblock 1, line 350,  t12,  t11,  1(SI32)
;;								## 2
	c0    stw ((_?1PACKET.20 + 0) + 0)[$r0.0] = $r0.4   ## bblock 1, line 350, 0(I32), t12
;;								## 3
	c0    ldbu $r0.3 = 0[$r0.2]   ## bblock 1, line 350, t13(I8), t11
;;								## 4
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 350,  t15,  ?2.12?2auto_size(I32),  t14
;;								## 5
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.12?2auto_size, 0x0
 ## End getdata
 ## Begin getcode
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
getcode::
.trace 1
	      ## auto_size == 0
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 356,  t56(I1),  t51,  0(SI32)
;;								## 0
	c0    ldw $r0.2 = ((eaddr + 0) + 0)[$r0.0]   ## bblock 0, line 352, t50, 0(I32)
	c0    mov $r0.4 = $r0.3   ## t51
;;								## 1
	c0    ldw.d $r0.5 = ((baddr + 0) + 0)[$r0.0]   ## [spec] bblock 8, line 358, t1, 0(I32)
	c0    brf $b0.0, L57?3   ## bblock 0, line 356,  t56(I1)
;;								## 2
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 3
	c0    add $r0.5 = $r0.5, 7   ## bblock 8, line 358,  t2,  t1,  7(SI32)
;;								## 4
	c0    and $r0.5 = $r0.5, (~0x7)   ## bblock 8, line 358,  t3,  t2,  (~0x7)(I32)
;;								## 5
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.5   ## bblock 8, line 358, 0(I32), t3
;;								## 6
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 8, line 359,  t39,  ?2.13?2auto_size(I32),  t38
;;								## 7
.trace 2
L57?3:
	c0    ldw $r0.6 = ((codedone + 0) + 0)[$r0.0]   ## bblock 1, line 361, t4, 0(I32)
	c0    mov $r0.3 = -6   ## -6(SI32)
	      xnop 1
;;								## 1
	c0    cmpne $b0.0 = $r0.6, $r0.0   ## bblock 1, line 361,  t57(I1),  t4,  0(SI32)
	c0    cmplt $b0.1 = $r0.6, $r0.0   ## [spec] bblock 5, line 363,  t59(I1),  t4,  0(SI32)
	      xnop 1
;;								## 3
	c0    brf $b0.0, L58?3   ## bblock 1, line 361,  t57(I1)
;;								## 4
	c0    brf $b0.1, L59?3   ## bblock 5, line 363,  t59(I1)
;;								## 5
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 364,  t39,  ?2.13?2auto_size(I32),  t38
;;								## 6
.trace 5
L59?3:
	c0    stw ((codedone + 0) + 0)[$r0.0] = $r0.0   ## bblock 6, line 365, 0(I32), 0(SI32)
	c0    mov $r0.3 = -1   ## -1(SI32)
;;								## 0
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 366,  t39,  ?2.13?2auto_size(I32),  t38
;;								## 1
.trace 3
L58?3:
	c0    ldw $r0.5 = ((baddr + 0) + 0)[$r0.0]   ## bblock 2, line 368, t6, 0(I32)
	c0    mov $r0.6 = -1   ## -1(SI32)
;;								## 0
	c0    mov $r0.3 = -5   ## -5(SI32)
;;								## 1
	c0    cmpgeu $b0.0 = $r0.5, $r0.2   ## bblock 2, line 368,  t58(I1),  t6,  t50
	      xnop 1
;;								## 3
	c0    brf $b0.0, L60?3   ## bblock 2, line 368,  t58(I1)
;;								## 4
	c0    stw ((codedone + 0) + 0)[$r0.0] = $r0.6   ## bblock 4, line 370, 0(I32), -1(SI32)
;;								## 5
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 4, line 371,  t39,  ?2.13?2auto_size(I32),  t38
;;								## 6
.trace 4
L60?3:
	c0    ldw $r0.2 = ((baddr + 0) + 0)[$r0.0]   ## bblock 3, line 373, t34, 0(I32)
	c0    sub $r0.5 = 32, $r0.4   ## bblock 3, line 376,  t32,  32(SI32),  t51
	      xnop 1
;;								## 1
	c0    shru $r0.6 = $r0.2, 3   ## bblock 3, line 373,  t10(I29),  t34,  3(SI32)
	c0    and $r0.7 = $r0.2, 7   ## bblock 3, line 375,  t28,  t34,  7(I32)
;;								## 2
	c0    add $r0.8 = $r0.6, (codebuf + 0)   ## bblock 3, line 373,  t19,  t10(I29),  addr(codebuf?1.0)(P32)
	c0    add $r0.2 = $r0.2, $r0.4   ## bblock 3, line 377,  t36,  t34,  t51
;;								## 3
	c0    ldbu $r0.4 = 1[$r0.8]   ## bblock 3, line 374, t17(I8), t19
;;								## 4
	c0    ldbu $r0.6 = (codebuf + 0)[$r0.6]   ## bblock 3, line 374, t20(I8), t10(I29)
;;								## 5
	c0    ldbu $r0.8 = 2[$r0.8]   ## bblock 3, line 374, t14(I8), t19
;;								## 6
	c0    shl $r0.6 = $r0.6, 8   ## bblock 3, line 374,  t21,  t20(I8),  8(SI32)
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.2   ## bblock 3, line 377, 0(I32), t36
;;								## 7
	c0    or $r0.4 = $r0.4, $r0.6   ## bblock 3, line 374,  t22,  t17(I8),  t21
;;								## 8
	c0    shl $r0.4 = $r0.4, 8   ## bblock 3, line 374,  t23,  t22,  8(SI32)
;;								## 9
	c0    or $r0.8 = $r0.8, $r0.4   ## bblock 3, line 374,  t24,  t14(I8),  t23
;;								## 10
	c0    shl $r0.8 = $r0.8, 8   ## bblock 3, line 374,  t26,  t24,  8(SI32)
;;								## 11
	c0    shl $r0.8 = $r0.8, $r0.7   ## bblock 3, line 375,  t30,  t26,  t28
;;								## 12
.return ret($r0.3:s32)
	c0    shru $r0.3 = $r0.8, $r0.5   ## bblock 3, line 376,  t37,  t30,  t32
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 378,  t39,  ?2.13?2auto_size(I32),  t38
;;								## 13
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.13?2auto_size, 0x0
 ## End getcode
 ## Begin putcode
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:s32)
putcode::
.trace 1
	      ## auto_size == 0
	c0    cmpeq $b0.0 = $r0.3, -5   ## bblock 0, line 383,  t71(I1),  t63,  -5(SI32)
;;								## 0
	c0    ldw.d $r0.2 = ((baddr + 0) + 0)[$r0.0]   ## [spec] bblock 6, line 385, t1, 0(I32)
	c0    mov $r0.5 = 1   ## 1(SI32)
;;								## 1
	c0    brf $b0.0, L61?3   ## bblock 0, line 383,  t71(I1)
;;								## 2
	c0    add $r0.2 = $r0.2, 7   ## bblock 6, line 385,  t2,  t1,  7(SI32)
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.0   ## bblock 6, line 386, 0(I32), 0(SI32)
;;								## 3
	c0    and $r0.2 = $r0.2, (~0x7)   ## bblock 6, line 385,  t3,  t2,  (~0x7)(I32)
	c0    stw ((codedone + 0) + 0)[$r0.0] = $r0.5   ## bblock 6, line 387, 0(I32), 1(SI32)
;;								## 4
	c0    stw ((eaddr + 0) + 0)[$r0.0] = $r0.2   ## bblock 6, line 385, 0(I32), t3
;;								## 5
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 6, line 388,  t51,  ?2.14?2auto_size(I32),  t50
;;								## 6
.trace 2
L61?3:
	c0    cmpeq $b0.0 = $r0.4, $r0.0   ## bblock 1, line 390,  t72(I1),  t64,  0(SI32)
	c0    ldw.d $r0.2 = ((baddr + 0) + 0)[$r0.0]   ## [spec] bblock 5, line 392, t5, 0(I32)
	      xnop 1
;;								## 1
	c0    add $r0.2 = $r0.2, 7   ## [spec] bblock 5, line 392,  t6,  t5,  7(SI32)
	c0    brf $b0.0, L62?3   ## bblock 1, line 390,  t72(I1)
;;								## 2
	c0    and $r0.2 = $r0.2, (~0x7)   ## bblock 5, line 392,  t9,  t6,  (~0x7)(I32)
;;								## 3
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.2   ## bblock 5, line 392, 0(I32), t9
	c0    shru $r0.5 = $r0.2, 3   ## bblock 5, line 393,  t10(I29),  t9,  3(SI32)
;;								## 4
	c0    stb (codebuf + 0)[$r0.5] = $r0.0   ## bblock 5, line 393, t10(I29), 0(I32)
;;								## 5
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 5, line 394,  t51,  ?2.14?2auto_size(I32),  t50
;;								## 6
.trace 3
L62?3:
	c0    cmpne $r0.5 = $r0.4, 8   ## bblock 2, line 396,  t12,  t64,  8(SI32)
	c0    ldw $r0.2 = ((baddr + 0) + 0)[$r0.0]   ## bblock 2, line 396, t15, 0(I32)
;;								## 0
	c0    cmpeq $r0.6 = $r0.3, 1   ## bblock 2, line 396,  t14,  t63,  1(SI32)
;;								## 1
	c0    and $r0.2 = $r0.2, 7   ## bblock 2, line 396,  t16,  t15,  7(I32)
;;								## 2
	c0    cmpeq $r0.2 = $r0.2, $r0.0   ## bblock 2, line 396,  t74,  t16,  0(I32)
;;								## 3
	c0    andl $r0.5 = $r0.5, $r0.2   ## bblock 2, line 396,  t73,  t12,  t74
;;								## 4
	c0    andl $b0.0 = $r0.5, $r0.6   ## bblock 2, line 396,  t75(I1),  t73,  t14
	      xnop 1
;;								## 6
	c0    brf $b0.0, L63?3   ## bblock 2, line 396,  t75(I1)
;;								## 7
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 4, line 397,  t51,  ?2.14?2auto_size(I32),  t50
;;								## 8
.trace 4
L63?3:
	c0    ldw $r0.2 = ((baddr + 0) + 0)[$r0.0]   ## bblock 3, line 398, t47, 0(I32)
	c0    sub $r0.5 = 24, $r0.4   ## bblock 3, line 399,  t76,  24(SI32),  t64
	      xnop 1
;;								## 1
	c0    shru $r0.7 = $r0.2, 3   ## bblock 3, line 398,  t20(I29),  t47,  3(SI32)
	c0    and $r0.6 = $r0.2, 7   ## bblock 3, line 399,  t24,  t47,  7(I32)
;;								## 2
	c0    ldbu $r0.6 = (codebuf + 0)[$r0.7]   ## bblock 3, line 404, t43(I8), t20(I29)
	c0    sub $r0.5 = $r0.5, $r0.6   ## bblock 3, line 399,  t27,  t76,  t24
;;								## 3
	c0    add $r0.5 = $r0.7, (codebuf + 0)   ## bblock 3, line 398,  t42,  t20(I29),  addr(codebuf?1.0)(P32)
	c0    shl $r0.3 = $r0.3, $r0.5   ## bblock 3, line 399,  t33,  t63,  t27
;;								## 4
	c0    add $r0.2 = $r0.2, $r0.4   ## bblock 3, line 405,  t49,  t47,  t64
	c0    shru $r0.8 = $r0.3, 8   ## bblock 3, line 401,  t39(I24),  t33,  8(SI32)
;;								## 5
	c0    shru $r0.4 = $r0.8, 8   ## bblock 3, line 403,  t44(I24),  t39(I24),  8(SI32)
	c0    stb 1[$r0.5] = $r0.8   ## bblock 3, line 402, t42, t39(I24)
;;								## 6
	c0    stb 2[$r0.5] = $r0.3   ## bblock 3, line 400, t42, t33
	c0    or $r0.4 = $r0.4, $r0.6   ## bblock 3, line 404,  t45,  t44(I24),  t43(I8)
;;								## 7
	c0    stb (codebuf + 0)[$r0.7] = $r0.4   ## bblock 3, line 404, t20(I29), t45
;;								## 8
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.2   ## bblock 3, line 405, 0(I32), t49
;;								## 9
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 406,  t51,  ?2.14?2auto_size(I32),  t50
;;								## 10
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.14?2auto_size, 0x0
 ## End putcode
 ## Begin putdata
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:s32)
putdata::
.trace 1
	      ## auto_size == 0
	c0    cmpeq $b0.0 = $r0.3, -5   ## bblock 0, line 409,  t18(I1),  t17,  -5(SI32)
	      xnop 1
;;								## 1
	c0    brf $b0.0, L64?3   ## bblock 0, line 409,  t18(I1)
;;								## 2
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 410,  t6,  ?2.15?2auto_size(I32),  t5
;;								## 3
.trace 2
L64?3:
	c0    ldw $r0.2 = ((eout + 0) + 0)[$r0.0]   ## bblock 1, line 411, t3, 0(I32)
	      xnop 1
;;								## 1
	c0    add $r0.4 = $r0.2, 1   ## bblock 1, line 411,  t4,  t3,  1(SI32)
;;								## 2
	c0    stw ((eout + 0) + 0)[$r0.0] = $r0.4   ## bblock 1, line 411, 0(I32), t4
;;								## 3
.return ret()
	c0    stb 0[$r0.2] = $r0.3   ## bblock 1, line 411, t3, t17
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 1, line 412,  t6,  ?2.15?2auto_size(I32),  t5
;;								## 4
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.15?2auto_size, 0x0
 ## End putdata
.equ _?1TEMPLATEPACKET.13, 0x0
 ## Begin init_dict
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg()
init_dict::
.trace 3
	      ## auto_size == 0
	c0    mov $r0.14 = $r0.0   ## bblock 0, line 0,  t78,  0(I32)
;;								## 0
	c0    mov $r0.13 = ((dict + 0) + 24)   ## bblock 0, line 0,  t83,  (addr(dict?1.0)(P32) + 0x18(I32))(P32)
;;								## 1
	c0    mov $r0.12 = (~0xffffff)   ## bblock 0, line 0,  t76,  (~0xffffff)(I32)
;;								## 2
	c0    mov $r0.11 = ((dict + 0) + 16)   ## bblock 0, line 0,  t82,  (addr(dict?1.0)(P32) + 0x10(I32))(P32)
;;								## 3
	c0    mov $r0.10 = (~0x1ffffff)   ## bblock 0, line 0,  t80,  (~0x1ffffff)(I32)
;;								## 4
	c0    mov $r0.9 = ((dict + 0) + 8)   ## bblock 0, line 0,  t84,  (addr(dict?1.0)(P32) + 0x8(I32))(P32)
;;								## 5
	c0    mov $r0.6 = (~0x2ffffff)   ## bblock 0, line 0,  t81,  (~0x2ffffff)(I32)
;;								## 6
	c0    mov $r0.2 = (dict + 0)   ## bblock 0, line 417,  t38,  addr(dict?1.0)(P32)
;;								## 7
	c0    mov $r0.4 = 2097151   ## 2097151(I32)
;;								## 8
	c0    mov $r0.8 = (~0x1ffc00)   ## (~0x1ffc00)(I32)
;;								## 9
	c0    mov $r0.5 = (~0x1fe000)   ## (~0x1fe000)(I32)
;;								## 10
	c0    mov $r0.15 = 67108864   ## 67108864(I32)
;;								## 11
.trace 1
L65?3:
	c0    ldw.d $r0.3 = 4[$r0.2]   ## [spec] bblock 3, line 421, t18, t38
	c0    shru $r0.7 = $r0.6, 11   ## [spec] bblock 3, line 422,  t53(I21),  t81,  11(I32)
;;								## 0
	c0    cmpltu $b0.0 = $r0.2, ((dict + 0) + 16392)   ## bblock 1, line 417,  t121(I1),  t38,  (addr(dict?1.0)(P32) + 0x4008(I32))(P32)
	c0    ldw.d $r0.16 = 0[$r0.2]   ## [spec] bblock 3, line 419, t42, t38
;;								## 1
	c0    and $r0.3 = $r0.3, $r0.4   ## [spec] bblock 3, line 421,  t23,  t18,  2097151(I32)
	c0    cmpltu $b0.1 = $r0.9, ((dict + 0) + 16392)   ## [spec] bblock 3, line 417-1,  t122(I1),  t84,  (addr(dict?1.0)(P32) + 0x4008(I32))(P32)
;;								## 2
	c0    and $r0.3 = $r0.3, $r0.5   ## [spec] bblock 3, line 422,  t52,  t23,  (~0x1fe000)(I32)
	c0    brf $b0.0, L66?3   ## bblock 1, line 417,  t121(I1)
;;								## 3
	c0    and $r0.16 = $r0.16, $r0.4   ## bblock 3, line 419,  t44,  t42,  2097151(I32)
	c0    or $r0.7 = $r0.7, $r0.3   ## bblock 3, line 422,  t55,  t53(I21),  t52
;;								## 4
	c0    and $r0.16 = $r0.16, $r0.8   ## bblock 3, line 420,  t43,  t44,  (~0x1ffc00)(I32)
	c0    ldw.d $r0.3 = 0[$r0.9]   ## [spec] bblock 11, line 419-1, t64, t84
;;								## 5
	c0    ldw.d $r0.17 = 4[$r0.9]   ## [spec] bblock 11, line 421-1, t67, t84
	c0    shru $r0.18 = $r0.10, 11   ## [spec] bblock 11, line 422-1,  t70(I21),  t80,  11(I32)
;;								## 6
	c0    and $r0.3 = $r0.3, $r0.4   ## [spec] bblock 11, line 419-1,  t65,  t64,  2097151(I32)
	c0    cmpltu $b0.0 = $r0.11, ((dict + 0) + 16392)   ## [spec] bblock 11, line 417-2,  t124(I1),  t82,  (addr(dict?1.0)(P32) + 0x4008(I32))(P32)
;;								## 7
	c0    and $r0.3 = $r0.3, $r0.8   ## [spec] bblock 11, line 420-1,  t66,  t65,  (~0x1ffc00)(I32)
	c0    and $r0.17 = $r0.17, $r0.4   ## [spec] bblock 11, line 421-1,  t68,  t67,  2097151(I32)
;;								## 8
	c0    and $r0.17 = $r0.17, $r0.5   ## [spec] bblock 11, line 422-1,  t71,  t68,  (~0x1fe000)(I32)
	c0    ldw.d $r0.19 = 0[$r0.11]   ## [spec] bblock 8, line 419-2, t10, t82
;;								## 9
	c0    or $r0.18 = $r0.18, $r0.17   ## [spec] bblock 11, line 422-1,  t72,  t70(I21),  t71
	c0    ldw.d $r0.17 = 4[$r0.11]   ## [spec] bblock 8, line 421-2, t56, t82
;;								## 10
	c0    and $r0.19 = $r0.19, $r0.4   ## [spec] bblock 8, line 419-2,  t14,  t10,  2097151(I32)
	c0    shru $r0.20 = $r0.12, 11   ## [spec] bblock 8, line 422-2,  t59(I21),  t76,  11(I32)
;;								## 11
	c0    and $r0.19 = $r0.19, $r0.8   ## [spec] bblock 8, line 420-2,  t15,  t14,  (~0x1ffc00)(I32)
	c0    and $r0.17 = $r0.17, $r0.4   ## [spec] bblock 8, line 421-2,  t57,  t56,  2097151(I32)
;;								## 12
	c0    and $r0.17 = $r0.17, $r0.5   ## [spec] bblock 8, line 422-2,  t60,  t57,  (~0x1fe000)(I32)
	c0    cmpltu $b0.2 = $r0.13, ((dict + 0) + 16392)   ## [spec] bblock 8, line 417-3,  t123(I1),  t83,  (addr(dict?1.0)(P32) + 0x4008(I32))(P32)
;;								## 13
	c0    or $r0.20 = $r0.20, $r0.17   ## [spec] bblock 8, line 422-2,  t61,  t59(I21),  t60
	c0    ldw.d $r0.17 = 0[$r0.13]   ## [spec] bblock 5, line 419-3, t50, t83
;;								## 14
	c0    ldw.d $r0.21 = 4[$r0.13]   ## [spec] bblock 5, line 421-3, t47, t83
	c0    shru $r0.22 = $r0.14, 11   ## [spec] bblock 5, line 422-3,  t40(I21),  t78,  11(I32)
;;								## 15
	c0    and $r0.17 = $r0.17, $r0.4   ## [spec] bblock 5, line 419-3,  t49,  t50,  2097151(I32)
	c0    add $r0.12 = $r0.12, $r0.15   ## [spec] bblock 5, line 0,  t76,  t76,  67108864(I32)
;;								## 16
	c0    and $r0.17 = $r0.17, $r0.8   ## [spec] bblock 5, line 420-3,  t48,  t49,  (~0x1ffc00)(I32)
	c0    and $r0.21 = $r0.21, $r0.4   ## [spec] bblock 5, line 421-3,  t46,  t47,  2097151(I32)
;;								## 17
	c0    and $r0.21 = $r0.21, $r0.5   ## [spec] bblock 5, line 422-3,  t41,  t46,  (~0x1fe000)(I32)
	c0    add $r0.14 = $r0.14, $r0.15   ## [spec] bblock 5, line 0,  t78,  t78,  67108864(I32)
;;								## 18
	c0    or $r0.22 = $r0.22, $r0.21   ## [spec] bblock 5, line 422-3,  t24,  t40(I21),  t41
	c0    add $r0.10 = $r0.10, $r0.15   ## [spec] bblock 5, line 0,  t80,  t80,  67108864(I32)
;;								## 19
	c0    stw 4[$r0.2] = $r0.7   ## bblock 3, line 422, t38, t55
	c0    add $r0.6 = $r0.6, $r0.15   ## [spec] bblock 5, line 0,  t81,  t81,  67108864(I32)
;;								## 20
	c0    stw 0[$r0.2] = $r0.16   ## bblock 3, line 420, t38, t43
	c0    brf $b0.1, L66?3   ## bblock 3, line 417-1,  t122(I1)
;;								## 21
	c0    stw 0[$r0.9] = $r0.3   ## bblock 11, line 420-1, t84, t66
	c0    add $r0.2 = $r0.2, 32   ## [spec] bblock 5, line 417-3,  t38,  t38,  32(SI32)
;;								## 22
	c0    stw 4[$r0.9] = $r0.18   ## bblock 11, line 422-1, t84, t72
	c0    brf $b0.0, L66?3   ## bblock 11, line 417-2,  t124(I1)
;;								## 23
	c0    stw 0[$r0.11] = $r0.19   ## bblock 8, line 420-2, t82, t15
	c0    add $r0.9 = $r0.9, 32   ## [spec] bblock 5, line 0,  t84,  t84,  32(I32)
;;								## 24
	c0    stw 4[$r0.11] = $r0.20   ## bblock 8, line 422-2, t82, t61
	c0    brf $b0.2, L66?3   ## bblock 8, line 417-3,  t123(I1)
;;								## 25
	c0    stw 0[$r0.13] = $r0.17   ## bblock 5, line 420-3, t83, t48
	c0    add $r0.11 = $r0.11, 32   ## bblock 5, line 0,  t82,  t82,  32(I32)
;;								## 26
	c0    stw 4[$r0.13] = $r0.22   ## bblock 5, line 422-3, t83, t24
	c0    add $r0.13 = $r0.13, 32   ## bblock 5, line 0,  t83,  t83,  32(I32)
	      ## goto
;;
	c0    goto L65?3 ## goto
;;								## 27
.trace 4
L66?3:
	c0    mov $r0.3 = 9   ## 9(SI32)
	c0    mov $r0.2 = 259   ## 259(SI32)
;;								## 0
	c0    mov $r0.4 = 512   ## 512(SI32)
;;								## 1
	c0    stw ((c1 + 0) + 0)[$r0.0] = $r0.2   ## bblock 2, line 424, 0(I32), 259(SI32)
;;								## 2
	c0    stw ((c2 + 0) + 0)[$r0.0] = $r0.3   ## bblock 2, line 425, 0(I32), 9(SI32)
;;								## 3
	c0    stw ((c3 + 0) + 0)[$r0.0] = $r0.4   ## bblock 2, line 426, 0(I32), 512(SI32)
;;								## 4
	c0    stw ((escape + 0) + 0)[$r0.0] = $r0.0   ## bblock 2, line 427, 0(I32), 0(SI32)
;;								## 5
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.0   ## bblock 2, line 428, 0(I32), 0(SI32)
;;								## 6
	c0    stw ((last + 0) + 0)[$r0.0] = $r0.0   ## bblock 2, line 429, 0(I32), 0(SI32)
;;								## 7
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 2, line 430,  t27,  ?2.16?2auto_size(I32),  t26
;;								## 8
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.16?2auto_size, 0x0
 ## End init_dict
 ## Begin search_dict
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32)
search_dict::
.trace 3
	      ## auto_size == 0
	c0    zxtb $r0.4 = $r0.4   ## bblock 0, line 431,  t35(I8),  t34
;;								## 0
	c0    ldw $r0.5 = ((last + 0) + 0)[$r0.0]   ## bblock 0, line 431, t33, 0(I32)
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 434,  t89(I1),  t36,  0(SI32)
;;								## 1
	c0    add $r0.3 = $r0.4, 3   ## [spec] bblock 8, line 435,  t2,  t35(I8),  3(SI32)
	c0    mov $r0.2 = $r0.3   ## t36
;;								## 2
	c0    brf $b0.0, L67?3   ## bblock 0, line 434,  t89(I1)
;;								## 3
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 8, line 435,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 4
.trace 4
L67?3:
	c0    shl $r0.2 = $r0.2, 1   ## bblock 1, line 436,  t38,  t36,  1(I32)
;;								## 0
	c0    sh2add $r0.2 = $r0.2, (dict + 0)   ## bblock 1, line 436,  t90,  t38,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 1
	c0    ldw $r0.2 = 0[$r0.2]   ## bblock 1, line 436, t5, t90
	      xnop 1
;;								## 3
	c0    shl $r0.2 = $r0.2, 11   ## bblock 1, line 436,  t39,  t5,  11(I32)
;;								## 4
	c0    shru $r0.2 = $r0.2, 21   ## bblock 1, line 436,  t50(I11),  t39,  21(I32)
;;								## 5
.trace 1
L68?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 2, line 436,  t91(I1),  t50(I11),  0(SI32)
	c0    shl $r0.3 = $r0.2, 1   ## [spec] bblock 4, line 437,  t51,  t50(I11),  1(I32)
;;								## 0
	c0    cmpne $r0.6 = $r0.2, $r0.5   ## [spec] bblock 4, line 437,  t49(I1),  t50(I11),  t33
	c0    sh2add $r0.3 = $r0.3, (dict + 4)   ## [spec] bblock 4, line 437,  t92,  t51,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 1
	c0    ldw.d $r0.3 = 0[$r0.3]   ## [spec] bblock 4, line 437, t61, t92
	c0    brf $b0.0, L69?3   ## bblock 2, line 436,  t91(I1)
;;								## 2
;;								## 3
	c0    shl $r0.7 = $r0.3, 11   ## bblock 4, line 437,  t52,  t61,  11(I32)
	c0    shru $r0.3 = $r0.3, 21   ## [spec] bblock 5, line 436,  t59(I11),  t61,  21(I32)
;;								## 4
	c0    shru $r0.7 = $r0.7, 24   ## bblock 4, line 437,  t53(I8),  t52,  24(I32)
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## [spec] bblock 5, line 436-1,  t94(I1),  t59(I11),  0(SI32)
;;								## 5
	c0    cmpeq $r0.7 = $r0.7, $r0.4   ## bblock 4, line 437,  t45(I1),  t53(I8),  t35(I8)
	c0    shl $r0.8 = $r0.3, 1   ## [spec] bblock 34, line 437-1,  t83,  t59(I11),  1(I32)
;;								## 6
	c0    andl $b0.1 = $r0.6, $r0.7   ## bblock 4, line 437,  t93(I1),  t49(I1),  t45(I1)
	c0    sh2add $r0.8 = $r0.8, (dict + 4)   ## [spec] bblock 34, line 437-1,  t109,  t83,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 7
	c0    cmpne $r0.6 = $r0.3, $r0.5   ## [spec] bblock 34, line 437-1,  t82(I1),  t59(I11),  t33
	c0    ldw.d $r0.8 = 0[$r0.8]   ## [spec] bblock 34, line 437-1, t84, t109
;;								## 8
	c0    br $b0.1, L70?3   ## bblock 4, line 437,  t93(I1)
;;								## 9
	c0    shl $r0.7 = $r0.8, 11   ## [spec] bblock 34, line 437-1,  t85,  t84,  11(I32)
	c0    brf $b0.0, L71?3   ## bblock 5, line 436-1,  t94(I1)
;;								## 10
	c0    shru $r0.7 = $r0.7, 24   ## bblock 34, line 437-1,  t86(I8),  t85,  24(I32)
	c0    shru $r0.8 = $r0.8, 21   ## [spec] bblock 35, line 436-1,  t88(I11),  t84,  21(I32)
;;								## 11
	c0    cmpeq $r0.7 = $r0.7, $r0.4   ## bblock 34, line 437-1,  t87(I1),  t86(I8),  t35(I8)
	c0    cmpne $b0.0 = $r0.8, $r0.0   ## [spec] bblock 35, line 436-2,  t111(I1),  t88(I11),  0(SI32)
;;								## 12
	c0    andl $b0.1 = $r0.6, $r0.7   ## bblock 34, line 437-1,  t110(I1),  t82(I1),  t87(I1)
	c0    shl $r0.6 = $r0.8, 1   ## [spec] bblock 29, line 437-2,  t76,  t88(I11),  1(I32)
;;								## 13
	c0    cmpne $r0.7 = $r0.8, $r0.5   ## [spec] bblock 29, line 437-2,  t75(I1),  t88(I11),  t33
	c0    sh2add $r0.6 = $r0.6, (dict + 4)   ## [spec] bblock 29, line 437-2,  t106,  t76,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 14
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 29, line 437-2, t77, t106
	c0    br $b0.1, L72?3   ## bblock 34, line 437-1,  t110(I1)
;;								## 15
	c0    brf $b0.0, L71?3   ## bblock 35, line 436-2,  t111(I1)
;;								## 16
	c0    shl $r0.3 = $r0.6, 11   ## bblock 29, line 437-2,  t78,  t77,  11(I32)
	c0    shru $r0.6 = $r0.6, 21   ## [spec] bblock 30, line 436-2,  t81(I11),  t77,  21(I32)
;;								## 17
	c0    shru $r0.3 = $r0.3, 24   ## bblock 29, line 437-2,  t79(I8),  t78,  24(I32)
	c0    cmpne $b0.0 = $r0.6, $r0.0   ## [spec] bblock 30, line 436-3,  t108(I1),  t81(I11),  0(SI32)
;;								## 18
	c0    cmpeq $r0.3 = $r0.3, $r0.4   ## bblock 29, line 437-2,  t80(I1),  t79(I8),  t35(I8)
	c0    shl $r0.9 = $r0.6, 1   ## [spec] bblock 24, line 437-3,  t69,  t81(I11),  1(I32)
;;								## 19
	c0    andl $b0.1 = $r0.7, $r0.3   ## bblock 29, line 437-2,  t107(I1),  t75(I1),  t80(I1)
	c0    sh2add $r0.9 = $r0.9, (dict + 4)   ## [spec] bblock 24, line 437-3,  t103,  t69,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 20
	c0    cmpne $r0.3 = $r0.6, $r0.5   ## [spec] bblock 24, line 437-3,  t68(I1),  t81(I11),  t33
	c0    ldw.d $r0.9 = 0[$r0.9]   ## [spec] bblock 24, line 437-3, t70, t103
;;								## 21
	c0    br $b0.1, L73?3   ## bblock 29, line 437-2,  t107(I1)
;;								## 22
	c0    shl $r0.7 = $r0.9, 11   ## [spec] bblock 24, line 437-3,  t71,  t70,  11(I32)
	c0    brf $b0.0, L71?3   ## bblock 30, line 436-3,  t108(I1)
;;								## 23
	c0    shru $r0.7 = $r0.7, 24   ## bblock 24, line 437-3,  t72(I8),  t71,  24(I32)
	c0    shru $r0.9 = $r0.9, 21   ## [spec] bblock 25, line 436-3,  t74(I11),  t70,  21(I32)
;;								## 24
	c0    cmpeq $r0.7 = $r0.7, $r0.4   ## bblock 24, line 437-3,  t73(I1),  t72(I8),  t35(I8)
	c0    cmpne $b0.0 = $r0.9, $r0.0   ## [spec] bblock 25, line 436-4,  t105(I1),  t74(I11),  0(SI32)
;;								## 25
	c0    andl $b0.1 = $r0.3, $r0.7   ## bblock 24, line 437-3,  t104(I1),  t68(I1),  t73(I1)
	c0    shl $r0.3 = $r0.9, 1   ## [spec] bblock 19, line 437-4,  t62,  t74(I11),  1(I32)
;;								## 26
	c0    cmpne $r0.7 = $r0.9, $r0.5   ## [spec] bblock 19, line 437-4,  t55(I1),  t74(I11),  t33
	c0    sh2add $r0.3 = $r0.3, (dict + 4)   ## [spec] bblock 19, line 437-4,  t100,  t62,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 27
	c0    ldw.d $r0.3 = 0[$r0.3]   ## [spec] bblock 19, line 437-4, t63, t100
	c0    br $b0.1, L74?3   ## bblock 24, line 437-3,  t104(I1)
;;								## 28
	c0    brf $b0.0, L71?3   ## bblock 25, line 436-4,  t105(I1)
;;								## 29
	c0    shl $r0.6 = $r0.3, 11   ## bblock 19, line 437-4,  t64,  t63,  11(I32)
	c0    shru $r0.3 = $r0.3, 21   ## [spec] bblock 20, line 436-4,  t67(I11),  t63,  21(I32)
;;								## 30
	c0    shru $r0.6 = $r0.6, 24   ## bblock 19, line 437-4,  t65(I8),  t64,  24(I32)
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## [spec] bblock 20, line 436-5,  t102(I1),  t67(I11),  0(SI32)
;;								## 31
	c0    cmpeq $r0.6 = $r0.6, $r0.4   ## bblock 19, line 437-4,  t66(I1),  t65(I8),  t35(I8)
	c0    shl $r0.8 = $r0.3, 1   ## [spec] bblock 14, line 437-5,  t42,  t67(I11),  1(I32)
;;								## 32
	c0    andl $b0.1 = $r0.7, $r0.6   ## bblock 19, line 437-4,  t101(I1),  t55(I1),  t66(I1)
	c0    sh2add $r0.8 = $r0.8, (dict + 4)   ## [spec] bblock 14, line 437-5,  t97,  t42,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 33
	c0    cmpne $r0.6 = $r0.3, $r0.5   ## [spec] bblock 14, line 437-5,  t46(I1),  t67(I11),  t33
	c0    ldw.d $r0.8 = 0[$r0.8]   ## [spec] bblock 14, line 437-5, t16, t97
;;								## 34
	c0    br $b0.1, L75?3   ## bblock 19, line 437-4,  t101(I1)
;;								## 35
	c0    shl $r0.7 = $r0.8, 11   ## [spec] bblock 14, line 437-5,  t43,  t16,  11(I32)
	c0    brf $b0.0, L71?3   ## bblock 20, line 436-5,  t102(I1)
;;								## 36
	c0    shru $r0.7 = $r0.7, 24   ## bblock 14, line 437-5,  t17(I8),  t43,  24(I32)
	c0    shru $r0.8 = $r0.8, 21   ## [spec] bblock 15, line 436-5,  t56(I11),  t16,  21(I32)
;;								## 37
	c0    cmpeq $r0.7 = $r0.7, $r0.4   ## bblock 14, line 437-5,  t57(I1),  t17(I8),  t35(I8)
	c0    cmpne $b0.0 = $r0.8, $r0.0   ## [spec] bblock 15, line 436-6,  t99(I1),  t56(I11),  0(SI32)
;;								## 38
	c0    andl $b0.1 = $r0.6, $r0.7   ## bblock 14, line 437-5,  t98(I1),  t46(I1),  t57(I1)
	c0    shl $r0.6 = $r0.8, 1   ## [spec] bblock 9, line 437-6,  t58,  t56(I11),  1(I32)
;;								## 39
	c0    cmpne $r0.7 = $r0.8, $r0.5   ## [spec] bblock 9, line 437-6,  t44(I1),  t56(I11),  t33
	c0    sh2add $r0.6 = $r0.6, (dict + 4)   ## [spec] bblock 9, line 437-6,  t95,  t58,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 40
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 9, line 437-6, t48, t95
	c0    br $b0.1, L76?3   ## bblock 14, line 437-5,  t98(I1)
;;								## 41
	c0    brf $b0.0, L71?3   ## bblock 15, line 436-6,  t99(I1)
;;								## 42
	c0    shl $r0.3 = $r0.6, 11   ## bblock 9, line 437-6,  t47,  t48,  11(I32)
	c0    shru $r0.2 = $r0.6, 21   ## [spec] bblock 10, line 436-6,  t50(I11),  t48,  21(I32)
;;								## 43
	c0    shru $r0.3 = $r0.3, 24   ## bblock 9, line 437-6,  t54(I8),  t47,  24(I32)
;;								## 44
	c0    cmpeq $r0.3 = $r0.3, $r0.4   ## bblock 9, line 437-6,  t60(I1),  t54(I8),  t35(I8)
;;								## 45
	c0    andl $b0.0 = $r0.7, $r0.3   ## bblock 9, line 437-6,  t96(I1),  t44(I1),  t60(I1)
	      xnop 1
;;								## 47
	c0    br $b0.0, L77?3   ## bblock 9, line 437-6,  t96(I1)
	      ## goto
;;
	c0    goto L68?3 ## goto
;;								## 48
.trace 18
L77?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.8   ## bblock 12, line 0,  t37,  t56(I11)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 16
L76?3:
.return ret($r0.3:u32)
	   ## bblock 17, line 0,  t37,  t67(I11)## $r0.3(skipped)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 14
L75?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.9   ## bblock 22, line 0,  t37,  t74(I11)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 12
L74?3:
;;								## 0
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.6   ## bblock 27, line 0,  t37,  t81(I11)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 1
.trace 10
L73?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.8   ## bblock 32, line 0,  t37,  t88(I11)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 8
L72?3:
.return ret($r0.3:u32)
	   ## bblock 37, line 0,  t37,  t59(I11)## $r0.3(skipped)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 6
L70?3:
.return ret($r0.3:u32)
	c0    mov $r0.3 = $r0.2   ## bblock 39, line 0,  t37,  t50(I11)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 438,  t21,  ?2.17?2auto_size(I32),  t20
;;								## 0
.trace 5
L69?3:
;;								## 0
L71?3:
.return ret($r0.3:u32)
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 3, line 439,  t21,  ?2.17?2auto_size(I32),  t20
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 1
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.17?2auto_size, 0x0
 ## End search_dict
 ## Begin add_dict
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=0, arg($r0.3:u32,$r0.4:u32)
add_dict::
.trace 14
	      ## auto_size == 0
	c0    zxtb $r0.4 = $r0.4   ## bblock 0, line 441,  t100(I8),  t99
;;								## 0
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 0, line 445,  t248(I1),  t101,  0(SI32)
	      xnop 1
;;								## 2
	c0    brf $b0.0, L78?3   ## bblock 0, line 445,  t248(I1)
;;								## 3
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 16, line 446,  t87,  ?2.18?2auto_size(I32),  t86
;;								## 4
.trace 15
L78?3:
	c0    ldw $r0.5 = ((c1 + 0) + 0)[$r0.0]   ## bblock 1, line 447, t32, 0(I32)
	c0    shl $r0.6 = $r0.3, 21   ## bblock 1, line 449,  t111,  t101,  21(I32)
;;								## 0
	c0    shl $r0.4 = $r0.4, 24   ## bblock 1, line 448,  t107,  t100(I8),  24(I32)
	c0    shl $r0.3 = $r0.3, 1   ## bblock 1, line 451,  t122,  t101,  1(I32)
;;								## 1
	c0    sh3add $r0.7 = $r0.5, (dict + 0)   ## bblock 1, line 447,  t33,  t32,  addr(dict?1.0)(P32)
	c0    shru $r0.4 = $r0.4, 11   ## bblock 1, line 448,  t108(I21),  t107,  11(I32)
;;								## 2
	c0    ldw $r0.8 = 0[$r0.7]   ## bblock 1, line 449, t11, t33
	c0    sh2add $r0.9 = $r0.3, (dict + 0)   ## bblock 1, line 451,  t249,  t122,  addr(dict?1.0)(P32)
;;								## 3
	c0    ldw $r0.10 = 4[$r0.7]   ## bblock 1, line 448, t6, t33
	c0    shl $r0.11 = $r0.5, 21   ## bblock 1, line 452,  t119,  t32,  21(I32)
;;								## 4
	c0    shru $r0.11 = $r0.11, 11   ## bblock 1, line 452,  t120(I21),  t119,  11(I32)
	c0    and $r0.8 = $r0.8, 2097151   ## bblock 1, line 449,  t112,  t11,  2097151(I32)
;;								## 5
	c0    and $r0.10 = $r0.10, (~0x1fe000)   ## bblock 1, line 448,  t109,  t6,  (~0x1fe000)(I32)
	c0    or $r0.6 = $r0.6, $r0.8   ## bblock 1, line 449,  t15,  t111,  t112
;;								## 6
	c0    or $r0.4 = $r0.4, $r0.10   ## bblock 1, line 448,  t23,  t108(I21),  t109
	c0    and $r0.6 = $r0.6, (~0x1ffc00)   ## bblock 1, line 450,  t16,  t15,  (~0x1ffc00)(I32)
;;								## 7
	c0    and $r0.4 = $r0.4, 2097151   ## bblock 1, line 451,  t117,  t23,  2097151(I32)
	c0    add $r0.2 = $r0.7, 8   ## bblock 1, line 454,  t105,  t33,  8(SI32)
;;								## 8
	c0    stw 0[$r0.7] = $r0.6   ## bblock 1, line 450, t33, t16
	c0    sh2add $r0.3 = $r0.3, (dict + 0)   ## bblock 1, line 452,  t250,  t122,  addr(dict?1.0)(P32)
;;								## 9
	c0    ldw $r0.9 = 0[$r0.9]   ## bblock 1, line 451, t29, t249
;;								## 10
	c0    stw ((last + 0) + 0)[$r0.0] = $r0.5   ## bblock 1, line 453, 0(I32), t32
;;								## 11
	c0    shl $r0.5 = $r0.9, 11   ## bblock 1, line 451,  t114,  t29,  11(I32)
	c0    and $r0.9 = $r0.9, (~0x1ffc00)   ## bblock 1, line 452,  t121,  t29,  (~0x1ffc00)(I32)
;;								## 12
	c0    shru $r0.5 = $r0.5, 21   ## bblock 1, line 451,  t21(I11),  t114,  21(I32)
	c0    or $r0.11 = $r0.11, $r0.9   ## bblock 1, line 452,  t30,  t120(I21),  t121
;;								## 13
	c0    shl $r0.5 = $r0.5, 21   ## bblock 1, line 451,  t116,  t21(I11),  21(I32)
	c0    stw 0[$r0.3] = $r0.11   ## bblock 1, line 452, t250, t30
;;								## 14
	c0    or $r0.4 = $r0.4, $r0.5   ## bblock 1, line 451,  t24,  t117,  t116
;;								## 15
	c0    stw 4[$r0.7] = $r0.4   ## bblock 1, line 451, t33, t24
;;								## 16
.trace 1
L79?3:
	c0    ldw $r0.3 = 0[$r0.2]   ## bblock 3, line 457, t36, t105
;;								## 0
	c0    ldw.d $r0.4 = 8[$r0.2]   ## [spec] bblock 15, line 457-1, t161, t105
;;								## 1
	c0    shl $r0.3 = $r0.3, 11   ## bblock 3, line 457,  t196,  t36,  11(I32)
	c0    ldw.d $r0.5 = 16[$r0.2]   ## [spec] bblock 35, line 457-2, t165, t105
;;								## 2
	c0    shru $r0.3 = $r0.3, 21   ## bblock 3, line 457,  t37(I11),  t196,  21(I32)
	c0    shl $r0.4 = $r0.4, 11   ## [spec] bblock 15, line 457-1,  t123,  t161,  11(I32)
;;								## 3
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 3, line 457,  t251(I1),  t37(I11),  0(SI32)
	c0    shru $r0.4 = $r0.4, 21   ## [spec] bblock 15, line 457-1,  t160(I11),  t123,  21(I32)
;;								## 4
	c0    cmpne $b0.1 = $r0.4, $r0.0   ## [spec] bblock 15, line 457-1,  t268(I1),  t160(I11),  0(SI32)
	c0    shl $r0.5 = $r0.5, 11   ## [spec] bblock 35, line 457-2,  t164,  t165,  11(I32)
;;								## 5
	c0    shru $r0.5 = $r0.5, 21   ## [spec] bblock 35, line 457-2,  t163(I11),  t164,  21(I32)
	c0    brf $b0.0, L80?3   ## bblock 3, line 457,  t251(I1)
;;								## 6
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## [spec] bblock 35, line 457-2,  t274(I1),  t163(I11),  0(SI32)
	c0    brf $b0.1, L81?3   ## bblock 15, line 457-1,  t268(I1)
;;								## 7
	c0    ldw.d $r0.3 = 24[$r0.2]   ## [spec] bblock 32, line 457-3, t168, t105
;;								## 8
	c0    ldw.d $r0.4 = 32[$r0.2]   ## [spec] bblock 29, line 457-4, t169, t105
	c0    brf $b0.0, L82?3   ## bblock 35, line 457-2,  t274(I1)
;;								## 9
	c0    shl $r0.3 = $r0.3, 11   ## bblock 32, line 457-3,  t197,  t168,  11(I32)
	c0    ldw.d $r0.5 = 40[$r0.2]   ## [spec] bblock 26, line 457-5, t181, t105
;;								## 10
	c0    shru $r0.3 = $r0.3, 21   ## bblock 32, line 457-3,  t167(I11),  t197,  21(I32)
	c0    shl $r0.4 = $r0.4, 11   ## [spec] bblock 29, line 457-4,  t171,  t169,  11(I32)
;;								## 11
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 32, line 457-3,  t273(I1),  t167(I11),  0(SI32)
	c0    shru $r0.4 = $r0.4, 21   ## [spec] bblock 29, line 457-4,  t177(I11),  t171,  21(I32)
;;								## 12
	c0    cmpne $b0.1 = $r0.4, $r0.0   ## [spec] bblock 29, line 457-4,  t272(I1),  t177(I11),  0(SI32)
	c0    shl $r0.5 = $r0.5, 11   ## [spec] bblock 26, line 457-5,  t180,  t181,  11(I32)
;;								## 13
	c0    shru $r0.5 = $r0.5, 21   ## [spec] bblock 26, line 457-5,  t179(I11),  t180,  21(I32)
	c0    brf $b0.0, L83?3   ## bblock 32, line 457-3,  t273(I1)
;;								## 14
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## [spec] bblock 26, line 457-5,  t271(I1),  t179(I11),  0(SI32)
	c0    brf $b0.1, L84?3   ## bblock 29, line 457-4,  t272(I1)
;;								## 15
	c0    ldw.d $r0.3 = 48[$r0.2]   ## [spec] bblock 23, line 457-6, t184, t105
;;								## 16
	c0    ldw.d $r0.4 = 56[$r0.2]   ## [spec] bblock 20, line 457-7, t187, t105
	c0    brf $b0.0, L85?3   ## bblock 26, line 457-5,  t271(I1)
;;								## 17
	c0    shl $r0.3 = $r0.3, 11   ## bblock 23, line 457-6,  t198,  t184,  11(I32)
;;								## 18
	c0    shru $r0.3 = $r0.3, 21   ## bblock 23, line 457-6,  t183(I11),  t198,  21(I32)
	c0    shl $r0.4 = $r0.4, 11   ## [spec] bblock 20, line 457-7,  t186,  t187,  11(I32)
;;								## 19
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 23, line 457-6,  t270(I1),  t183(I11),  0(SI32)
	c0    shru $r0.4 = $r0.4, 21   ## [spec] bblock 20, line 457-7,  t185(I11),  t186,  21(I32)
;;								## 20
	c0    cmpne $b0.1 = $r0.4, $r0.0   ## [spec] bblock 20, line 457-7,  t269(I1),  t185(I11),  0(SI32)
;;								## 21
	c0    brf $b0.0, L86?3   ## bblock 23, line 457-6,  t270(I1)
;;								## 22
	c0    brf $b0.1, L87?3   ## bblock 20, line 457-7,  t269(I1)
;;								## 23
	c0    add $r0.2 = $r0.2, 64   ## bblock 18, line 458-7,  t105,  t105,  64(SI32)
	c0    goto L79?3 ## goto
;;								## 24
.trace 13
L87?3:
	c0    add $r0.2 = $r0.2, 56   ## bblock 17, line 0,  t157,  t105,  56(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 16
L89?3:
	c0    mov $r0.2 = $r0.0   ## [spec] bblock 8, line 467,  t155,  0(SI32)
	c0    mov $r0.5 = (dict + 0)   ## addr(dict?1.0)(P32)
;;								## 0
	c0    sub $r0.5 = $r0.3, $r0.5   ## bblock 6, line 463,  t48,  t157,  addr(dict?1.0)(P32)
	c0    mov $r0.9 = $r0.3   ## t157
;;								## 1
	c0    cmplt $b0.0 = $r0.5, $r0.0   ## bblock 6, line 463,  t253,  t48,  0(I32)
	c0    add $r0.6 = $r0.5, 7   ## bblock 6, line 463,  t254,  t48,  7(I32)
;;								## 2
	c0    slct $r0.6 = $b0.0, $r0.6, $r0.5   ## bblock 6, line 463,  t255,  t253,  t254,  t48
;;								## 3
	c0    shr $r0.4 = $r0.6, 3   ## bblock 6, line 463,  t102,  t255,  3(I32)
;;								## 4
	c0    stw ((c1 + 0) + 0)[$r0.0] = $r0.4   ## bblock 6, line 463, 0(I32), t102
;;								## 5
	c0    ldw $r0.3 = 0[$r0.3]   ## bblock 6, line 464, t124, t157
	      xnop 1
;;								## 7
	c0    shru $r0.3 = $r0.3, 21   ## bblock 6, line 464,  t52(I11),  t124,  21(I32)
;;								## 8
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 6, line 464,  t256(I1),  t52(I11),  0(SI32)
	c0    shl $r0.3 = $r0.3, 1   ## [spec] bblock 8, line 466,  t126,  t52(I11),  1(I32)
;;								## 9
	c0    sh2add $r0.3 = $r0.3, (dict + 0)   ## [spec] bblock 8, line 466,  t257,  t126,  addr(dict?1.0)(P32)
;;								## 10
	c0    ldw.d $r0.3 = 0[$r0.3]   ## [spec] bblock 8, line 466, t57, t257
	c0    brf $b0.0, L90?3   ## bblock 6, line 464,  t256(I1)
;;								## 11
;;								## 12
	c0    shl $r0.3 = $r0.3, 11   ## bblock 8, line 466,  t127,  t57,  11(I32)
;;								## 13
	c0    shru $r0.3 = $r0.3, 21   ## bblock 8, line 466,  t152(I11),  t127,  21(I32)
;;								## 14
.trace 5
L91?3:
	c0    cmpne $r0.5 = $r0.3, $r0.4   ## bblock 9, line 468,  t259,  t152(I11),  t102
	c0    shl $r0.6 = $r0.3, 1   ## [spec] bblock 14, line 467,  t199,  t152(I11),  1(I32)
;;								## 0
	c0    andl $b0.0 = $r0.3, $r0.5   ## bblock 9, line 467,  t258(I1),  t152(I11),  t259
	c0    sh2add $r0.6 = $r0.6, (dict + 4)   ## [spec] bblock 14, line 467,  t265,  t199,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 1
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 14, line 467, t175, t265
;;								## 2
	c0    brf $b0.0, L92?3   ## bblock 9, line 467,  t258(I1)
;;								## 3
	c0    shru $r0.6 = $r0.6, 21   ## bblock 14, line 467,  t241,  t175,  21(I32)
;;								## 4
	c0    cmpne $r0.5 = $r0.6, $r0.4   ## bblock 14, line 468-1,  t267,  t241,  t102
	c0    shl $r0.7 = $r0.6, 1   ## [spec] bblock 57, line 467-1,  t209,  t241,  1(I32)
;;								## 5
	c0    andl $b0.0 = $r0.6, $r0.5   ## bblock 14, line 467-1,  t266(I1),  t241,  t267
	c0    sh2add $r0.7 = $r0.7, (dict + 4)   ## [spec] bblock 57, line 467-1,  t291,  t209,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 6
	c0    ldw.d $r0.7 = 0[$r0.7]   ## [spec] bblock 57, line 467-1, t210, t291
;;								## 7
	c0    brf $b0.0, L93?3   ## bblock 14, line 467-1,  t266(I1)
;;								## 8
	c0    shru $r0.7 = $r0.7, 21   ## bblock 57, line 467-1,  t242,  t210,  21(I32)
;;								## 9
	c0    cmpne $r0.5 = $r0.7, $r0.4   ## bblock 57, line 468-2,  t293,  t242,  t102
	c0    shl $r0.8 = $r0.7, 1   ## [spec] bblock 54, line 467-2,  t204,  t242,  1(I32)
;;								## 10
	c0    andl $b0.0 = $r0.7, $r0.5   ## bblock 57, line 467-2,  t292(I1),  t242,  t293
	c0    sh2add $r0.8 = $r0.8, (dict + 4)   ## [spec] bblock 54, line 467-2,  t288,  t204,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 11
	c0    ldw.d $r0.8 = 0[$r0.8]   ## [spec] bblock 54, line 467-2, t205, t288
;;								## 12
	c0    brf $b0.0, L94?3   ## bblock 57, line 467-2,  t292(I1)
;;								## 13
	c0    shru $r0.8 = $r0.8, 21   ## bblock 54, line 467-2,  t243,  t205,  21(I32)
;;								## 14
	c0    cmpne $r0.5 = $r0.8, $r0.4   ## bblock 54, line 468-3,  t290,  t243,  t102
	c0    shl $r0.6 = $r0.8, 1   ## [spec] bblock 51, line 467-3,  t188,  t243,  1(I32)
;;								## 15
	c0    andl $b0.0 = $r0.8, $r0.5   ## bblock 54, line 467-3,  t289(I1),  t243,  t290
	c0    sh2add $r0.6 = $r0.6, (dict + 4)   ## [spec] bblock 51, line 467-3,  t285,  t188,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 16
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 51, line 467-3, t200, t285
;;								## 17
	c0    brf $b0.0, L95?3   ## bblock 54, line 467-3,  t289(I1)
;;								## 18
	c0    shru $r0.6 = $r0.6, 21   ## bblock 51, line 467-3,  t244,  t200,  21(I32)
;;								## 19
	c0    cmpne $r0.5 = $r0.6, $r0.4   ## bblock 51, line 468-4,  t287,  t244,  t102
	c0    shl $r0.7 = $r0.6, 1   ## [spec] bblock 48, line 467-4,  t141,  t244,  1(I32)
;;								## 20
	c0    andl $b0.0 = $r0.6, $r0.5   ## bblock 51, line 467-4,  t286(I1),  t244,  t287
	c0    sh2add $r0.7 = $r0.7, (dict + 4)   ## [spec] bblock 48, line 467-4,  t282,  t141,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 21
	c0    ldw.d $r0.7 = 0[$r0.7]   ## [spec] bblock 48, line 467-4, t142, t282
;;								## 22
	c0    brf $b0.0, L96?3   ## bblock 51, line 467-4,  t286(I1)
;;								## 23
	c0    shru $r0.7 = $r0.7, 21   ## bblock 48, line 467-4,  t245,  t142,  21(I32)
;;								## 24
	c0    cmpne $r0.5 = $r0.7, $r0.4   ## bblock 48, line 468-5,  t284,  t245,  t102
	c0    shl $r0.8 = $r0.7, 1   ## [spec] bblock 45, line 467-5,  t193,  t245,  1(I32)
;;								## 25
	c0    andl $b0.0 = $r0.7, $r0.5   ## bblock 48, line 467-5,  t283(I1),  t245,  t284
	c0    sh2add $r0.8 = $r0.8, (dict + 4)   ## [spec] bblock 45, line 467-5,  t279,  t193,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 26
	c0    ldw.d $r0.8 = 0[$r0.8]   ## [spec] bblock 45, line 467-5, t147, t279
;;								## 27
	c0    brf $b0.0, L97?3   ## bblock 48, line 467-5,  t283(I1)
;;								## 28
	c0    shru $r0.8 = $r0.8, 21   ## bblock 45, line 467-5,  t246,  t147,  21(I32)
;;								## 29
	c0    cmpne $r0.5 = $r0.8, $r0.4   ## bblock 45, line 468-6,  t281,  t246,  t102
	c0    shl $r0.6 = $r0.8, 1   ## [spec] bblock 42, line 467-6,  t150,  t246,  1(I32)
;;								## 30
	c0    andl $b0.0 = $r0.8, $r0.5   ## bblock 45, line 467-6,  t280(I1),  t246,  t281
	c0    sh2add $r0.6 = $r0.6, (dict + 4)   ## [spec] bblock 42, line 467-6,  t276,  t150,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 31
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 42, line 467-6, t149, t276
;;								## 32
	c0    brf $b0.0, L98?3   ## bblock 45, line 467-6,  t280(I1)
;;								## 33
	c0    shru $r0.6 = $r0.6, 21   ## bblock 42, line 467-6,  t247,  t149,  21(I32)
;;								## 34
	c0    cmpne $r0.5 = $r0.6, $r0.4   ## bblock 42, line 468-7,  t278,  t247,  t102
	c0    shl $r0.7 = $r0.6, 1   ## [spec] bblock 39, line 467-7,  t154,  t247,  1(I32)
;;								## 35
	c0    andl $b0.0 = $r0.6, $r0.5   ## bblock 42, line 467-7,  t277(I1),  t247,  t278
	c0    sh2add $r0.7 = $r0.7, (dict + 4)   ## [spec] bblock 39, line 467-7,  t275,  t154,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 36
	   ## [spec] bblock 39, line 467-6,  t155,  t247## $r0.6(skipped)
	c0    ldw.d $r0.7 = 0[$r0.7]   ## [spec] bblock 39, line 467-7, t153, t275
;;								## 37
	c0    brf $b0.0, L99?3   ## bblock 42, line 467-7,  t277(I1)
;;								## 38
	c0    shru $r0.3 = $r0.7, 21   ## bblock 39, line 467-7,  t152(I11),  t153,  21(I32)
;;								## 39
.trace 6
	c0    mov $r0.2 = $r0.6   ## t155
	c0    goto L91?3 ## goto
;;								## 0
.trace 26
L99?3:
	c0    mov $r0.2 = $r0.8   ## bblock 40, line 0,  t103,  t246
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 19
L101?3:
	c0    ldw $r0.2 = 0[$r0.9]   ## bblock 11, line 473, t129, t157
;;								## 0
	c0    ldw $r0.9 = 4[$r0.9]   ## bblock 11, line 473, t128, t157
;;								## 1
	c0    shru $r0.2 = $r0.2, 21   ## bblock 11, line 473,  t82(I11),  t129,  21(I32)
;;								## 2
	c0    shru $r0.9 = $r0.9, 21   ## bblock 11, line 473,  t78(I11),  t128,  21(I32)
	c0    shl $r0.2 = $r0.2, 1   ## bblock 11, line 473,  t134,  t82(I11),  1(I32)
;;								## 3
	c0    shl $r0.9 = $r0.9, 21   ## bblock 11, line 473,  t131,  t78(I11),  21(I32)
	c0    sh2add $r0.3 = $r0.2, (dict + 0)   ## bblock 11, line 473,  t261,  t134,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 4
	c0    ldw $r0.3 = 0[$r0.3]   ## bblock 11, line 473, t83, t261
	c0    shru $r0.9 = $r0.9, 11   ## bblock 11, line 473,  t132(I21),  t131,  11(I32)
;;								## 5
	c0    sh2add $r0.2 = $r0.2, (dict + 0)   ## bblock 11, line 473,  t262,  t134,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 6
	c0    and $r0.3 = $r0.3, (~0x1ffc00)   ## bblock 11, line 473,  t133,  t83,  (~0x1ffc00)(I32)
;;								## 7
	c0    or $r0.9 = $r0.9, $r0.3   ## bblock 11, line 473,  t84,  t132(I21),  t133
;;								## 8
.return ret()
	c0    stw 0[$r0.2] = $r0.9   ## bblock 11, line 473, t262, t84
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 475,  t87,  ?2.18?2auto_size(I32),  t86
;;								## 9
.trace 25
L98?3:
	c0    mov $r0.2 = $r0.7   ## bblock 43, line 0,  t103,  t245
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 24
L97?3:
	c0    mov $r0.2 = $r0.6   ## bblock 46, line 0,  t103,  t244
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 23
L96?3:
	c0    mov $r0.2 = $r0.8   ## bblock 49, line 0,  t103,  t243
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 22
L95?3:
	c0    mov $r0.2 = $r0.7   ## bblock 52, line 0,  t103,  t242
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 21
L94?3:
	c0    mov $r0.2 = $r0.6   ## bblock 55, line 0,  t103,  t241
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 20
L93?3:
	c0    mov $r0.2 = $r0.3   ## bblock 58, line 0,  t103,  t152(I11)
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
	      ## goto
;;
	c0    goto L100?3 ## goto
;;								## 0
.trace 18
L92?3:
	   ## bblock 59, line 0,  t103,  t155## $r0.2(skipped)
	c0    ldw.d $r0.3 = 4[$r0.9]   ## [spec] bblock 12, line 471, t135, t157
;;								## 0
L100?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 10, line 470,  t260(I1),  t103,  0(SI32)
	c0    shl $r0.4 = $r0.2, 1   ## [spec] bblock 12, line 471,  t140,  t103,  1(I32)
;;								## 1
	c0    shru $r0.3 = $r0.3, 21   ## [spec] bblock 12, line 471,  t70(I11),  t135,  21(I32)
	c0    sh2add $r0.5 = $r0.4, (dict + 4)   ## [spec] bblock 12, line 471,  t263,  t140,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 2
	c0    shl $r0.3 = $r0.3, 21   ## [spec] bblock 12, line 471,  t138,  t70(I11),  21(I32)
	c0    ldw.d $r0.5 = 0[$r0.5]   ## [spec] bblock 12, line 471, t73, t263
;;								## 3
	c0    sh2add $r0.4 = $r0.4, (dict + 4)   ## [spec] bblock 12, line 471,  t264,  t140,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
	c0    brf $b0.0, L101?3   ## bblock 10, line 470,  t260(I1)
;;								## 4
	c0    and $r0.5 = $r0.5, 2097151   ## bblock 12, line 471,  t139,  t73,  2097151(I32)
;;								## 5
	c0    or $r0.3 = $r0.3, $r0.5   ## bblock 12, line 471,  t74,  t138,  t139
;;								## 6
.return ret()
	c0    stw 0[$r0.4] = $r0.3   ## bblock 12, line 471, t264, t74
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 475,  t87,  ?2.18?2auto_size(I32),  t86
;;								## 7
.trace 17
L90?3:
.return ret()
	c0    return $r0.1 = $r0.1, (0x0), $l0.0   ## bblock 7, line 475,  t87,  ?2.18?2auto_size(I32),  t86
;;								## 0
.trace 12
L86?3:
	c0    add $r0.2 = $r0.2, 48   ## bblock 21, line 0,  t157,  t105,  48(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 11
L85?3:
	c0    add $r0.2 = $r0.2, 40   ## bblock 24, line 0,  t157,  t105,  40(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 10
L84?3:
	c0    add $r0.2 = $r0.2, 32   ## bblock 27, line 0,  t157,  t105,  32(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 9
L83?3:
	c0    add $r0.2 = $r0.2, 24   ## bblock 30, line 0,  t157,  t105,  24(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 8
L82?3:
	c0    add $r0.2 = $r0.2, 16   ## bblock 33, line 0,  t157,  t105,  16(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 7
L81?3:
	c0    add $r0.2 = $r0.2, 8   ## bblock 36, line 0,  t157,  t105,  8(I32)
	c0    goto L88?3 ## goto
;;								## 0
.trace 4
L80?3:
	   ## bblock 37, line 0,  t157,  t105## $r0.2(skipped)
;;								## 0
L88?3:
	c0    cmpltu $b0.0 = $r0.2, ((dict + 0) + 16384)   ## bblock 4, line 459,  t252(I1),  t157,  (addr(dict?1.0)(P32) + 0x4000(I32))(P32)
;;								## 1
	c0    mov $r0.3 = $r0.2   ## t157
;;								## 2
	c0    mov $r0.2 = ((dict + 0) + 2072)   ## [spec] bblock 5, line 461,  t105,  (addr(dict?1.0)(P32) + 0x818(I32))(P32)
	c0    br $b0.0, L89?3   ## bblock 4, line 459,  t252(I1)
	      ## goto
;;
	c0    goto L79?3 ## goto
;;								## 3
.endp
.section .bss
.section .data
.section .data
.section .text
.equ ?2.18?2auto_size, 0x0
 ## End add_dict
 ## Begin checksize_dict
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg()
checksize_dict::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t7
;;								## 1
.trace 1
L102?3:
	c0    ldw $r0.2 = ((c1 + 0) + 0)[$r0.0]   ## bblock 1, line 478, t0, 0(I32)
	c0    mov $r0.3 = 2   ## 2(I32)
;;								## 0
	c0    ldw $r0.5 = ((c3 + 0) + 0)[$r0.0]   ## bblock 1, line 478, t1, 0(I32)
;;								## 1
	c0    ldw.d $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## [spec] bblock 3, line 480, t2, 0(I32)
;;								## 2
	c0    cmpge $b0.0 = $r0.2, $r0.5   ## bblock 1, line 478,  t18(I1),  t0,  t1
	      xnop 1
;;								## 4
	c0    brf $b0.0, L103?3   ## bblock 1, line 478,  t18(I1)
;;								## 5
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 3, line 480,  raddr(putcode)(P32),  2(I32),  t2
;;								## 6
	c0    ldw $r0.2 = ((c2 + 0) + 0)[$r0.0]   ## bblock 4, line 481, t3, 0(I32)
;;								## 7
	c0    ldw $r0.3 = ((c3 + 0) + 0)[$r0.0]   ## bblock 4, line 482, t5, 0(I32)
;;								## 8
	c0    add $r0.2 = $r0.2, 1   ## bblock 4, line 481,  t4,  t3,  1(SI32)
;;								## 9
	c0    stw ((c2 + 0) + 0)[$r0.0] = $r0.2   ## bblock 4, line 481, 0(I32), t4
	c0    shl $r0.3 = $r0.3, 1   ## bblock 4, line 482,  t6,  t5,  1(SI32)
;;								## 10
	c0    stw ((c3 + 0) + 0)[$r0.0] = $r0.3   ## bblock 4, line 482, 0(I32), t6
	c0    goto L102?3 ## goto
;;								## 11
.trace 4
L103?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t7
	      xnop 2
;;								## 2
.return ret()
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 2, line 484,  t8,  ?2.19?2auto_size(I32),  t7
;;								## 3
.endp
.section .bss
.section .data
.equ ?2.19?2scratch.0, 0x0
.equ ?2.19?2ras_p, 0x10
.section .data
.section .text
.equ ?2.19?2auto_size, 0x20
 ## End checksize_dict
 ## Begin encode
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg()
encode::
.trace 15
	c0    add $r0.1 = $r0.1, (-0x40)
	c0    mov $r0.2 = $r0.0   ## bblock 0, line 493,  t77,  0(SI32)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t66
;;								## 1
	c0    stw 0x20[$r0.1] = $r0.57  ## spill ## t70
;;								## 2
	c0    mov $r0.57 = $r0.0   ## bblock 0, line 493,  t82,  0(SI32)
	c0    stw 0x24[$r0.1] = $r0.58  ## spill ## t71
;;								## 3
	c0    mov $r0.58 = $r0.0   ## bblock 0, line 493,  t78,  0(SI32)
	c0    stw 0x28[$r0.1] = $r0.59  ## spill ## t72
;;								## 4
	c0    mov $r0.59 = $r0.0   ## bblock 0, line 493,  t81,  0(SI32)
	c0    stw 0x2c[$r0.1] = $r0.60  ## spill ## t73
;;								## 5
	c0    mov $r0.60 = $r0.0   ## bblock 0, line 493,  t79,  0(SI32)
	c0    stw 0x30[$r0.1] = $r0.2  ## spill ## t77
;;								## 6
.trace 1
L104?3:
.call getdata, caller, arg(), ret($r0.3:s32)
	c0    call $l0.0 = getdata   ## bblock 1, line 500,  raddr(getdata)(P32)
;;								## 0
	c0    cmpeq $b0.0 = $r0.3, -6   ## bblock 2, line 525,  t93(I1),  t0,  -6(SI32)
	c0    cmpeq $b0.1 = $r0.3, -5   ## [spec] bblock 3, line 525,  t94(I1),  t0,  -5(SI32)
;;								## 1
	c0    ldw.d $r0.2 = ((compress + 0) + 0)[$r0.0]   ## [spec] bblock 52, line 511, t91, 0(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
;;								## 2
	c0    mov $r0.5 = $r0.3   ## t0
	c0    br $b0.0, L105?3   ## bblock 2, line 525,  t93(I1)
;;								## 3
	c0    andl $b0.0 = $r0.57, $r0.2   ## [spec] bblock 52, line 509,  t117(I1),  t82,  t91
	c0    brf $b0.1, L106?3   ## bblock 3, line 525,  t94(I1)
;;								## 4
	c0    mov $r0.3 = (~0x4)   ## (~0x4)(I32)
;;								## 5
	c0    br $b0.0, L107?3   ## bblock 52, line 509,  t117(I1)
;;								## 6
L108?3:
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 53, line 518,  raddr(putcode)(P32),  (~0x4)(I32),  0(SI32)
	      ## goto
;;
	c0    goto L104?3 ## goto
;;								## 7
.trace 4
L107?3:
.call checksize_dict, caller, arg(), ret()
	c0    call $l0.0 = checksize_dict   ## bblock 55, line 513,  raddr(checksize_dict)(P32)
;;								## 0
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 56, line 514, t4, 0(I32)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 1
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 56, line 514,  raddr(putcode)(P32),  t82,  t4
;;								## 2
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 57, line 515, t5, 0(I32)
	c0    mov $r0.3 = 1   ## 1(I32)
;;								## 3
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 57, line 515,  raddr(putcode)(P32),  1(I32),  t5
;;								## 4
	c0    mov $r0.3 = (~0x4)   ## (~0x4)(I32)
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	      ## goto
;;
	c0    goto L108?3 ## goto
;;								## 5
.trace 2
L106?3:
	c0    cmpeq $r0.2 = $r0.5, -4   ## bblock 4, line 525,  t84(I1),  t0,  -4(SI32)
	c0    cmpeq $r0.4 = $r0.5, -3   ## bblock 4, line 525,  t85(I1),  t0,  -3(SI32)
;;								## 0
	c0    norl $b0.0 = $r0.2, $r0.4   ## bblock 4, line 525,  t95(I1),  t84(I1),  t85(I1)
	      xnop 1
;;								## 2
	c0    br $b0.0, L109?3   ## bblock 4, line 525,  t95(I1)
	      ## goto
;;
	c0    goto L104?3 ## goto
;;								## 3
.trace 5
L109?3:
	c0    cmpeq $b0.0 = $r0.5, -2   ## bblock 6, line 525,  t96(I1),  t0,  -2(SI32)
	c0    cmpeq $b0.1 = $r0.5, -1   ## [spec] bblock 7, line 525,  t97(I1),  t0,  -1(SI32)
	      xnop 1
;;								## 1
	c0    br $b0.0, L105?3   ## bblock 6, line 525,  t96(I1)
;;								## 2
	c0    brf $b0.1, L110?3   ## bblock 7, line 525,  t97(I1)
;;								## 3
.call init_dict, caller, arg(), ret()
	c0    call $l0.0 = init_dict   ## bblock 50, line 506,  raddr(init_dict)(P32)
	      ## goto
;;
	c0    goto L104?3 ## goto
;;								## 4
.trace 6
L110?3:
	c0    cmpgt $b0.0 = $r0.58, 2048   ## bblock 8, line 526,  t98(I1),  t78,  2048(SI32)
	c0    stw 0x14[$r0.1] = $r0.5  ## spill ## t0
;;								## 0
	c0    ldw.d $r0.2 = ((compress + 0) + 0)[$r0.0]   ## [spec] bblock 9, line 567, t36, 0(I32)
	c0    mov $r0.4 = 8   ## 8(SI32)
;;								## 1
	c0    mov $r0.3 = $r0.5   ## t0
	c0    br $b0.0, L111?3   ## bblock 8, line 526,  t98(I1)
;;								## 2
L112?3:
	c0    add $r0.58 = $r0.58, 8   ## bblock 9, line 566,  t78,  t78,  8(SI32)
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 9, line 567,  t99(I1),  t36,  0(SI32)
	      xnop 1
;;								## 4
	c0    brf $b0.0, L113?3   ## bblock 9, line 567,  t99(I1)
;;								## 5
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 22, line 569,  raddr(putcode)(P32),  t0,  8(SI32)
;;								## 6
	c0    ldw $r0.2 = ((escape + 0) + 0)[$r0.0]   ## bblock 23, line 570, t39, 0(I32)
	c0    mov $r0.3 = 1   ## 1(I32)
;;								## 7
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 9
	c0    cmpeq $b0.0 = $r0.5, $r0.2   ## bblock 23, line 570,  t109(I1),  t0,  t39
	      xnop 1
;;								## 11
	c0    brf $b0.0, L114?3   ## bblock 23, line 570,  t109(I1)
;;								## 12
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 24, line 571,  raddr(putcode)(P32),  1(I32),  8(SI32)
;;								## 13
.trace 13
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 0
;;								## 1
.trace 7
L113?3:
	c0    zxtb $r0.4 = $r0.3   ## [spec] bblock 11, line 575,  t48(I8),  t0
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t0
;;								## 0
	c0    ldw $r0.2 = ((escape + 0) + 0)[$r0.0]   ## bblock 10, line 573, t41, 0(I32)
	      xnop 1
;;								## 2
	c0    cmpeq $b0.0 = $r0.3, $r0.2   ## bblock 10, line 573,  t100(I1),  t0,  t41
	c0    add $r0.5 = $r0.2, 51   ## [spec] bblock 21, line 574,  t43,  t41,  51(SI32)
;;								## 3
	c0    cmplt $b0.1 = $r0.5, $r0.0   ## [spec] bblock 21, line 574,  t104,  t43,  0(I32)
	c0    add $r0.6 = $r0.5, 255   ## [spec] bblock 21, line 574,  t105,  t43,  255(I32)
;;								## 4
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.5   ## [spec] bblock 21, line 574,  t106,  t104,  t105,  t43
	c0    brf $b0.0, L115?3   ## bblock 10, line 573,  t100(I1)
;;								## 5
	c0    shr $r0.6 = $r0.6, 8   ## bblock 21, line 574,  t107,  t106,  8(I32)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 6
	c0    shl $r0.6 = $r0.6, 8   ## bblock 21, line 574,  t108,  t107,  8(I32)
;;								## 7
	c0    sub $r0.5 = $r0.5, $r0.6   ## bblock 21, line 574,  t44,  t43,  t108
;;								## 8
.call search_dict, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    stw ((escape + 0) + 0)[$r0.0] = $r0.5   ## bblock 21, line 574, 0(I32), t44
	c0    call $l0.0 = search_dict   ## bblock 11, line 575,  raddr(search_dict)(P32),  t82,  t48(I8)
;;								## 9
L116?3:
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 12, line 576,  t101(I1),  t45,  0(SI32)
	      xnop 1
;;								## 11
	c0    brf $b0.0, L117?3   ## bblock 12, line 576,  t101(I1)
;;								## 12
	c0    mov $r0.57 = $r0.3   ## bblock 20, line 575,  t82,  t45
	c0    add $r0.59 = $r0.59, 1   ## bblock 20, line 579,  t81,  t81,  1(SI32)
	      ## goto
;;
	c0    goto L104?3 ## goto
;;								## 13
.trace 8
L117?3:
	c0    ldw.d $r0.2 = ((compress + 0) + 0)[$r0.0]   ## [spec] bblock 13, line 584, t87, 0(I32)
	c0    cmplt $b0.0 = $r0.59, 250   ## [spec] bblock 14, line 591,  t103(I1),  t81,  250(SI32)
;;								## 0
	c0    ldw.d $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## [spec] bblock 14, line 590, t58, 0(I32)
;;								## 1
	c0    andl $b0.1 = $r0.57, $r0.2   ## bblock 13, line 582,  t102(I1),  t82,  t87
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
	      xnop 1
;;								## 3
	c0    br $b0.1, L118?3   ## bblock 13, line 582,  t102(I1)
;;								## 4
L119?3:
	c0    add $r0.60 = $r0.4, $r0.60   ## bblock 14, line 590,  t79,  t58,  t79
	c0    br $b0.0, L120?3   ## bblock 14, line 591,  t103(I1)
;;								## 5
L121?3:
	c0    add $r0.57 = $r0.3, 3   ## bblock 15, line 593,  t82,  t0,  3(SI32)
	c0    mov $r0.59 = 1   ## bblock 15, line 594,  t81,  1(SI32)
	      ## goto
;;
	c0    goto L104?3 ## goto
;;								## 6
.trace 12
L120?3:
	c0    zxtb $r0.4 = $r0.3   ## bblock 16, line 592,  t63(I8),  t0
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t0
;;								## 0
.call add_dict, caller, arg($r0.3:u32,$r0.4:u32), ret()
	c0    call $l0.0 = add_dict   ## bblock 16, line 592,  raddr(add_dict)(P32),  t82,  t63(I8)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 1
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 2
	c0    goto L121?3 ## goto
;;								## 3
.trace 16
L118?3:
.call checksize_dict, caller, arg(), ret()
	c0    call $l0.0 = checksize_dict   ## bblock 18, line 586,  raddr(checksize_dict)(P32)
;;								## 0
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 19, line 587, t56, 0(I32)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 1
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 19, line 587,  raddr(putcode)(P32),  t82,  t56
;;								## 2
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 14, line 590, t58, 0(I32)
	c0    cmplt $b0.0 = $r0.59, 250   ## bblock 14, line 591,  t103(I1),  t81,  250(SI32)
;;								## 3
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 4
	c0    goto L119?3 ## goto
;;								## 5
.trace 10
L115?3:
.call search_dict, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = search_dict   ## bblock 11, line 575,  raddr(search_dict)(P32),  t82,  t48(I8)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 0
	c0    goto L116?3 ## goto
;;								## 1
.trace 14
L114?3:
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 0
	c0    goto L113?3 ## goto
;;								## 1
.trace 9
L111?3:
	c0    cmplt $b0.0 = $r0.58, $r0.60   ## bblock 25, line 528,  t110(I1),  t78,  t79
	c0    ldw.d $r0.5 = ((compress + 0) + 0)[$r0.0]   ## [spec] bblock 34, line 530, t9, 0(I32)
;;								## 0
	c0    cmpne $b0.1 = $r0.57, $r0.0   ## [spec] bblock 41, line 532,  t115(I1),  t82,  0(SI32)
	c0    zxtb $r0.4 = $r0.3   ## [spec] bblock 42, line 537,  t16(I8),  t0
;;								## 1
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## [spec] t16(I8)
	c0    brf $b0.0, L122?3   ## bblock 25, line 528,  t110(I1)
;;								## 2
	c0    cmpne $b0.0 = $r0.5, $r0.0   ## bblock 34, line 530,  t113(I1),  t9,  0(SI32)
	c0    mov $r0.3 = $r0.57   ## t82
	      xnop 1
;;								## 4
	c0    brf $b0.0, L123?3   ## bblock 34, line 530,  t113(I1)
;;								## 5
	c0    br $b0.1, L124?3   ## bblock 41, line 532,  t115(I1)
;;								## 6
L125?3:
.call search_dict, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = search_dict   ## bblock 42, line 537,  raddr(search_dict)(P32),  t82,  t16(I8)
;;								## 7
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 43, line 537,  t116(I1),  t13,  0(SI32)
	c0    ldw.d $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## [spec] bblock 44, line 539, t20, 0(I32)
	      xnop 1
;;								## 9
	c0    mov $r0.3 = $r0.0   ## 0(I32)
	c0    br $b0.0, L126?3   ## bblock 43, line 537,  t116(I1)
;;								## 10
L127?3:
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 44, line 539,  raddr(putcode)(P32),  0(I32),  t20
;;								## 11
	c0    mov $r0.4 = $r0.0   ## 0(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(I32)
;;								## 12
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 45, line 540,  raddr(putcode)(P32),  0(I32),  0(SI32)
;;								## 13
	c0    mov $r0.57 = $r0.0   ## bblock 46, line 542,  t82,  0(SI32)
	c0    mov $r0.59 = $r0.0   ## bblock 46, line 542,  t81,  0(SI32)
;;								## 14
	c0    mov $r0.58 = $r0.0   ## bblock 27, line 563,  t78,  0(SI32)
	c0    mov $r0.60 = $r0.0   ## bblock 27, line 563,  t79,  0(SI32)
;;								## 15
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 16
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.0   ## bblock 46, line 541, 0(I32), 0(SI32)
;;								## 17
L128?3:
	c0    ldw $r0.2 = ((compress + 0) + 0)[$r0.0]   ## bblock 9, line 567, t36, 0(I32)
;;								## 18
	c0    goto L112?3 ## goto
;;								## 19
.trace 20
L126?3:
	c0    ldw $r0.4 = 0x18[$r0.1]  ## restore ## t16(I8)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 0
.call add_dict, caller, arg($r0.3:u32,$r0.4:u32), ret()
	c0    call $l0.0 = add_dict   ## bblock 47, line 538,  raddr(add_dict)(P32),  t82,  t16(I8)
;;								## 1
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 44, line 539, t20, 0(I32)
	c0    mov $r0.3 = $r0.0   ## 0(I32)
;;								## 2
	c0    goto L127?3 ## goto
;;								## 3
.trace 22
L124?3:
.call checksize_dict, caller, arg(), ret()
	c0    call $l0.0 = checksize_dict   ## bblock 48, line 534,  raddr(checksize_dict)(P32)
;;								## 0
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 49, line 535, t12, 0(I32)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 1
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 49, line 535,  raddr(putcode)(P32),  t82,  t12
;;								## 2
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t0
	c0    mov $r0.3 = $r0.57   ## t82
	      xnop 1
;;								## 4
	c0    zxtb $r0.4 = $r0.2   ## bblock 42, line 537,  t16(I8),  t0
;;								## 5
	c0    stw 0x18[$r0.1] = $r0.4  ## spill ## t16(I8)
	c0    goto L125?3 ## goto
;;								## 6
.trace 18
L123?3:
	c0    ldw.d $r0.2 = ((c3 + 0) + 0)[$r0.0]   ## [spec] bblock 35, line 544, t23, 0(I32)
	c0    mov $r0.58 = $r0.0   ## [spec] bblock 27, line 563,  t78,  0(SI32)
;;								## 0
	c0    mov $r0.60 = $r0.0   ## [spec] bblock 27, line 563,  t79,  0(SI32)
	c0    ldw $r0.5 = 0x30[$r0.1]  ## restore ## t77
;;								## 1
	c0    cmpgt $r0.2 = $r0.2, 512   ## bblock 35, line 544,  t89(I1),  t23,  512(SI32)
	c0    mov $r0.4 = 8   ## 8(SI32)
;;								## 2
	c0    add $r0.5 = $r0.5, 1   ## bblock 35, line 544,  t77,  t77,  1(SI32)
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 3
	c0    cmpge $r0.6 = $r0.5, 5   ## bblock 35, line 544,  t88(I1),  t77,  5(SI32)
	c0    stw 0x30[$r0.1] = $r0.5  ## spill ## t77
;;								## 4
	c0    andl $b0.0 = $r0.6, $r0.2   ## bblock 35, line 544,  t114(I1),  t88(I1),  t89(I1)
	      xnop 1
;;								## 6
	c0    br $b0.0, L129?3   ## bblock 35, line 544,  t114(I1)
	      ## goto
;;
	c0    goto L128?3 ## goto
;;								## 7
.trace 23
L129?3:
	c0    ldw $r0.3 = ((escape + 0) + 0)[$r0.0]   ## bblock 37, line 547, t24, 0(I32)
	c0    mov $r0.2 = $r0.0   ## bblock 37, line 546,  t77,  0(SI32)
;;								## 0
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    stw 0x30[$r0.1] = $r0.2  ## spill ## t77
;;								## 1
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 37, line 547,  raddr(putcode)(P32),  t24,  8(SI32)
;;								## 2
	c0    mov $r0.3 = 2   ## 2(I32)
	c0    mov $r0.4 = 8   ## 8(SI32)
;;								## 3
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 38, line 548,  raddr(putcode)(P32),  2(I32),  8(SI32)
;;								## 4
.call init_dict, caller, arg(), ret()
	c0    call $l0.0 = init_dict   ## bblock 39, line 549,  raddr(init_dict)(P32)
;;								## 5
	c0    mov $r0.57 = $r0.0   ## bblock 40, line 546,  t82,  0(SI32)
	c0    mov $r0.59 = $r0.0   ## bblock 40, line 546,  t81,  0(SI32)
;;								## 6
	c0    mov $r0.58 = $r0.0   ## bblock 27, line 563,  t78,  0(SI32)
	c0    mov $r0.60 = $r0.0   ## bblock 27, line 563,  t79,  0(SI32)
;;								## 7
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 8
	c0    goto L128?3 ## goto
;;								## 9
.trace 11
L122?3:
	c0    ldw $r0.2 = ((compress + 0) + 0)[$r0.0]   ## bblock 26, line 553, t25, 0(I32)
	c0    mov $r0.3 = $r0.57   ## t82
;;								## 0
	c0    ldw $r0.5 = 0x14[$r0.1]  ## restore ## t0
;;								## 1
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## bblock 26, line 553,  t111(I1),  t25,  0(SI32)
;;								## 2
	c0    zxtb $r0.4 = $r0.5   ## [spec] bblock 28, line 555,  t29(I8),  t0
;;								## 3
	c0    stw 0x1c[$r0.1] = $r0.4  ## spill ## [spec] t29(I8)
	c0    brf $b0.0, L130?3   ## bblock 26, line 553,  t111(I1)
;;								## 4
.call search_dict, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    call $l0.0 = search_dict   ## bblock 28, line 555,  raddr(search_dict)(P32),  t82,  t29(I8)
;;								## 5
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 29, line 555,  t112(I1),  t26,  0(SI32)
	c0    ldw $r0.4 = 0x1c[$r0.1]  ## restore ## [spec] t29(I8)
	      xnop 1
;;								## 7
	c0    mov $r0.3 = $r0.57   ## t82
	c0    brf $b0.0, L131?3   ## bblock 29, line 555,  t112(I1)
;;								## 8
.call add_dict, caller, arg($r0.3:u32,$r0.4:u32), ret()
	c0    call $l0.0 = add_dict   ## bblock 33, line 556,  raddr(add_dict)(P32),  t82,  t29(I8)
;;								## 9
L131?3:
	c0    ldw $r0.3 = ((escape + 0) + 0)[$r0.0]   ## bblock 30, line 557, t33, 0(I32)
	c0    mov $r0.4 = 8   ## 8(SI32)
;;								## 10
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 30, line 557,  raddr(putcode)(P32),  t33,  8(SI32)
;;								## 11
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(I32)
;;								## 12
.call putcode, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = putcode   ## bblock 31, line 558,  raddr(putcode)(P32),  0(I32),  8(SI32)
;;								## 13
	c0    mov $r0.57 = $r0.0   ## bblock 32, line 560,  t82,  0(SI32)
	c0    mov $r0.2 = 1   ## 1(SI32)
;;								## 14
	c0    mov $r0.59 = $r0.0   ## bblock 32, line 560,  t81,  0(SI32)
	c0    mov $r0.58 = $r0.0   ## bblock 27, line 563,  t78,  0(SI32)
;;								## 15
	c0    mov $r0.60 = $r0.0   ## bblock 27, line 563,  t79,  0(SI32)
	c0    mov $r0.4 = 8   ## 8(SI32)
;;								## 16
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 17
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.2   ## bblock 32, line 559, 0(I32), 1(SI32)
	c0    goto L128?3 ## goto
;;								## 18
.trace 17
L130?3:
	c0    mov $r0.58 = $r0.0   ## bblock 27, line 563,  t78,  0(SI32)
	c0    mov $r0.60 = $r0.0   ## bblock 27, line 563,  t79,  0(SI32)
;;								## 0
	c0    mov $r0.4 = 8   ## 8(SI32)
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t0
;;								## 1
	c0    goto L128?3 ## goto
;;								## 2
.trace 19
L105?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t66
;;								## 0
	c0    ldw $r0.60 = 0x2c[$r0.1]  ## restore ## t73
;;								## 1
	c0    ldw $r0.59 = 0x28[$r0.1]  ## restore ## t72
;;								## 2
	c0    ldw $r0.58 = 0x24[$r0.1]  ## restore ## t71
;;								## 3
	c0    ldw $r0.57 = 0x20[$r0.1]  ## restore ## t70
;;								## 4
.return ret()
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 51, line 504,  t67,  ?2.20?2auto_size(I32),  t66
;;								## 5
.endp
.section .bss
.section .data
.equ ?2.20?2scratch.0, 0x0
.equ ?2.20?2ras_p, 0x10
.equ ?2.20?2spill_p, 0x14
.section .data
.section .text
.equ ?2.20?2auto_size, 0x40
 ## End encode
 ## Begin decode
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-64, arg()
decode::
.trace 14
	c0    add $r0.1 = $r0.1, (-0x40)
;;								## 0
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t71
;;								## 1
	c0    stw 0x18[$r0.1] = $r0.57  ## spill ## t75
;;								## 2
	c0    mov $r0.57 = $r0.0   ## bblock 0, line 604,  t84,  0(SI32)
;;								## 3
.trace 1
L132?3:
	c0    ldw $r0.2 = ((compress + 0) + 0)[$r0.0]   ## bblock 1, line 607, t2, 0(I32)
;;								## 0
	c0    ldw $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## bblock 1, line 607, t3, 0(I32)
;;								## 1
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 1, line 607,  t153(I1),  t2,  0(SI32)
;;								## 2
.call getcode, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    slct $r0.3 = $b0.0, $r0.4, 8   ## bblock 1, line 607,  t4,  t153(I1),  t3,  8(SI32)
	c0    call $l0.0 = getcode   ## bblock 1, line 607,  raddr(getcode)(P32),  t4
;;								## 3
	c0    cmpeq $b0.0 = $r0.3, -6   ## bblock 2, line 625,  t154(I1),  t1,  -6(SI32)
	c0    cmpeq $b0.1 = $r0.3, -5   ## [spec] bblock 3, line 625,  t155(I1),  t1,  -5(SI32)
;;								## 4
	c0    mov $r0.3 = -5   ## -5(SI32)
	c0    mov $r0.2 = $r0.3   ## t1
;;								## 5
	c0    br $b0.0, L133?3   ## bblock 2, line 625,  t154(I1)
;;								## 6
	c0    brf $b0.1, L134?3   ## bblock 3, line 625,  t155(I1)
;;								## 7
.call putdata, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putdata   ## bblock 48, line 618,  raddr(putdata)(P32),  -5(SI32)
	      ## goto
;;
	c0    goto L132?3 ## goto
;;								## 8
.trace 2
L134?3:
	c0    cmpeq $r0.4 = $r0.2, -4   ## bblock 4, line 625,  t90(I1),  t1,  -4(SI32)
	c0    cmpeq $r0.5 = $r0.2, -3   ## bblock 4, line 625,  t91(I1),  t1,  -3(SI32)
;;								## 0
	c0    norl $b0.0 = $r0.4, $r0.5   ## bblock 4, line 625,  t156(I1),  t90(I1),  t91(I1)
	      xnop 1
;;								## 2
	c0    br $b0.0, L135?3   ## bblock 4, line 625,  t156(I1)
	      ## goto
;;
	c0    goto L132?3 ## goto
;;								## 3
.trace 9
L135?3:
	c0    cmpeq $b0.0 = $r0.2, -2   ## bblock 6, line 625,  t157(I1),  t1,  -2(SI32)
	c0    cmpeq $b0.1 = $r0.2, -1   ## [spec] bblock 7, line 625,  t158(I1),  t1,  -1(SI32)
	      xnop 1
;;								## 1
	c0    br $b0.0, L136?3   ## bblock 6, line 625,  t157(I1)
;;								## 2
	c0    brf $b0.1, L137?3   ## bblock 7, line 625,  t158(I1)
;;								## 3
.call init_dict, caller, arg(), ret()
	c0    call $l0.0 = init_dict   ## bblock 45, line 615,  raddr(init_dict)(P32)
	      ## goto
;;
	c0    goto L132?3 ## goto
;;								## 4
.trace 10
L137?3:
	c0    ldw $r0.4 = ((compress + 0) + 0)[$r0.0]   ## bblock 8, line 626, t8, 0(I32)
	c0    cmpeq $b0.0 = $r0.2, $r0.0   ## [spec] bblock 25, line 656,  t170(I1),  t1,  0(SI32)
;;								## 0
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
;;								## 1
	c0    cmpne $b0.1 = $r0.4, $r0.0   ## bblock 8, line 626,  t159(I1),  t8,  0(SI32)
	      xnop 1
;;								## 3
	c0    brf $b0.1, L138?3   ## bblock 8, line 626,  t159(I1)
;;								## 4
	c0    brf $b0.0, L139?3   ## bblock 25, line 656,  t170(I1)
;;								## 5
.call getcode, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = getcode   ## bblock 43, line 631,  raddr(getcode)(P32),  0(SI32)
;;								## 6
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.0   ## bblock 44, line 632, 0(I32), 0(SI32)
	c0    goto L132?3 ## goto
;;								## 7
.trace 13
L139?3:
	c0    cmpeq $b0.0 = $r0.2, 1   ## bblock 26, line 656,  t171(I1),  t1,  1(SI32)
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	      xnop 1
;;								## 1
	c0    brf $b0.0, L140?3   ## bblock 26, line 656,  t171(I1)
;;								## 2
.call getcode, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = getcode   ## bblock 41, line 635,  raddr(getcode)(P32),  0(SI32)
;;								## 3
.call putdata, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putdata   ## bblock 42, line 636,  raddr(putdata)(P32),  -5(SI32)
	c0    mov $r0.3 = -5   ## -5(SI32)
	      ## goto
;;
	c0    goto L132?3 ## goto
;;								## 4
.trace 17
L140?3:
	c0    cmpeq $b0.0 = $r0.2, 2   ## bblock 27, line 656,  t172(I1),  t1,  2(SI32)
	c0    ldw.d $r0.4 = ((c2 + 0) + 0)[$r0.0]   ## [spec] bblock 40, line 639, t12, 0(I32)
;;								## 0
	c0    ldw.d $r0.5 = ((c3 + 0) + 0)[$r0.0]   ## [spec] bblock 40, line 640, t14, 0(I32)
;;								## 1
	c0    add $r0.4 = $r0.4, 1   ## [spec] bblock 40, line 639,  t13,  t12,  1(SI32)
	c0    brf $b0.0, L141?3   ## bblock 27, line 656,  t172(I1)
;;								## 2
	c0    stw ((c2 + 0) + 0)[$r0.0] = $r0.4   ## bblock 40, line 639, 0(I32), t13
	c0    shl $r0.5 = $r0.5, 1   ## bblock 40, line 640,  t15,  t14,  1(SI32)
;;								## 3
	c0    stw ((c3 + 0) + 0)[$r0.0] = $r0.5   ## bblock 40, line 640, 0(I32), t15
	c0    goto L132?3 ## goto
;;								## 4
.trace 20
L141?3:
	c0    mov $r0.5 = ((_?1PACKET.39 + 0) + 250)   ## bblock 28, line 643,  t94,  (addr(str?1.75)(P32) + 0xfa(I32))(P32)
	c0    mov $r0.3 = $r0.2   ## bblock 28, line 644,  t85(I11),  t1
;;								## 0
	c0    mov $r0.3 = $r0.2   ## t1
	c0    mov $r0.4 = $r0.3   ## t85(I11)
;;								## 1
	c0    mov $r0.2 = $r0.4   ## t85(I11)
;;								## 2
.trace 4
L142?3:
	c0    cmpne $b0.0 = $r0.2, $r0.0   ## bblock 29, line 644,  t173(I1),  t85(I11),  0(SI32)
	c0    shl $r0.4 = $r0.2, 1   ## [spec] bblock 39, line 645,  t115,  t85(I11),  1(I32)
;;								## 0
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 39, line 645,  t182,  t115,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 1
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 39, line 645, t107, t182
	c0    brf $b0.0, L143?3   ## bblock 29, line 644,  t173(I1)
;;								## 2
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 39, line 644,  t183,  t115,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 3
	c0    shl $r0.6 = $r0.6, 11   ## bblock 39, line 645,  t96,  t107,  11(I32)
;;								## 4
	c0    shru $r0.6 = $r0.6, 24   ## bblock 39, line 645,  t123(I8),  t96,  24(I32)
;;								## 5
	c0    stb (~0x0)[$r0.5] = $r0.6   ## bblock 39, line 645, t94, t123(I8)
;;								## 6
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 39, line 644, t124, t183
	      xnop 1
;;								## 8
	c0    shru $r0.4 = $r0.4, 21   ## bblock 39, line 644,  t98(I11),  t124,  21(I32)
;;								## 9
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 39, line 644-1,  t184(I1),  t98(I11),  0(SI32)
	c0    shl $r0.4 = $r0.4, 1   ## [spec] bblock 63, line 645-1,  t125,  t98(I11),  1(I32)
;;								## 10
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 63, line 645-1,  t196,  t125,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 11
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 63, line 645-1, t126, t196
	c0    brf $b0.0, L144?3   ## bblock 39, line 644-1,  t184(I1)
;;								## 12
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 63, line 644-1,  t197,  t125,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 13
	c0    shl $r0.6 = $r0.6, 11   ## bblock 63, line 645-1,  t127,  t126,  11(I32)
;;								## 14
	c0    shru $r0.6 = $r0.6, 24   ## bblock 63, line 645-1,  t129(I8),  t127,  24(I32)
;;								## 15
	c0    stb (~0x1)[$r0.5] = $r0.6   ## bblock 63, line 645-1, t94, t129(I8)
;;								## 16
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 63, line 644-1, t130, t197
	      xnop 1
;;								## 18
	c0    shru $r0.4 = $r0.4, 21   ## bblock 63, line 644-1,  t131(I11),  t130,  21(I32)
;;								## 19
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 63, line 644-2,  t198(I1),  t131(I11),  0(SI32)
	c0    shl $r0.4 = $r0.4, 1   ## [spec] bblock 60, line 645-2,  t88,  t131(I11),  1(I32)
;;								## 20
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 60, line 645-2,  t193,  t88,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 21
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 60, line 645-2, t93, t193
	c0    brf $b0.0, L145?3   ## bblock 63, line 644-2,  t198(I1)
;;								## 22
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 60, line 644-2,  t194,  t88,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 23
	c0    shl $r0.6 = $r0.6, 11   ## bblock 60, line 645-2,  t101,  t93,  11(I32)
;;								## 24
	c0    shru $r0.6 = $r0.6, 24   ## bblock 60, line 645-2,  t95(I8),  t101,  24(I32)
;;								## 25
	c0    stb (~0x2)[$r0.5] = $r0.6   ## bblock 60, line 645-2, t94, t95(I8)
;;								## 26
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 60, line 644-2, t89, t194
	      xnop 1
;;								## 28
	c0    shru $r0.4 = $r0.4, 21   ## bblock 60, line 644-2,  t99(I11),  t89,  21(I32)
;;								## 29
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 60, line 644-3,  t195(I1),  t99(I11),  0(SI32)
	c0    shl $r0.4 = $r0.4, 1   ## [spec] bblock 57, line 645-3,  t116,  t99(I11),  1(I32)
;;								## 30
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 57, line 645-3,  t190,  t116,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 31
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 57, line 645-3, t111, t190
	c0    brf $b0.0, L146?3   ## bblock 60, line 644-3,  t195(I1)
;;								## 32
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 57, line 644-3,  t191,  t116,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 33
	c0    shl $r0.6 = $r0.6, 11   ## bblock 57, line 645-3,  t110,  t111,  11(I32)
;;								## 34
	c0    shru $r0.6 = $r0.6, 24   ## bblock 57, line 645-3,  t108(I8),  t110,  24(I32)
;;								## 35
	c0    stb (~0x3)[$r0.5] = $r0.6   ## bblock 57, line 645-3, t94, t108(I8)
;;								## 36
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 57, line 644-3, t105, t191
	      xnop 1
;;								## 38
	c0    shru $r0.4 = $r0.4, 21   ## bblock 57, line 644-3,  t104(I11),  t105,  21(I32)
;;								## 39
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 57, line 644-4,  t192(I1),  t104(I11),  0(SI32)
	c0    shl $r0.4 = $r0.4, 1   ## [spec] bblock 54, line 645-4,  t122,  t104(I11),  1(I32)
;;								## 40
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 54, line 645-4,  t187,  t122,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 41
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 54, line 645-4, t25, t187
	c0    brf $b0.0, L147?3   ## bblock 57, line 644-4,  t192(I1)
;;								## 42
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 54, line 644-4,  t188,  t122,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 43
	c0    shl $r0.6 = $r0.6, 11   ## bblock 54, line 645-4,  t121,  t25,  11(I32)
;;								## 44
	c0    shru $r0.6 = $r0.6, 24   ## bblock 54, line 645-4,  t119(I8),  t121,  24(I32)
;;								## 45
	c0    stb (~0x4)[$r0.5] = $r0.6   ## bblock 54, line 645-4, t94, t119(I8)
;;								## 46
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 54, line 644-4, t117, t188
	      xnop 1
;;								## 48
	c0    shru $r0.4 = $r0.4, 21   ## bblock 54, line 644-4,  t114(I11),  t117,  21(I32)
;;								## 49
	c0    cmpne $b0.0 = $r0.4, $r0.0   ## bblock 54, line 644-5,  t189(I1),  t114(I11),  0(SI32)
	c0    shl $r0.4 = $r0.4, 1   ## [spec] bblock 51, line 645-5,  t112,  t114(I11),  1(I32)
;;								## 50
	c0    sh2add $r0.6 = $r0.4, (dict + 4)   ## [spec] bblock 51, line 645-5,  t185,  t112,  addr(dict?1.0.BITFIELDALIAS.1)(P32)
;;								## 51
	c0    ldw.d $r0.6 = 0[$r0.6]   ## [spec] bblock 51, line 645-5, t92, t185
	c0    brf $b0.0, L148?3   ## bblock 54, line 644-5,  t189(I1)
;;								## 52
	c0    sh2add $r0.4 = $r0.4, (dict + 0)   ## bblock 51, line 644-5,  t186,  t112,  addr(dict?1.0.BITFIELDALIAS.0)(P32)
;;								## 53
	c0    shl $r0.6 = $r0.6, 11   ## bblock 51, line 645-5,  t87,  t92,  11(I32)
;;								## 54
	c0    shru $r0.6 = $r0.6, 24   ## bblock 51, line 645-5,  t27(I8),  t87,  24(I32)
;;								## 55
	c0    stb (~0x5)[$r0.5] = $r0.6   ## bblock 51, line 645-5, t94, t27(I8)
	c0    add $r0.5 = $r0.5, -6   ## bblock 51, line 645-5,  t94,  t94,  -6(SI32)
;;								## 56
	c0    ldw $r0.4 = 0[$r0.4]   ## bblock 51, line 644-5, t118, t186
	      xnop 1
;;								## 58
	c0    shru $r0.2 = $r0.4, 21   ## bblock 51, line 644-5,  t85(I11),  t118,  21(I32)
	c0    goto L142?3 ## goto
;;								## 59
.trace 29
L148?3:
	c0    add $r0.2 = $r0.5, (~0x4)   ## bblock 52, line 0,  t102,  t94,  (~0x4)(I32)
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
	      ## goto
;;
	c0    goto L149?3 ## goto
;;								## 0
.trace 5
L150?3:
	c0    cmpltu $b0.0 = $r0.57, ((_?1PACKET.39 + 0) + 250)   ## bblock 32, line 648,  t175(I1),  t102,  (addr(str?1.75)(P32) + 0xfa(I32))(P32)
	c0    ldbu.d $r0.3 = 0[$r0.57]   ## [spec] bblock 34, line 650, t42(I8), t102
	      xnop 1
;;								## 1
	c0    brf $b0.0, L151?3   ## bblock 32, line 648,  t175(I1)
;;								## 2
.call putdata, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putdata   ## bblock 34, line 650,  raddr(putdata)(P32),  t42(I8)
;;								## 3
	c0    ldbu $r0.2 = 0[$r0.57]   ## bblock 35, line 651, t44(I8), t102
;;								## 4
	c0    ldw $r0.4 = ((escape + 0) + 0)[$r0.0]   ## bblock 35, line 651, t45, 0(I32)
	      xnop 1
;;								## 6
	c0    cmpeq $b0.0 = $r0.2, $r0.4   ## bblock 35, line 651,  t176(I1),  t44(I8),  t45
	c0    add $r0.5 = $r0.4, 51   ## [spec] bblock 37, line 652,  t47,  t45,  51(SI32)
;;								## 7
	c0    cmplt $b0.1 = $r0.5, $r0.0   ## [spec] bblock 37, line 652,  t177,  t47,  0(I32)
	c0    add $r0.6 = $r0.5, 255   ## [spec] bblock 37, line 652,  t178,  t47,  255(I32)
;;								## 8
	c0    slct $r0.6 = $b0.1, $r0.6, $r0.5   ## [spec] bblock 37, line 652,  t179,  t177,  t178,  t47
	c0    brf $b0.0, L152?3   ## bblock 35, line 651,  t176(I1)
;;								## 9
	c0    shr $r0.6 = $r0.6, 8   ## bblock 37, line 652,  t180,  t179,  8(I32)
	c0    add $r0.57 = $r0.57, 1   ## bblock 36, line 648,  t102,  t102,  1(SI32)
;;								## 10
	c0    shl $r0.6 = $r0.6, 8   ## bblock 37, line 652,  t181,  t180,  8(I32)
;;								## 11
	c0    sub $r0.5 = $r0.5, $r0.6   ## bblock 37, line 652,  t48,  t47,  t181
;;								## 12
	c0    stw ((escape + 0) + 0)[$r0.0] = $r0.5   ## bblock 37, line 652, 0(I32), t48
	c0    goto L150?3 ## goto
;;								## 13
.trace 8
L152?3:
	c0    add $r0.57 = $r0.57, 1   ## bblock 36, line 648,  t102,  t102,  1(SI32)
	c0    goto L150?3 ## goto
;;								## 0
.trace 21
L151?3:
	c0    mov $r0.57 = $r0.58   ## bblock 33, line 654,  t84,  t1
	c0    ldw $r0.63 = 0x1c[$r0.1]  ## restore ## t81
;;								## 0
	c0    ldw $r0.58 = 0x20[$r0.1]  ## restore ## t76
;;								## 1
	c0    goto L132?3 ## goto
;;								## 2
.trace 24
L154?3:
	c0    goto L153?3 ## goto
;;								## 0
.trace 28
L147?3:
	c0    add $r0.2 = $r0.5, (~0x3)   ## bblock 55, line 0,  t102,  t94,  (~0x3)(I32)
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
	      ## goto
;;
	c0    goto L149?3 ## goto
;;								## 0
.trace 27
L146?3:
	c0    add $r0.2 = $r0.5, (~0x2)   ## bblock 58, line 0,  t102,  t94,  (~0x2)(I32)
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
	      ## goto
;;
	c0    goto L149?3 ## goto
;;								## 0
.trace 26
L145?3:
	c0    add $r0.2 = $r0.5, (~0x1)   ## bblock 61, line 0,  t102,  t94,  (~0x1)(I32)
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
	      ## goto
;;
	c0    goto L149?3 ## goto
;;								## 0
.trace 25
L144?3:
	c0    add $r0.2 = $r0.5, (~0x0)   ## bblock 64, line 0,  t102,  t94,  (~0x0)(I32)
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
	      ## goto
;;
	c0    goto L149?3 ## goto
;;								## 0
.trace 22
L143?3:
	c0    mov $r0.2 = $r0.5   ## bblock 65, line 0,  t102,  t94
	c0    stw 0x1c[$r0.1] = $r0.63  ## spill ## t81
;;								## 0
L149?3:
	c0    stw 0x20[$r0.1] = $r0.58  ## spill ## t76
;;								## 1
	c0    stw 0x14[$r0.1] = $r0.3  ## spill ## t1
;;								## 2
	c0    mov $r0.3 = $r0.57   ## t84
	c0    stw 0x24[$r0.1] = $r0.2  ## spill ## t102
;;								## 3
	c0    ldbu $r0.4 = 0[$r0.2]   ## bblock 30, line 646, t33(I8), t102
;;								## 4
.call search_dict, caller, arg($r0.3:u32,$r0.4:s32), ret($r0.3:u32)
	c0    call $l0.0 = search_dict   ## bblock 30, line 646,  raddr(search_dict)(P32),  t84,  t33(I8)
;;								## 5
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 31, line 646,  t174(I1),  t30,  0(SI32)
	c0    ldw $r0.2 = 0x24[$r0.1]  ## restore ## t102
	      xnop 1
;;								## 7
	c0    ldbu.d $r0.4 = 0[$r0.2]   ## [spec] bblock 38, line 647, t36(I8), t102
	c0    brf $b0.0, L154?3   ## bblock 31, line 646,  t174(I1)
;;								## 8
.call add_dict, caller, arg($r0.3:u32,$r0.4:s32), ret()
	c0    call $l0.0 = add_dict   ## bblock 38, line 647,  raddr(add_dict)(P32),  t84,  t36(I8)
	c0    mov $r0.3 = $r0.57   ## t84
;;								## 9
L153?3:
	c0    ldw $r0.57 = 0x24[$r0.1]  ## restore ## t102
;;								## 10
	c0    ldw $r0.58 = 0x14[$r0.1]  ## restore ## t1
;;								## 11
	c0    goto L150?3 ## goto
;;								## 12
.trace 11
L138?3:
	c0    mov $r0.3 = 8   ## 8(SI32)
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t1
;;								## 0
	c0    ldw $r0.4 = ((escape + 0) + 0)[$r0.0]   ## bblock 9, line 659, t51, 0(I32)
	      xnop 1
;;								## 2
	c0    cmpeq $b0.0 = $r0.2, $r0.4   ## bblock 9, line 659,  t160(I1),  t1,  t51
	      xnop 1
;;								## 4
	c0    brf $b0.0, L155?3   ## bblock 9, line 659,  t160(I1)
;;								## 5
.call getcode, caller, arg($r0.3:s32), ret($r0.3:s32)
	c0    call $l0.0 = getcode   ## bblock 16, line 661,  raddr(getcode)(P32),  8(SI32)
;;								## 6
	c0    cmpeq $b0.0 = $r0.3, $r0.0   ## bblock 17, line 675,  t162(I1),  t52,  0(SI32)
	c0    mov $r0.2 = 1   ## 1(SI32)
	      xnop 1
;;								## 8
	c0    brf $b0.0, L156?3   ## bblock 17, line 675,  t162(I1)
;;								## 9
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.2   ## bblock 24, line 664, 0(I32), 1(SI32)
	c0    goto L132?3 ## goto
;;								## 10
.trace 16
L156?3:
	c0    cmpeq $b0.0 = $r0.3, 1   ## bblock 18, line 675,  t163(I1),  t52,  1(SI32)
	c0    ldw.d $r0.4 = ((escape + 0) + 0)[$r0.0]   ## [spec] bblock 23, line 676, t56, 0(I32)
;;								## 0
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t1
;;								## 1
	c0    add $r0.4 = $r0.4, 51   ## [spec] bblock 23, line 676,  t57,  t56,  51(SI32)
	c0    brf $b0.0, L157?3   ## bblock 18, line 675,  t163(I1)
;;								## 2
	c0    cmplt $b0.0 = $r0.4, $r0.0   ## bblock 23, line 676,  t165,  t57,  0(I32)
	c0    add $r0.5 = $r0.4, 255   ## bblock 23, line 676,  t166,  t57,  255(I32)
;;								## 3
	c0    slct $r0.5 = $b0.0, $r0.5, $r0.4   ## bblock 23, line 676,  t167,  t165,  t166,  t57
;;								## 4
	c0    shr $r0.5 = $r0.5, 8   ## bblock 23, line 676,  t168,  t167,  8(I32)
;;								## 5
	c0    shl $r0.5 = $r0.5, 8   ## bblock 23, line 676,  t169,  t168,  8(I32)
;;								## 6
	c0    sub $r0.4 = $r0.4, $r0.5   ## bblock 23, line 676,  t58,  t57,  t169
;;								## 7
	c0    stw ((escape + 0) + 0)[$r0.0] = $r0.4   ## bblock 23, line 676, 0(I32), t58
;;								## 8
.trace 12
L155?3:
	c0    mov $r0.3 = $r0.2   ## t1
	c0    stw 0x14[$r0.1] = $r0.2  ## spill ## t1
;;								## 0
.call putdata, caller, arg($r0.3:s32), ret()
	c0    call $l0.0 = putdata   ## bblock 10, line 678,  raddr(putdata)(P32),  t1
;;								## 1
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t1
	c0    mov $r0.3 = $r0.57   ## t84
	      xnop 1
;;								## 3
.call search_dict, caller, arg($r0.3:u32,$r0.4:u32), ret($r0.3:u32)
	c0    zxtb $r0.4 = $r0.2   ## bblock 11, line 679,  t63(I8),  t1
	c0    call $l0.0 = search_dict   ## bblock 11, line 679,  raddr(search_dict)(P32),  t84,  t63(I8)
;;								## 4
	c0    cmpne $b0.0 = $r0.3, $r0.0   ## bblock 12, line 680,  t161(I1),  t60,  0(SI32)
	      xnop 1
;;								## 6
	c0    brf $b0.0, L158?3   ## bblock 12, line 680,  t161(I1)
;;								## 7
	c0    mov $r0.57 = $r0.3   ## bblock 15, line 679,  t84,  t60
	c0    goto L132?3 ## goto
;;								## 8
.trace 15
L158?3:
	c0    mov $r0.3 = $r0.57   ## t84
	c0    ldw $r0.2 = 0x14[$r0.1]  ## restore ## t1
	      xnop 1
;;								## 1
.call add_dict, caller, arg($r0.3:u32,$r0.4:u32), ret()
	c0    zxtb $r0.4 = $r0.2   ## bblock 13, line 685,  t68(I8),  t1
	c0    call $l0.0 = add_dict   ## bblock 13, line 685,  raddr(add_dict)(P32),  t84,  t68(I8)
;;								## 2
	c0    ldw $r0.3 = 0x14[$r0.1]  ## restore ## t1
	      xnop 1
;;								## 4
	c0    add $r0.57 = $r0.3, 3   ## bblock 14, line 686,  t84,  t1,  3(SI32)
	c0    goto L132?3 ## goto
;;								## 5
.trace 19
L157?3:
	c0    cmpeq $b0.0 = $r0.3, 2   ## bblock 19, line 675,  t164(I1),  t52,  2(SI32)
	      xnop 1
;;								## 1
	c0    brf $b0.0, L159?3   ## bblock 19, line 675,  t164(I1)
;;								## 2
.call init_dict, caller, arg(), ret()
	c0    call $l0.0 = init_dict   ## bblock 21, line 667,  raddr(init_dict)(P32)
;;								## 3
	c0    mov $r0.57 = $r0.0   ## bblock 22, line 668,  t84,  0(SI32)
	c0    goto L132?3 ## goto
;;								## 4
.trace 23
L159?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 20, line 673,  raddr(puts)(P32),  addr(_?1STRINGVAR.2)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.2 + 0)   ## addr(_?1STRINGVAR.2)(P32)
;;								## 0
	c0    goto L132?3 ## goto
;;								## 1
.trace 30
L136?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 46, line 610,  raddr(puts)(P32),  addr(_?1STRINGVAR.1)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.1 + 0)   ## addr(_?1STRINGVAR.1)(P32)
;;								## 0
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t71
;;								## 1
	c0    ldw $r0.57 = 0x18[$r0.1]  ## restore ## t75
	      xnop 1
;;								## 3
.return ret()
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 47, line 611,  t72,  ?2.21?2auto_size(I32),  t71
;;								## 4
.trace 18
L133?3:
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t71
;;								## 0
	c0    ldw $r0.57 = 0x18[$r0.1]  ## restore ## t75
	      xnop 1
;;								## 2
.return ret()
	c0    return $r0.1 = $r0.1, (0x40), $l0.0   ## bblock 49, line 613,  t72,  ?2.21?2auto_size(I32),  t71
;;								## 3
.endp
.section .bss
_?1PACKET.39:
    .skip 251
.section .data
_?1STRINGPACKET.1:
    .data1 100
    .data1 101
    .data1 99
    .data1 111
    .data1 100
    .data1 101
    .data1 58
    .data1 32
    .data1 101
    .data1 114
    .data1 114
    .data1 111
    .data1 114
    .data1 32
    .data1 99
    .data1 111
    .data1 100
    .data1 101
    .data1 32
    .data1 105
    .data1 110
    .data1 32
    .data1 105
    .data1 110
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 101
    .data1 97
    .data1 109
    .data1 0
.skip 1
_?1STRINGPACKET.2:
    .data1 100
    .data1 101
    .data1 99
    .data1 111
    .data1 100
    .data1 101
    .data1 58
    .data1 32
    .data1 101
    .data1 115
    .data1 99
    .data1 97
    .data1 112
    .data1 101
    .data1 32
    .data1 101
    .data1 114
    .data1 114
    .data1 111
    .data1 114
    .data1 32
    .data1 105
    .data1 110
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 101
    .data1 97
    .data1 109
    .data1 0
.equ ?2.21?2scratch.0, 0x0
.equ ?2.21?2ras_p, 0x10
.equ ?2.21?2spill_p, 0x14
.section .data
.section .text
.equ ?2.21?2auto_size, 0x40
 ## End decode
 ## Begin main
.section .text
.proc
.entry caller, sp=$r0.1, rl=$l0.0, asize=-32, arg($r0.3:s32,$r0.4:u32)
main::
.trace 3
	c0    add $r0.1 = $r0.1, (-0x20)
;;								## 0
	c0    mov $r0.3 = (outbuf + 0)   ## addr(outbuf?1.0)(P32)
	c0    stw 0x10[$r0.1] = $l0.0  ## spill ## t26
;;								## 1
	c0    stw ((_?1PACKET.21 + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 695, 0(I32), 0x0(P32)
;;								## 2
	c0    stw ((_?1PACKET.20 + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 695, 0(I32), 0x0(P32)
;;								## 3
	c0    stw ((compress + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 696, 0(I32), 0(SI32)
;;								## 4
	c0    stw ((escape + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 696, 0(I32), 0(SI32)
;;								## 5
	c0    stw ((eaddr + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 696, 0(I32), 0(SI32)
;;								## 6
	c0    stw ((baddr + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 696, 0(I32), 0(SI32)
;;								## 7
	c0    stw ((codedone + 0) + 0)[$r0.0] = $r0.0   ## bblock 0, line 696, 0(I32), 0(SI32)
;;								## 8
.call encode, caller, arg(), ret()
	c0    stw ((eout + 0) + 0)[$r0.0] = $r0.3   ## bblock 0, line 697, 0(I32), addr(outbuf?1.0)(P32)
	c0    call $l0.0 = encode   ## bblock 0, line 698,  raddr(encode)(P32)
;;								## 9
.call decode, caller, arg(), ret()
	c0    call $l0.0 = decode   ## bblock 1, line 699,  raddr(decode)(P32)
;;								## 10
	c0    mov $r0.12 = ((inbuf + 0) + 7)   ## bblock 2, line 0,  t94,  (addr(inbuf?1.0)(P32) + 0x7(I32))(P32)
	c0    ldw $r0.17 = 0x10[$r0.1]  ## restore ## t26
;;								## 11
	c0    mov $r0.11 = ((inbuf + 0) + 6)   ## bblock 2, line 0,  t93,  (addr(inbuf?1.0)(P32) + 0x6(I32))(P32)
;;								## 12
	c0    mov $r0.10 = ((inbuf + 0) + 5)   ## bblock 2, line 0,  t92,  (addr(inbuf?1.0)(P32) + 0x5(I32))(P32)
;;								## 13
	c0    mov $r0.9 = ((inbuf + 0) + 4)   ## bblock 2, line 0,  t91,  (addr(inbuf?1.0)(P32) + 0x4(I32))(P32)
;;								## 14
	c0    mov $r0.8 = ((inbuf + 0) + 3)   ## bblock 2, line 0,  t90,  (addr(inbuf?1.0)(P32) + 0x3(I32))(P32)
;;								## 15
	c0    mov $r0.7 = ((inbuf + 0) + 2)   ## bblock 2, line 0,  t89,  (addr(inbuf?1.0)(P32) + 0x2(I32))(P32)
;;								## 16
	c0    mov $r0.6 = ((inbuf + 0) + 1)   ## bblock 2, line 0,  t95,  (addr(inbuf?1.0)(P32) + 0x1(I32))(P32)
;;								## 17
	c0    mov $r0.4 = (outbuf + 0)   ## bblock 2, line 697,  t48,  addr(outbuf?1.0)(P32)
;;								## 18
	c0    mov $r0.2 = (inbuf + 0)   ## bblock 2, line 700,  t47,  addr(inbuf?1.0)(P32)
;;								## 19
.trace 1
L160?3:
	c0    cmpgeu $r0.5 = $r0.2, ((inbuf + 0) + 7554)   ## bblock 3, line 700,  t56(I1),  t47,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
	c0    ldbu.d $r0.3 = 0[$r0.2]   ## [spec] bblock 3, line 702, t57(I8), t47
;;								## 0
	c0    ldbu.d $r0.13 = 0[$r0.4]   ## [spec] bblock 3, line 702, t58(I8), t48
	c0    cmpgeu $r0.14 = $r0.6, ((inbuf + 0) + 7554)   ## [spec] bblock 9, line 700-1,  t83(I1),  t95,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 1
	c0    ldbu.d $r0.15 = 0[$r0.6]   ## [spec] bblock 9, line 702-1, t84(I8), t95
	c0    cmpgeu $r0.16 = $r0.7, ((inbuf + 0) + 7554)   ## [spec] bblock 28, line 700-2,  t77(I1),  t89,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 2
	c0    cmpne $r0.3 = $r0.3, $r0.13   ## bblock 3, line 702,  t50(I1),  t57(I8),  t58(I8)
	c0    ldbu.d $r0.13 = 1[$r0.4]   ## [spec] bblock 9, line 702-1, t85(I8), t48
;;								## 3
	c0    norl $b0.0 = $r0.5, $r0.3   ## bblock 3, line 700,  t145(I1),  t56(I1),  t50(I1)
	c0    ldbu.d $r0.3 = 0[$r0.7]   ## [spec] bblock 28, line 702-2, t78(I8), t89
;;								## 4
	c0    cmpne $r0.15 = $r0.15, $r0.13   ## [spec] bblock 9, line 702-1,  t86(I1),  t84(I8),  t85(I8)
	c0    ldbu.d $r0.5 = 2[$r0.4]   ## [spec] bblock 28, line 702-2, t79(I8), t48
;;								## 5
	c0    norl $b0.0 = $r0.14, $r0.15   ## [spec] bblock 9, line 700-1,  t147(I1),  t83(I1),  t86(I1)
	c0    brf $b0.0, L161?3   ## bblock 3, line 700,  t145(I1)
;;								## 6
	c0    cmpne $r0.3 = $r0.3, $r0.5   ## [spec] bblock 28, line 702-2,  t80(I1),  t78(I8),  t79(I8)
	c0    ldbu.d $r0.5 = 0[$r0.8]   ## [spec] bblock 25, line 702-3, t72(I8), t90
;;								## 7
	c0    norl $b0.0 = $r0.16, $r0.3   ## [spec] bblock 28, line 700-2,  t153(I1),  t77(I1),  t80(I1)
	c0    brf $b0.0, L162?3   ## bblock 9, line 700-1,  t147(I1)
;;								## 8
	c0    cmpgeu $r0.13 = $r0.8, ((inbuf + 0) + 7554)   ## [spec] bblock 25, line 700-3,  t71(I1),  t90,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
	c0    ldbu.d $r0.3 = 3[$r0.4]   ## [spec] bblock 25, line 702-3, t73(I8), t48
;;								## 9
	c0    ldbu.d $r0.14 = 0[$r0.9]   ## [spec] bblock 22, line 702-4, t53(I8), t91
	c0    brf $b0.0, L163?3   ## bblock 28, line 700-2,  t153(I1)
;;								## 10
	c0    cmpne $r0.5 = $r0.5, $r0.3   ## bblock 25, line 702-3,  t74(I1),  t72(I8),  t73(I8)
	c0    ldbu.d $r0.3 = 4[$r0.4]   ## [spec] bblock 22, line 702-4, t67(I8), t48
;;								## 11
	c0    norl $b0.0 = $r0.13, $r0.5   ## bblock 25, line 700-3,  t152(I1),  t71(I1),  t74(I1)
	c0    cmpgeu $r0.5 = $r0.9, ((inbuf + 0) + 7554)   ## [spec] bblock 22, line 700-4,  t63(I1),  t91,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 12
	c0    cmpne $r0.14 = $r0.14, $r0.3   ## [spec] bblock 22, line 702-4,  t68(I1),  t53(I8),  t67(I8)
	c0    ldbu.d $r0.3 = 0[$r0.10]   ## [spec] bblock 19, line 702-5, t15(I8), t92
;;								## 13
	c0    norl $b0.0 = $r0.5, $r0.14   ## [spec] bblock 22, line 700-4,  t151(I1),  t63(I1),  t68(I1)
	c0    brf $b0.0, L164?3   ## bblock 25, line 700-3,  t152(I1)
;;								## 14
	c0    cmpgeu $r0.13 = $r0.10, ((inbuf + 0) + 7554)   ## [spec] bblock 19, line 700-5,  t64(I1),  t92,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
	c0    ldbu.d $r0.5 = 5[$r0.4]   ## [spec] bblock 19, line 702-5, t17(I8), t48
;;								## 15
	c0    ldbu.d $r0.14 = 0[$r0.11]   ## [spec] bblock 16, line 702-6, t55(I8), t93
	c0    brf $b0.0, L165?3   ## bblock 22, line 700-4,  t151(I1)
;;								## 16
	c0    cmpne $r0.3 = $r0.3, $r0.5   ## bblock 19, line 702-5,  t45(I1),  t15(I8),  t17(I8)
	c0    ldbu.d $r0.5 = 6[$r0.4]   ## [spec] bblock 16, line 702-6, t54(I8), t48
;;								## 17
	c0    norl $b0.0 = $r0.13, $r0.3   ## bblock 19, line 700-5,  t150(I1),  t64(I1),  t45(I1)
	c0    cmpgeu $r0.3 = $r0.11, ((inbuf + 0) + 7554)   ## [spec] bblock 16, line 700-6,  t44(I1),  t93,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
;;								## 18
	c0    cmpne $r0.14 = $r0.14, $r0.5   ## [spec] bblock 16, line 702-6,  t49(I1),  t55(I8),  t54(I8)
	c0    ldbu.d $r0.5 = 0[$r0.12]   ## [spec] bblock 13, line 702-7, t61(I8), t94
;;								## 19
	c0    norl $b0.0 = $r0.3, $r0.14   ## [spec] bblock 16, line 700-6,  t149(I1),  t44(I1),  t49(I1)
	c0    brf $b0.0, L166?3   ## bblock 19, line 700-5,  t150(I1)
;;								## 20
	c0    cmpgeu $r0.13 = $r0.12, ((inbuf + 0) + 7554)   ## [spec] bblock 13, line 700-7,  t62(I1),  t94,  (addr(inbuf?1.0)(P32) + 0x1d82(I32))(P32)
	c0    ldbu.d $r0.3 = 7[$r0.4]   ## [spec] bblock 13, line 702-7, t60(I8), t48
;;								## 21
	c0    add $r0.2 = $r0.2, 8   ## [spec] bblock 11, line 700-7,  t47,  t47,  8(SI32)
	c0    brf $b0.0, L167?3   ## bblock 16, line 700-6,  t149(I1)
;;								## 22
	c0    cmpne $r0.5 = $r0.5, $r0.3   ## bblock 13, line 702-7,  t59(I1),  t61(I8),  t60(I8)
	c0    add $r0.7 = $r0.7, 8   ## [spec] bblock 11, line 0,  t89,  t89,  8(I32)
;;								## 23
	c0    norl $b0.0 = $r0.13, $r0.5   ## bblock 13, line 700-7,  t148(I1),  t62(I1),  t59(I1)
	c0    add $r0.8 = $r0.8, 8   ## [spec] bblock 11, line 0,  t90,  t90,  8(I32)
;;								## 24
	c0    add $r0.10 = $r0.10, 8   ## [spec] bblock 11, line 0,  t92,  t92,  8(I32)
	c0    add $r0.9 = $r0.9, 8   ## [spec] bblock 11, line 0,  t91,  t91,  8(I32)
;;								## 25
	c0    add $r0.11 = $r0.11, 8   ## [spec] bblock 11, line 0,  t93,  t93,  8(I32)
	c0    brf $b0.0, L168?3   ## bblock 13, line 700-7,  t148(I1)
;;								## 26
	c0    add $r0.12 = $r0.12, 8   ## bblock 11, line 0,  t94,  t94,  8(I32)
	c0    add $r0.4 = $r0.4, 8   ## bblock 11, line 700-7,  t48,  t48,  8(SI32)
;;								## 27
	c0    add $r0.6 = $r0.6, 8   ## bblock 11, line 0,  t95,  t95,  8(I32)
	c0    goto L160?3 ## goto
;;								## 28
.trace 12
L168?3:
	c0    add $r0.4 = $r0.4, 7   ## bblock 10, line 0,  t42,  t48,  7(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 5
L171?3:
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 5, line 710,  raddr(puts)(P32),  addr(_?1STRINGVAR.4)(P32)
	c0    mov $r0.3 = (_?1STRINGPACKET.4 + 0)   ## addr(_?1STRINGVAR.4)(P32)
;;								## 0
	c0    goto L170?3 ## goto
;;								## 1
.trace 11
L167?3:
	c0    add $r0.4 = $r0.4, 6   ## bblock 14, line 0,  t42,  t48,  6(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 10
L166?3:
	c0    add $r0.4 = $r0.4, 5   ## bblock 17, line 0,  t42,  t48,  5(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 9
L165?3:
	c0    add $r0.4 = $r0.4, 4   ## bblock 20, line 0,  t42,  t48,  4(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 8
L164?3:
	c0    add $r0.4 = $r0.4, 3   ## bblock 23, line 0,  t42,  t48,  3(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 7
L163?3:
	c0    add $r0.4 = $r0.4, 2   ## bblock 26, line 0,  t42,  t48,  2(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 6
L162?3:
	c0    add $r0.4 = $r0.4, 1   ## bblock 29, line 0,  t42,  t48,  1(I32)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
	      ## goto
;;
	c0    goto L169?3 ## goto
;;								## 0
.trace 4
L161?3:
	   ## bblock 30, line 0,  t42,  t48## $r0.4(skipped)
	c0    stw 0x10[$r0.1] = $r0.17  ## spill ## t26
;;								## 0
L169?3:
	c0    ldw $r0.2 = ((eout + 0) + 0)[$r0.0]   ## bblock 4, line 705, t19, 0(I32)
;;								## 1
	c0    mov $r0.3 = (_?1STRINGPACKET.3 + 0)   ## addr(_?1STRINGVAR.3)(P32)
;;								## 2
	c0    cmpne $b0.0 = $r0.4, $r0.2   ## bblock 4, line 705,  t146(I1),  t42,  t19
	      xnop 1
;;								## 4
	c0    brf $b0.0, L171?3   ## bblock 4, line 705,  t146(I1)
;;								## 5
.call puts, caller, arg($r0.3:u32), ret($r0.3:s32)
	c0    call $l0.0 = puts   ## bblock 7, line 707,  raddr(puts)(P32),  addr(_?1STRINGVAR.3)(P32)
;;								## 6
L170?3:
	c0    mov $r0.3 = $r0.0   ## 0(SI32)
	c0    ldw $l0.0 = 0x10[$r0.1]  ## restore ## t26
	      xnop 2
;;								## 9
.return ret($r0.3:s32)
	c0    return $r0.1 = $r0.1, (0x20), $l0.0   ## bblock 6, line 712,  t27,  ?2.22?2auto_size(I32),  t26
;;								## 10
.endp
.section .bss
.section .data
.skip 2
_?1STRINGPACKET.4:
    .data1 118
    .data1 52
    .data1 50
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
.skip 2
_?1STRINGPACKET.3:
    .data1 118
    .data1 52
    .data1 50
    .data1 58
    .data1 32
    .data1 102
    .data1 97
    .data1 105
    .data1 108
    .data1 10
    .data1 0
.equ ?2.22?2scratch.0, 0x0
.equ ?2.22?2ras_p, 0x10
.section .data
.section .text
.equ ?2.22?2auto_size, 0x20
 ## End main
.section .bss
.skip 1
_?1PACKET.20:
    .skip 4
_?1PACKET.21:
    .skip 4
.section .data
.skip 1
inbuf::
    .data1 37
    .data1 33
    .data1 80
    .data1 83
    .data1 45
    .data1 65
    .data1 100
    .data1 111
    .data1 98
    .data1 101
    .data1 45
    .data1 50
    .data1 46
    .data1 48
    .data1 10
    .data1 37
    .data1 37
    .data1 67
    .data1 114
    .data1 101
    .data1 97
    .data1 116
    .data1 111
    .data1 114
    .data1 58
    .data1 32
    .data1 100
    .data1 118
    .data1 105
    .data1 112
    .data1 115
    .data1 107
    .data1 32
    .data1 53
    .data1 46
    .data1 53
    .data1 56
    .data1 97
    .data1 32
    .data1 67
    .data1 111
    .data1 112
    .data1 121
    .data1 114
    .data1 105
    .data1 103
    .data1 104
    .data1 116
    .data1 32
    .data1 49
    .data1 57
    .data1 56
    .data1 54
    .data1 44
    .data1 32
    .data1 49
    .data1 57
    .data1 57
    .data1 52
    .data1 32
    .data1 82
    .data1 97
    .data1 100
    .data1 105
    .data1 99
    .data1 97
    .data1 108
    .data1 32
    .data1 69
    .data1 121
    .data1 101
    .data1 32
    .data1 83
    .data1 111
    .data1 102
    .data1 116
    .data1 119
    .data1 97
    .data1 114
    .data1 101
    .data1 10
    .data1 37
    .data1 37
    .data1 84
    .data1 105
    .data1 116
    .data1 108
    .data1 101
    .data1 58
    .data1 32
    .data1 115
    .data1 101
    .data1 115
    .data1 116
    .data1 101
    .data1 109
    .data1 112
    .data1 108
    .data1 97
    .data1 116
    .data1 101
    .data1 46
    .data1 100
    .data1 118
    .data1 105
    .data1 10
    .data1 37
    .data1 37
    .data1 80
    .data1 97
    .data1 103
    .data1 101
    .data1 115
    .data1 58
    .data1 32
    .data1 49
    .data1 10
    .data1 37
    .data1 37
    .data1 80
    .data1 97
    .data1 103
    .data1 101
    .data1 79
    .data1 114
    .data1 100
    .data1 101
    .data1 114
    .data1 58
    .data1 32
    .data1 65
    .data1 115
    .data1 99
    .data1 101
    .data1 110
    .data1 100
    .data1 10
    .data1 37
    .data1 37
    .data1 66
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 105
    .data1 110
    .data1 103
    .data1 66
    .data1 111
    .data1 120
    .data1 58
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 54
    .data1 49
    .data1 50
    .data1 32
    .data1 55
    .data1 57
    .data1 50
    .data1 10
    .data1 37
    .data1 37
    .data1 68
    .data1 111
    .data1 99
    .data1 117
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 115
    .data1 58
    .data1 32
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 66
    .data1 111
    .data1 108
    .data1 100
    .data1 32
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 82
    .data1 111
    .data1 109
    .data1 97
    .data1 110
    .data1 32
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 66
    .data1 111
    .data1 108
    .data1 100
    .data1 73
    .data1 116
    .data1 97
    .data1 108
    .data1 105
    .data1 99
    .data1 32
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 73
    .data1 116
    .data1 97
    .data1 108
    .data1 105
    .data1 99
    .data1 10
    .data1 37
    .data1 37
    .data1 68
    .data1 111
    .data1 99
    .data1 117
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 80
    .data1 97
    .data1 112
    .data1 101
    .data1 114
    .data1 83
    .data1 105
    .data1 122
    .data1 101
    .data1 115
    .data1 58
    .data1 32
    .data1 76
    .data1 101
    .data1 116
    .data1 116
    .data1 101
    .data1 114
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 67
    .data1 111
    .data1 109
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 115
    .data1 10
    .data1 37
    .data1 68
    .data1 86
    .data1 73
    .data1 80
    .data1 83
    .data1 67
    .data1 111
    .data1 109
    .data1 109
    .data1 97
    .data1 110
    .data1 100
    .data1 76
    .data1 105
    .data1 110
    .data1 101
    .data1 58
    .data1 32
    .data1 100
    .data1 118
    .data1 105
    .data1 112
    .data1 115
    .data1 32
    .data1 115
    .data1 101
    .data1 115
    .data1 116
    .data1 101
    .data1 109
    .data1 112
    .data1 108
    .data1 97
    .data1 116
    .data1 101
    .data1 46
    .data1 100
    .data1 118
    .data1 105
    .data1 10
    .data1 37
    .data1 68
    .data1 86
    .data1 73
    .data1 80
    .data1 83
    .data1 80
    .data1 97
    .data1 114
    .data1 97
    .data1 109
    .data1 101
    .data1 116
    .data1 101
    .data1 114
    .data1 115
    .data1 58
    .data1 32
    .data1 100
    .data1 112
    .data1 105
    .data1 61
    .data1 51
    .data1 48
    .data1 48
    .data1 44
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 112
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 101
    .data1 100
    .data1 44
    .data1 32
    .data1 99
    .data1 111
    .data1 109
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 115
    .data1 32
    .data1 114
    .data1 101
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 100
    .data1 10
    .data1 37
    .data1 68
    .data1 86
    .data1 73
    .data1 80
    .data1 83
    .data1 83
    .data1 111
    .data1 117
    .data1 114
    .data1 99
    .data1 101
    .data1 58
    .data1 32
    .data1 32
    .data1 84
    .data1 101
    .data1 88
    .data1 32
    .data1 111
    .data1 117
    .data1 116
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 49
    .data1 57
    .data1 57
    .data1 54
    .data1 46
    .data1 48
    .data1 49
    .data1 46
    .data1 50
    .data1 53
    .data1 58
    .data1 50
    .data1 50
    .data1 48
    .data1 52
    .data1 10
    .data1 37
    .data1 37
    .data1 66
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 80
    .data1 114
    .data1 111
    .data1 99
    .data1 83
    .data1 101
    .data1 116
    .data1 58
    .data1 32
    .data1 116
    .data1 101
    .data1 120
    .data1 99
    .data1 46
    .data1 112
    .data1 114
    .data1 111
    .data1 10
    .data1 47
    .data1 84
    .data1 101
    .data1 88
    .data1 68
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 50
    .data1 53
    .data1 48
    .data1 32
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 84
    .data1 101
    .data1 88
    .data1 68
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 47
    .data1 78
    .data1 123
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 47
    .data1 66
    .data1 123
    .data1 98
    .data1 105
    .data1 110
    .data1 100
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 83
    .data1 123
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 125
    .data1 78
    .data1 10
    .data1 47
    .data1 88
    .data1 123
    .data1 83
    .data1 32
    .data1 78
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 84
    .data1 82
    .data1 123
    .data1 116
    .data1 114
    .data1 97
    .data1 110
    .data1 115
    .data1 108
    .data1 97
    .data1 116
    .data1 101
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 105
    .data1 115
    .data1 108
    .data1 115
    .data1 32
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 118
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 49
    .data1 49
    .data1 32
    .data1 55
    .data1 50
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 104
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 56
    .data1 46
    .data1 53
    .data1 32
    .data1 55
    .data1 50
    .data1 10
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 108
    .data1 97
    .data1 110
    .data1 100
    .data1 112
    .data1 108
    .data1 117
    .data1 115
    .data1 57
    .data1 48
    .data1 123
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 47
    .data1 64
    .data1 114
    .data1 105
    .data1 103
    .data1 105
    .data1 110
    .data1 123
    .data1 105
    .data1 115
    .data1 108
    .data1 115
    .data1 123
    .data1 91
    .data1 48
    .data1 32
    .data1 108
    .data1 97
    .data1 110
    .data1 100
    .data1 112
    .data1 108
    .data1 117
    .data1 115
    .data1 57
    .data1 48
    .data1 123
    .data1 49
    .data1 32
    .data1 45
    .data1 49
    .data1 125
    .data1 123
    .data1 45
    .data1 49
    .data1 32
    .data1 49
    .data1 125
    .data1 10
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 93
    .data1 99
    .data1 111
    .data1 110
    .data1 99
    .data1 97
    .data1 116
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 55
    .data1 50
    .data1 32
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 55
    .data1 50
    .data1 32
    .data1 86
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 32
    .data1 115
    .data1 99
    .data1 97
    .data1 108
    .data1 101
    .data1 10
    .data1 105
    .data1 115
    .data1 108
    .data1 115
    .data1 123
    .data1 108
    .data1 97
    .data1 110
    .data1 100
    .data1 112
    .data1 108
    .data1 117
    .data1 115
    .data1 57
    .data1 48
    .data1 123
    .data1 86
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 55
    .data1 50
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 118
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 48
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 125
    .data1 123
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 45
    .data1 55
    .data1 50
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 10
    .data1 104
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 48
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 84
    .data1 82
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 86
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 118
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 45
    .data1 55
    .data1 50
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 10
    .data1 84
    .data1 82
    .data1 91
    .data1 109
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 32
    .data1 99
    .data1 117
    .data1 114
    .data1 114
    .data1 101
    .data1 110
    .data1 116
    .data1 109
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 97
    .data1 98
    .data1 115
    .data1 32
    .data1 48
    .data1 46
    .data1 48
    .data1 48
    .data1 48
    .data1 48
    .data1 49
    .data1 32
    .data1 108
    .data1 116
    .data1 123
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 125
    .data1 105
    .data1 102
    .data1 125
    .data1 10
    .data1 102
    .data1 111
    .data1 114
    .data1 97
    .data1 108
    .data1 108
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 93
    .data1 115
    .data1 101
    .data1 116
    .data1 109
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 64
    .data1 108
    .data1 97
    .data1 110
    .data1 100
    .data1 115
    .data1 99
    .data1 97
    .data1 112
    .data1 101
    .data1 123
    .data1 47
    .data1 105
    .data1 115
    .data1 108
    .data1 115
    .data1 32
    .data1 116
    .data1 114
    .data1 117
    .data1 101
    .data1 32
    .data1 78
    .data1 125
    .data1 66
    .data1 10
    .data1 47
    .data1 64
    .data1 109
    .data1 97
    .data1 110
    .data1 117
    .data1 97
    .data1 108
    .data1 102
    .data1 101
    .data1 101
    .data1 100
    .data1 123
    .data1 115
    .data1 116
    .data1 97
    .data1 116
    .data1 117
    .data1 115
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 47
    .data1 109
    .data1 97
    .data1 110
    .data1 117
    .data1 97
    .data1 108
    .data1 102
    .data1 101
    .data1 101
    .data1 100
    .data1 32
    .data1 116
    .data1 114
    .data1 117
    .data1 101
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 64
    .data1 99
    .data1 111
    .data1 112
    .data1 105
    .data1 101
    .data1 115
    .data1 123
    .data1 47
    .data1 35
    .data1 99
    .data1 111
    .data1 112
    .data1 105
    .data1 101
    .data1 115
    .data1 32
    .data1 88
    .data1 125
    .data1 66
    .data1 10
    .data1 47
    .data1 70
    .data1 77
    .data1 97
    .data1 116
    .data1 91
    .data1 49
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 93
    .data1 78
    .data1 32
    .data1 47
    .data1 70
    .data1 66
    .data1 66
    .data1 91
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 93
    .data1 78
    .data1 32
    .data1 47
    .data1 110
    .data1 110
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 73
    .data1 69
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 100
    .data1 102
    .data1 45
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 123
    .data1 10
    .data1 47
    .data1 110
    .data1 110
    .data1 32
    .data1 56
    .data1 32
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 78
    .data1 32
    .data1 110
    .data1 110
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 47
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 84
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 51
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 77
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 32
    .data1 102
    .data1 110
    .data1 116
    .data1 114
    .data1 120
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 66
    .data1 66
    .data1 111
    .data1 120
    .data1 32
    .data1 70
    .data1 66
    .data1 66
    .data1 32
    .data1 78
    .data1 10
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 47
    .data1 98
    .data1 97
    .data1 115
    .data1 101
    .data1 32
    .data1 88
    .data1 32
    .data1 97
    .data1 114
    .data1 114
    .data1 97
    .data1 121
    .data1 32
    .data1 47
    .data1 66
    .data1 105
    .data1 116
    .data1 77
    .data1 97
    .data1 112
    .data1 115
    .data1 32
    .data1 88
    .data1 32
    .data1 47
    .data1 66
    .data1 117
    .data1 105
    .data1 108
    .data1 100
    .data1 67
    .data1 104
    .data1 97
    .data1 114
    .data1 123
    .data1 67
    .data1 104
    .data1 97
    .data1 114
    .data1 66
    .data1 117
    .data1 105
    .data1 108
    .data1 100
    .data1 101
    .data1 114
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 69
    .data1 110
    .data1 99
    .data1 111
    .data1 100
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 73
    .data1 69
    .data1 32
    .data1 78
    .data1 10
    .data1 101
    .data1 110
    .data1 100
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 123
    .data1 47
    .data1 102
    .data1 111
    .data1 111
    .data1 32
    .data1 115
    .data1 101
    .data1 116
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 125
    .data1 50
    .data1 32
    .data1 97
    .data1 114
    .data1 114
    .data1 97
    .data1 121
    .data1 32
    .data1 99
    .data1 111
    .data1 112
    .data1 121
    .data1 32
    .data1 99
    .data1 118
    .data1 120
    .data1 32
    .data1 78
    .data1 32
    .data1 108
    .data1 111
    .data1 97
    .data1 100
    .data1 32
    .data1 48
    .data1 32
    .data1 110
    .data1 110
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 47
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 91
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 100
    .data1 102
    .data1 123
    .data1 10
    .data1 47
    .data1 115
    .data1 102
    .data1 32
    .data1 49
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 102
    .data1 110
    .data1 116
    .data1 114
    .data1 120
    .data1 32
    .data1 70
    .data1 77
    .data1 97
    .data1 116
    .data1 32
    .data1 78
    .data1 32
    .data1 100
    .data1 102
    .data1 45
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 100
    .data1 102
    .data1 115
    .data1 123
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 47
    .data1 115
    .data1 102
    .data1 32
    .data1 88
    .data1 32
    .data1 47
    .data1 102
    .data1 110
    .data1 116
    .data1 114
    .data1 120
    .data1 91
    .data1 115
    .data1 102
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 115
    .data1 102
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 93
    .data1 10
    .data1 78
    .data1 32
    .data1 100
    .data1 102
    .data1 45
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 69
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 110
    .data1 110
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 32
    .data1 115
    .data1 101
    .data1 116
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 119
    .data1 105
    .data1 100
    .data1 116
    .data1 104
    .data1 123
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 10
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 53
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 104
    .data1 101
    .data1 105
    .data1 103
    .data1 104
    .data1 116
    .data1 123
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 52
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 120
    .data1 111
    .data1 102
    .data1 102
    .data1 123
    .data1 10
    .data1 49
    .data1 50
    .data1 56
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 51
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 121
    .data1 111
    .data1 102
    .data1 102
    .data1 123
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 50
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 10
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 49
    .data1 50
    .data1 55
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 120
    .data1 123
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 105
    .data1 109
    .data1 97
    .data1 103
    .data1 101
    .data1 123
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 10
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 47
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 110
    .data1 101
    .data1 123
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 47
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 78
    .data1 125
    .data1 105
    .data1 102
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 105
    .data1 100
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 114
    .data1 119
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 10
    .data1 47
    .data1 114
    .data1 99
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 103
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 99
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 71
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 115
    .data1 102
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 67
    .data1 104
    .data1 97
    .data1 114
    .data1 66
    .data1 117
    .data1 105
    .data1 108
    .data1 100
    .data1 101
    .data1 114
    .data1 123
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 51
    .data1 32
    .data1 49
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 32
    .data1 83
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 10
    .data1 47
    .data1 98
    .data1 97
    .data1 115
    .data1 101
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 50
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 83
    .data1 32
    .data1 47
    .data1 66
    .data1 105
    .data1 116
    .data1 77
    .data1 97
    .data1 112
    .data1 115
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 83
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 97
    .data1 116
    .data1 97
    .data1 32
    .data1 88
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 47
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 100
    .data1 120
    .data1 10
    .data1 48
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 120
    .data1 111
    .data1 102
    .data1 102
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 121
    .data1 111
    .data1 102
    .data1 102
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 104
    .data1 101
    .data1 105
    .data1 103
    .data1 104
    .data1 116
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 120
    .data1 111
    .data1 102
    .data1 102
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 119
    .data1 105
    .data1 100
    .data1 116
    .data1 104
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 121
    .data1 111
    .data1 102
    .data1 102
    .data1 10
    .data1 115
    .data1 101
    .data1 116
    .data1 99
    .data1 97
    .data1 99
    .data1 104
    .data1 101
    .data1 100
    .data1 101
    .data1 118
    .data1 105
    .data1 99
    .data1 101
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 119
    .data1 105
    .data1 100
    .data1 116
    .data1 104
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 104
    .data1 101
    .data1 105
    .data1 103
    .data1 104
    .data1 116
    .data1 32
    .data1 116
    .data1 114
    .data1 117
    .data1 101
    .data1 91
    .data1 49
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 45
    .data1 46
    .data1 49
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 120
    .data1 111
    .data1 102
    .data1 102
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 121
    .data1 111
    .data1 102
    .data1 102
    .data1 10
    .data1 46
    .data1 49
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 93
    .data1 47
    .data1 105
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 105
    .data1 109
    .data1 97
    .data1 103
    .data1 101
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 104
    .data1 45
    .data1 119
    .data1 105
    .data1 100
    .data1 116
    .data1 104
    .data1 32
    .data1 55
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 56
    .data1 32
    .data1 105
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 114
    .data1 99
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 103
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 10
    .data1 47
    .data1 99
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 123
    .data1 114
    .data1 99
    .data1 32
    .data1 48
    .data1 32
    .data1 110
    .data1 101
    .data1 123
    .data1 114
    .data1 99
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 47
    .data1 114
    .data1 99
    .data1 32
    .data1 88
    .data1 32
    .data1 114
    .data1 119
    .data1 125
    .data1 123
    .data1 71
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 105
    .data1 109
    .data1 97
    .data1 103
    .data1 101
    .data1 109
    .data1 97
    .data1 115
    .data1 107
    .data1 32
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 71
    .data1 123
    .data1 123
    .data1 105
    .data1 100
    .data1 10
    .data1 103
    .data1 112
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 47
    .data1 103
    .data1 112
    .data1 32
    .data1 103
    .data1 112
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 78
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 109
    .data1 111
    .data1 100
    .data1 32
    .data1 83
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 105
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 112
    .data1 108
    .data1 32
    .data1 83
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 101
    .data1 120
    .data1 101
    .data1 99
    .data1 125
    .data1 108
    .data1 111
    .data1 111
    .data1 112
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 97
    .data1 100
    .data1 118
    .data1 123
    .data1 99
    .data1 112
    .data1 10
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 47
    .data1 99
    .data1 112
    .data1 32
    .data1 88
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 104
    .data1 103
    .data1 123
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 112
    .data1 32
    .data1 105
    .data1 100
    .data1 32
    .data1 103
    .data1 112
    .data1 32
    .data1 52
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 103
    .data1 112
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 10
    .data1 47
    .data1 103
    .data1 112
    .data1 32
    .data1 88
    .data1 32
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 110
    .data1 100
    .data1 123
    .data1 47
    .data1 99
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 114
    .data1 119
    .data1 32
    .data1 101
    .data1 120
    .data1 105
    .data1 116
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 108
    .data1 115
    .data1 104
    .data1 123
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 112
    .data1 32
    .data1 50
    .data1 32
    .data1 99
    .data1 111
    .data1 112
    .data1 121
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 101
    .data1 113
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 49
    .data1 125
    .data1 123
    .data1 10
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 50
    .data1 53
    .data1 53
    .data1 32
    .data1 101
    .data1 113
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 50
    .data1 53
    .data1 52
    .data1 125
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 50
    .data1 53
    .data1 53
    .data1 32
    .data1 97
    .data1 110
    .data1 100
    .data1 32
    .data1 83
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 110
    .data1 100
    .data1 32
    .data1 111
    .data1 114
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 49
    .data1 10
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 114
    .data1 115
    .data1 104
    .data1 123
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 112
    .data1 32
    .data1 50
    .data1 32
    .data1 99
    .data1 111
    .data1 112
    .data1 121
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 101
    .data1 113
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 49
    .data1 50
    .data1 56
    .data1 125
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 50
    .data1 53
    .data1 53
    .data1 32
    .data1 101
    .data1 113
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 49
    .data1 50
    .data1 55
    .data1 125
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 50
    .data1 10
    .data1 105
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 83
    .data1 32
    .data1 49
    .data1 50
    .data1 56
    .data1 32
    .data1 97
    .data1 110
    .data1 100
    .data1 32
    .data1 111
    .data1 114
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 108
    .data1 114
    .data1 123
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 112
    .data1 32
    .data1 50
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 10
    .data1 112
    .data1 117
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 32
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 115
    .data1 101
    .data1 116
    .data1 123
    .data1 114
    .data1 119
    .data1 32
    .data1 99
    .data1 112
    .data1 32
    .data1 102
    .data1 105
    .data1 108
    .data1 108
    .data1 115
    .data1 116
    .data1 114
    .data1 32
    .data1 48
    .data1 32
    .data1 52
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 10
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 102
    .data1 105
    .data1 108
    .data1 108
    .data1 115
    .data1 116
    .data1 114
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 48
    .data1 32
    .data1 49
    .data1 32
    .data1 49
    .data1 55
    .data1 123
    .data1 50
    .data1 32
    .data1 99
    .data1 111
    .data1 112
    .data1 121
    .data1 32
    .data1 50
    .data1 53
    .data1 53
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 125
    .data1 102
    .data1 111
    .data1 114
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 112
    .data1 108
    .data1 91
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 49
    .data1 32
    .data1 99
    .data1 104
    .data1 103
    .data1 125
    .data1 10
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 49
    .data1 32
    .data1 99
    .data1 104
    .data1 103
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 103
    .data1 125
    .data1 123
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 99
    .data1 104
    .data1 103
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 108
    .data1 115
    .data1 104
    .data1 125
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 108
    .data1 115
    .data1 104
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 114
    .data1 115
    .data1 104
    .data1 125
    .data1 123
    .data1 10
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 114
    .data1 115
    .data1 104
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 97
    .data1 100
    .data1 118
    .data1 125
    .data1 123
    .data1 47
    .data1 114
    .data1 99
    .data1 32
    .data1 88
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 115
    .data1 101
    .data1 116
    .data1 125
    .data1 123
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 99
    .data1 108
    .data1 114
    .data1 125
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 50
    .data1 32
    .data1 99
    .data1 104
    .data1 103
    .data1 125
    .data1 123
    .data1 97
    .data1 100
    .data1 118
    .data1 32
    .data1 50
    .data1 10
    .data1 99
    .data1 104
    .data1 103
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 110
    .data1 100
    .data1 125
    .data1 93
    .data1 100
    .data1 117
    .data1 112
    .data1 123
    .data1 98
    .data1 105
    .data1 110
    .data1 100
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 125
    .data1 102
    .data1 111
    .data1 114
    .data1 97
    .data1 108
    .data1 108
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 68
    .data1 123
    .data1 47
    .data1 99
    .data1 99
    .data1 32
    .data1 88
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 47
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 110
    .data1 101
    .data1 123
    .data1 93
    .data1 10
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 110
    .data1 110
    .data1 32
    .data1 47
    .data1 98
    .data1 97
    .data1 115
    .data1 101
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 99
    .data1 99
    .data1 32
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 110
    .data1 110
    .data1 32
    .data1 47
    .data1 66
    .data1 105
    .data1 116
    .data1 77
    .data1 97
    .data1 112
    .data1 115
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 83
    .data1 32
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 83
    .data1 32
    .data1 115
    .data1 102
    .data1 32
    .data1 49
    .data1 32
    .data1 110
    .data1 101
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 10
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 50
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 83
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 115
    .data1 102
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 47
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 99
    .data1 116
    .data1 114
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 78
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 73
    .data1 123
    .data1 10
    .data1 99
    .data1 99
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 68
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 98
    .data1 111
    .data1 112
    .data1 123
    .data1 117
    .data1 115
    .data1 101
    .data1 114
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 47
    .data1 98
    .data1 111
    .data1 112
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 32
    .data1 107
    .data1 110
    .data1 111
    .data1 119
    .data1 110
    .data1 123
    .data1 98
    .data1 111
    .data1 112
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 47
    .data1 83
    .data1 73
    .data1 32
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 78
    .data1 32
    .data1 64
    .data1 114
    .data1 105
    .data1 103
    .data1 105
    .data1 110
    .data1 10
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 32
    .data1 47
    .data1 86
    .data1 32
    .data1 109
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 32
    .data1 99
    .data1 117
    .data1 114
    .data1 114
    .data1 101
    .data1 110
    .data1 116
    .data1 109
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 49
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 48
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 10
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 46
    .data1 57
    .data1 57
    .data1 32
    .data1 108
    .data1 116
    .data1 123
    .data1 47
    .data1 81
    .data1 86
    .data1 125
    .data1 123
    .data1 47
    .data1 82
    .data1 86
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 108
    .data1 111
    .data1 97
    .data1 100
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 101
    .data1 111
    .data1 112
    .data1 123
    .data1 83
    .data1 73
    .data1 32
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 32
    .data1 117
    .data1 115
    .data1 101
    .data1 114
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 10
    .data1 47
    .data1 101
    .data1 111
    .data1 112
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 32
    .data1 107
    .data1 110
    .data1 111
    .data1 119
    .data1 110
    .data1 123
    .data1 101
    .data1 111
    .data1 112
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 115
    .data1 104
    .data1 111
    .data1 119
    .data1 112
    .data1 97
    .data1 103
    .data1 101
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 64
    .data1 115
    .data1 116
    .data1 97
    .data1 114
    .data1 116
    .data1 123
    .data1 117
    .data1 115
    .data1 101
    .data1 114
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 47
    .data1 115
    .data1 116
    .data1 97
    .data1 114
    .data1 116
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 10
    .data1 107
    .data1 110
    .data1 111
    .data1 119
    .data1 110
    .data1 123
    .data1 115
    .data1 116
    .data1 97
    .data1 114
    .data1 116
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 125
    .data1 105
    .data1 102
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 47
    .data1 86
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 88
    .data1 32
    .data1 47
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 88
    .data1 32
    .data1 49
    .data1 48
    .data1 48
    .data1 48
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 47
    .data1 68
    .data1 86
    .data1 73
    .data1 109
    .data1 97
    .data1 103
    .data1 32
    .data1 88
    .data1 10
    .data1 47
    .data1 73
    .data1 69
    .data1 32
    .data1 50
    .data1 53
    .data1 54
    .data1 32
    .data1 97
    .data1 114
    .data1 114
    .data1 97
    .data1 121
    .data1 32
    .data1 78
    .data1 32
    .data1 48
    .data1 32
    .data1 49
    .data1 32
    .data1 50
    .data1 53
    .data1 53
    .data1 123
    .data1 73
    .data1 69
    .data1 32
    .data1 83
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 51
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 32
    .data1 99
    .data1 118
    .data1 110
    .data1 32
    .data1 112
    .data1 117
    .data1 116
    .data1 125
    .data1 102
    .data1 111
    .data1 114
    .data1 10
    .data1 54
    .data1 53
    .data1 55
    .data1 56
    .data1 49
    .data1 46
    .data1 55
    .data1 54
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 47
    .data1 118
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 88
    .data1 32
    .data1 54
    .data1 53
    .data1 55
    .data1 56
    .data1 49
    .data1 46
    .data1 55
    .data1 54
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 47
    .data1 104
    .data1 115
    .data1 105
    .data1 122
    .data1 101
    .data1 32
    .data1 88
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 112
    .data1 123
    .data1 115
    .data1 104
    .data1 111
    .data1 119
    .data1 125
    .data1 78
    .data1 32
    .data1 47
    .data1 82
    .data1 77
    .data1 97
    .data1 116
    .data1 91
    .data1 49
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 48
    .data1 10
    .data1 48
    .data1 93
    .data1 78
    .data1 32
    .data1 47
    .data1 66
    .data1 68
    .data1 111
    .data1 116
    .data1 32
    .data1 50
    .data1 54
    .data1 48
    .data1 32
    .data1 115
    .data1 116
    .data1 114
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 121
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 118
    .data1 123
    .data1 47
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 121
    .data1 32
    .data1 88
    .data1 32
    .data1 47
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 88
    .data1 32
    .data1 86
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 86
    .data1 10
    .data1 123
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 82
    .data1 86
    .data1 32
    .data1 115
    .data1 116
    .data1 97
    .data1 116
    .data1 117
    .data1 115
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 47
    .data1 112
    .data1 114
    .data1 111
    .data1 100
    .data1 117
    .data1 99
    .data1 116
    .data1 32
    .data1 119
    .data1 104
    .data1 101
    .data1 114
    .data1 101
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 112
    .data1 114
    .data1 111
    .data1 100
    .data1 117
    .data1 99
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 55
    .data1 32
    .data1 103
    .data1 101
    .data1 123
    .data1 48
    .data1 32
    .data1 55
    .data1 10
    .data1 103
    .data1 101
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 40
    .data1 68
    .data1 105
    .data1 115
    .data1 112
    .data1 108
    .data1 97
    .data1 121
    .data1 41
    .data1 101
    .data1 113
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 48
    .data1 32
    .data1 52
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 114
    .data1 118
    .data1 97
    .data1 108
    .data1 40
    .data1 78
    .data1 101
    .data1 88
    .data1 84
    .data1 41
    .data1 101
    .data1 113
    .data1 32
    .data1 111
    .data1 114
    .data1 125
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 10
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 123
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 101
    .data1 110
    .data1 100
    .data1 123
    .data1 123
    .data1 103
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 84
    .data1 82
    .data1 32
    .data1 45
    .data1 46
    .data1 49
    .data1 32
    .data1 46
    .data1 49
    .data1 32
    .data1 84
    .data1 82
    .data1 32
    .data1 49
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 99
    .data1 97
    .data1 108
    .data1 101
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 121
    .data1 32
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 10
    .data1 82
    .data1 77
    .data1 97
    .data1 116
    .data1 123
    .data1 66
    .data1 68
    .data1 111
    .data1 116
    .data1 125
    .data1 105
    .data1 109
    .data1 97
    .data1 103
    .data1 101
    .data1 109
    .data1 97
    .data1 115
    .data1 107
    .data1 32
    .data1 103
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 125
    .data1 125
    .data1 123
    .data1 123
    .data1 103
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 84
    .data1 82
    .data1 32
    .data1 45
    .data1 46
    .data1 49
    .data1 32
    .data1 46
    .data1 49
    .data1 32
    .data1 84
    .data1 82
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 121
    .data1 32
    .data1 115
    .data1 99
    .data1 97
    .data1 108
    .data1 101
    .data1 32
    .data1 49
    .data1 32
    .data1 49
    .data1 10
    .data1 102
    .data1 97
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 82
    .data1 77
    .data1 97
    .data1 116
    .data1 123
    .data1 66
    .data1 68
    .data1 111
    .data1 116
    .data1 125
    .data1 105
    .data1 109
    .data1 97
    .data1 103
    .data1 101
    .data1 109
    .data1 97
    .data1 115
    .data1 107
    .data1 32
    .data1 103
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 125
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 32
    .data1 66
    .data1 32
    .data1 47
    .data1 81
    .data1 86
    .data1 123
    .data1 103
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 110
    .data1 101
    .data1 119
    .data1 112
    .data1 97
    .data1 116
    .data1 104
    .data1 32
    .data1 116
    .data1 114
    .data1 97
    .data1 110
    .data1 115
    .data1 102
    .data1 111
    .data1 114
    .data1 109
    .data1 10
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 114
    .data1 111
    .data1 117
    .data1 110
    .data1 100
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 105
    .data1 116
    .data1 114
    .data1 97
    .data1 110
    .data1 115
    .data1 102
    .data1 111
    .data1 114
    .data1 109
    .data1 32
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 48
    .data1 32
    .data1 114
    .data1 108
    .data1 105
    .data1 110
    .data1 101
    .data1 116
    .data1 111
    .data1 32
    .data1 48
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 121
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 10
    .data1 114
    .data1 108
    .data1 105
    .data1 110
    .data1 101
    .data1 116
    .data1 111
    .data1 32
    .data1 114
    .data1 117
    .data1 108
    .data1 101
    .data1 120
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 32
    .data1 48
    .data1 32
    .data1 114
    .data1 108
    .data1 105
    .data1 110
    .data1 101
    .data1 116
    .data1 111
    .data1 32
    .data1 102
    .data1 105
    .data1 108
    .data1 108
    .data1 32
    .data1 103
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 97
    .data1 123
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 100
    .data1 101
    .data1 108
    .data1 116
    .data1 97
    .data1 32
    .data1 48
    .data1 32
    .data1 78
    .data1 32
    .data1 47
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 10
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 47
    .data1 100
    .data1 101
    .data1 108
    .data1 116
    .data1 97
    .data1 32
    .data1 88
    .data1 32
    .data1 48
    .data1 32
    .data1 114
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 77
    .data1 123
    .data1 83
    .data1 32
    .data1 112
    .data1 32
    .data1 100
    .data1 101
    .data1 108
    .data1 116
    .data1 97
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 98
    .data1 123
    .data1 83
    .data1 32
    .data1 112
    .data1 32
    .data1 116
    .data1 97
    .data1 105
    .data1 108
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 99
    .data1 123
    .data1 45
    .data1 52
    .data1 32
    .data1 77
    .data1 125
    .data1 10
    .data1 66
    .data1 32
    .data1 47
    .data1 100
    .data1 123
    .data1 45
    .data1 51
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 101
    .data1 123
    .data1 45
    .data1 50
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 102
    .data1 123
    .data1 45
    .data1 49
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 103
    .data1 123
    .data1 48
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 104
    .data1 123
    .data1 49
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 105
    .data1 123
    .data1 50
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 106
    .data1 123
    .data1 51
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 107
    .data1 123
    .data1 10
    .data1 52
    .data1 32
    .data1 77
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 119
    .data1 123
    .data1 48
    .data1 32
    .data1 114
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 108
    .data1 123
    .data1 112
    .data1 32
    .data1 45
    .data1 52
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 109
    .data1 123
    .data1 112
    .data1 32
    .data1 45
    .data1 51
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 110
    .data1 123
    .data1 112
    .data1 32
    .data1 45
    .data1 50
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 111
    .data1 123
    .data1 112
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 113
    .data1 123
    .data1 10
    .data1 112
    .data1 32
    .data1 49
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 114
    .data1 123
    .data1 112
    .data1 32
    .data1 50
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 115
    .data1 123
    .data1 112
    .data1 32
    .data1 51
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 116
    .data1 123
    .data1 112
    .data1 32
    .data1 52
    .data1 32
    .data1 119
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 120
    .data1 123
    .data1 48
    .data1 32
    .data1 83
    .data1 32
    .data1 114
    .data1 109
    .data1 111
    .data1 118
    .data1 101
    .data1 116
    .data1 111
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 121
    .data1 123
    .data1 51
    .data1 32
    .data1 50
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 32
    .data1 112
    .data1 10
    .data1 97
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 98
    .data1 111
    .data1 115
    .data1 123
    .data1 47
    .data1 83
    .data1 83
    .data1 32
    .data1 115
    .data1 97
    .data1 118
    .data1 101
    .data1 32
    .data1 78
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 101
    .data1 111
    .data1 115
    .data1 123
    .data1 83
    .data1 83
    .data1 32
    .data1 114
    .data1 101
    .data1 115
    .data1 116
    .data1 111
    .data1 114
    .data1 101
    .data1 125
    .data1 66
    .data1 32
    .data1 101
    .data1 110
    .data1 100
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 80
    .data1 114
    .data1 111
    .data1 99
    .data1 83
    .data1 101
    .data1 116
    .data1 10
    .data1 37
    .data1 37
    .data1 66
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 80
    .data1 114
    .data1 111
    .data1 99
    .data1 83
    .data1 101
    .data1 116
    .data1 58
    .data1 32
    .data1 116
    .data1 101
    .data1 120
    .data1 112
    .data1 115
    .data1 46
    .data1 112
    .data1 114
    .data1 111
    .data1 10
    .data1 84
    .data1 101
    .data1 88
    .data1 68
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 47
    .data1 114
    .data1 102
    .data1 123
    .data1 102
    .data1 105
    .data1 110
    .data1 100
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 108
    .data1 101
    .data1 110
    .data1 103
    .data1 116
    .data1 104
    .data1 32
    .data1 49
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 32
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 123
    .data1 49
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 47
    .data1 70
    .data1 73
    .data1 68
    .data1 32
    .data1 110
    .data1 101
    .data1 32
    .data1 50
    .data1 10
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 47
    .data1 85
    .data1 110
    .data1 105
    .data1 113
    .data1 117
    .data1 101
    .data1 73
    .data1 68
    .data1 32
    .data1 110
    .data1 101
    .data1 32
    .data1 97
    .data1 110
    .data1 100
    .data1 123
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 102
    .data1 111
    .data1 114
    .data1 97
    .data1 108
    .data1 108
    .data1 91
    .data1 49
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 48
    .data1 32
    .data1 54
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 10
    .data1 101
    .data1 120
    .data1 101
    .data1 99
    .data1 32
    .data1 48
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 53
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 32
    .data1 86
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 32
    .data1 48
    .data1 32
    .data1 48
    .data1 93
    .data1 47
    .data1 77
    .data1 101
    .data1 116
    .data1 114
    .data1 105
    .data1 99
    .data1 115
    .data1 10
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 69
    .data1 110
    .data1 99
    .data1 111
    .data1 100
    .data1 105
    .data1 110
    .data1 103
    .data1 123
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 47
    .data1 105
    .data1 110
    .data1 116
    .data1 101
    .data1 103
    .data1 101
    .data1 114
    .data1 116
    .data1 121
    .data1 112
    .data1 101
    .data1 32
    .data1 110
    .data1 101
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 112
    .data1 111
    .data1 112
    .data1 32
    .data1 49
    .data1 32
    .data1 115
    .data1 117
    .data1 98
    .data1 10
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 108
    .data1 101
    .data1 123
    .data1 112
    .data1 111
    .data1 112
    .data1 125
    .data1 123
    .data1 91
    .data1 125
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 123
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 77
    .data1 97
    .data1 116
    .data1 114
    .data1 105
    .data1 120
    .data1 32
    .data1 48
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 77
    .data1 101
    .data1 116
    .data1 114
    .data1 105
    .data1 99
    .data1 115
    .data1 32
    .data1 48
    .data1 32
    .data1 103
    .data1 101
    .data1 116
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 10
    .data1 105
    .data1 102
    .data1 101
    .data1 108
    .data1 115
    .data1 101
    .data1 125
    .data1 102
    .data1 111
    .data1 114
    .data1 97
    .data1 108
    .data1 108
    .data1 32
    .data1 77
    .data1 101
    .data1 116
    .data1 114
    .data1 105
    .data1 99
    .data1 115
    .data1 32
    .data1 47
    .data1 77
    .data1 101
    .data1 116
    .data1 114
    .data1 105
    .data1 99
    .data1 115
    .data1 32
    .data1 99
    .data1 117
    .data1 114
    .data1 114
    .data1 101
    .data1 110
    .data1 116
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 101
    .data1 110
    .data1 100
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 91
    .data1 50
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 99
    .data1 117
    .data1 114
    .data1 114
    .data1 101
    .data1 110
    .data1 116
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 10
    .data1 101
    .data1 110
    .data1 100
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 105
    .data1 110
    .data1 101
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 32
    .data1 51
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 32
    .data1 109
    .data1 97
    .data1 107
    .data1 101
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 32
    .data1 47
    .data1 115
    .data1 101
    .data1 116
    .data1 102
    .data1 111
    .data1 110
    .data1 116
    .data1 32
    .data1 108
    .data1 111
    .data1 97
    .data1 100
    .data1 93
    .data1 99
    .data1 118
    .data1 120
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 10
    .data1 47
    .data1 79
    .data1 98
    .data1 108
    .data1 105
    .data1 113
    .data1 117
    .data1 101
    .data1 83
    .data1 108
    .data1 97
    .data1 110
    .data1 116
    .data1 123
    .data1 100
    .data1 117
    .data1 112
    .data1 32
    .data1 115
    .data1 105
    .data1 110
    .data1 32
    .data1 83
    .data1 32
    .data1 99
    .data1 111
    .data1 115
    .data1 32
    .data1 100
    .data1 105
    .data1 118
    .data1 32
    .data1 110
    .data1 101
    .data1 103
    .data1 125
    .data1 66
    .data1 32
    .data1 47
    .data1 83
    .data1 108
    .data1 97
    .data1 110
    .data1 116
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 123
    .data1 52
    .data1 32
    .data1 105
    .data1 110
    .data1 100
    .data1 101
    .data1 120
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 97
    .data1 100
    .data1 100
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 10
    .data1 47
    .data1 69
    .data1 120
    .data1 116
    .data1 101
    .data1 110
    .data1 100
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 123
    .data1 51
    .data1 32
    .data1 45
    .data1 49
    .data1 32
    .data1 114
    .data1 111
    .data1 108
    .data1 108
    .data1 32
    .data1 109
    .data1 117
    .data1 108
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 32
    .data1 47
    .data1 82
    .data1 101
    .data1 69
    .data1 110
    .data1 99
    .data1 111
    .data1 100
    .data1 101
    .data1 70
    .data1 111
    .data1 110
    .data1 116
    .data1 123
    .data1 47
    .data1 69
    .data1 110
    .data1 99
    .data1 111
    .data1 100
    .data1 105
    .data1 110
    .data1 103
    .data1 32
    .data1 101
    .data1 120
    .data1 99
    .data1 104
    .data1 32
    .data1 100
    .data1 101
    .data1 102
    .data1 125
    .data1 100
    .data1 101
    .data1 102
    .data1 10
    .data1 101
    .data1 110
    .data1 100
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 80
    .data1 114
    .data1 111
    .data1 99
    .data1 83
    .data1 101
    .data1 116
    .data1 10
    .data1 84
    .data1 101
    .data1 88
    .data1 68
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 32
    .data1 52
    .data1 48
    .data1 50
    .data1 53
    .data1 56
    .data1 52
    .data1 51
    .data1 49
    .data1 32
    .data1 53
    .data1 50
    .data1 48
    .data1 57
    .data1 57
    .data1 49
    .data1 52
    .data1 54
    .data1 32
    .data1 49
    .data1 48
    .data1 48
    .data1 48
    .data1 32
    .data1 51
    .data1 48
    .data1 48
    .data1 32
    .data1 51
    .data1 48
    .data1 48
    .data1 32
    .data1 40
    .data1 115
    .data1 101
    .data1 115
    .data1 116
    .data1 101
    .data1 109
    .data1 112
    .data1 108
    .data1 97
    .data1 116
    .data1 101
    .data1 46
    .data1 100
    .data1 118
    .data1 105
    .data1 41
    .data1 10
    .data1 64
    .data1 115
    .data1 116
    .data1 97
    .data1 114
    .data1 116
    .data1 32
    .data1 47
    .data1 70
    .data1 97
    .data1 32
    .data1 49
    .data1 51
    .data1 57
    .data1 91
    .data1 57
    .data1 32
    .data1 49
    .data1 51
    .data1 32
    .data1 51
    .data1 91
    .data1 49
    .data1 55
    .data1 32
    .data1 49
    .data1 55
    .data1 32
    .data1 52
    .data1 91
    .data1 57
    .data1 32
    .data1 49
    .data1 55
    .data1 32
    .data1 49
    .data1 91
    .data1 49
    .data1 49
    .data1 32
    .data1 49
    .data1 53
    .data1 32
    .data1 51
    .data1 91
    .data1 49
    .data1 53
    .data1 32
    .data1 49
    .data1 50
    .data1 91
    .data1 50
    .data1 48
    .data1 10
    .data1 51
    .data1 55
    .data1 91
    .data1 56
    .data1 32
    .data1 52
    .data1 54
    .data1 91
    .data1 123
    .data1 125
    .data1 49
    .data1 49
    .data1 32
    .data1 51
    .data1 51
    .data1 46
    .data1 51
    .data1 51
    .data1 51
    .data1 51
    .data1 51
    .data1 52
    .data1 32
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 82
    .data1 111
    .data1 109
    .data1 97
    .data1 110
    .data1 32
    .data1 114
    .data1 102
    .data1 32
    .data1 47
    .data1 70
    .data1 98
    .data1 32
    .data1 49
    .data1 32
    .data1 53
    .data1 48
    .data1 32
    .data1 100
    .data1 102
    .data1 60
    .data1 49
    .data1 50
    .data1 49
    .data1 56
    .data1 49
    .data1 50
    .data1 55
    .data1 56
    .data1 49
    .data1 50
    .data1 57
    .data1 56
    .data1 49
    .data1 50
    .data1 49
    .data1 56
    .data1 65
    .data1 67
    .data1 49
    .data1 50
    .data1 10
    .data1 70
    .data1 70
    .data1 48
    .data1 56
    .data1 49
    .data1 48
    .data1 55
    .data1 68
    .data1 56
    .data1 70
    .data1 48
    .data1 70
    .data1 62
    .data1 52
    .data1 57
    .data1 32
    .data1 68
    .data1 32
    .data1 69
    .data1 32
    .data1 47
    .data1 70
    .data1 99
    .data1 32
    .data1 49
    .data1 32
    .data1 49
    .data1 54
    .data1 32
    .data1 100
    .data1 102
    .data1 60
    .data1 69
    .data1 65
    .data1 48
    .data1 51
    .data1 67
    .data1 48
    .data1 69
    .data1 65
    .data1 48
    .data1 70
    .data1 70
    .data1 48
    .data1 69
    .data1 65
    .data1 49
    .data1 70
    .data1 70
    .data1 56
    .data1 69
    .data1 65
    .data1 51
    .data1 70
    .data1 70
    .data1 67
    .data1 69
    .data1 65
    .data1 55
    .data1 70
    .data1 70
    .data1 69
    .data1 65
    .data1 50
    .data1 66
    .data1 53
    .data1 70
    .data1 67
    .data1 65
    .data1 52
    .data1 69
    .data1 65
    .data1 10
    .data1 55
    .data1 70
    .data1 70
    .data1 69
    .data1 65
    .data1 50
    .data1 69
    .data1 65
    .data1 51
    .data1 70
    .data1 70
    .data1 67
    .data1 69
    .data1 65
    .data1 49
    .data1 70
    .data1 70
    .data1 56
    .data1 69
    .data1 65
    .data1 48
    .data1 70
    .data1 70
    .data1 48
    .data1 69
    .data1 65
    .data1 48
    .data1 51
    .data1 67
    .data1 48
    .data1 49
    .data1 48
    .data1 49
    .data1 48
    .data1 55
    .data1 69
    .data1 57
    .data1 49
    .data1 49
    .data1 53
    .data1 62
    .data1 49
    .data1 53
    .data1 32
    .data1 68
    .data1 32
    .data1 69
    .data1 32
    .data1 47
    .data1 70
    .data1 100
    .data1 32
    .data1 49
    .data1 10
    .data1 53
    .data1 48
    .data1 32
    .data1 100
    .data1 102
    .data1 60
    .data1 49
    .data1 50
    .data1 48
    .data1 67
    .data1 49
    .data1 50
    .data1 49
    .data1 67
    .data1 49
    .data1 50
    .data1 69
    .data1 67
    .data1 49
    .data1 50
    .data1 48
    .data1 67
    .data1 65
    .data1 70
    .data1 69
    .data1 65
    .data1 70
    .data1 70
    .data1 67
    .data1 48
    .data1 48
    .data1 65
    .data1 49
    .data1 51
    .data1 55
    .data1 68
    .data1 57
    .data1 50
    .data1 49
    .data1 49
    .data1 62
    .data1 52
    .data1 57
    .data1 32
    .data1 68
    .data1 32
    .data1 69
    .data1 32
    .data1 47
    .data1 70
    .data1 101
    .data1 32
    .data1 56
    .data1 49
    .data1 91
    .data1 50
    .data1 51
    .data1 10
    .data1 53
    .data1 50
    .data1 91
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 50
    .data1 32
    .data1 49
    .data1 54
    .data1 32
    .data1 49
    .data1 52
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 51
    .data1 50
    .data1 32
    .data1 49
    .data1 50
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 91
    .data1 49
    .data1 50
    .data1 32
    .data1 50
    .data1 49
    .data1 10
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 52
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 51
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 49
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 54
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 49
    .data1 91
    .data1 50
    .data1 56
    .data1 32
    .data1 56
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 51
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 49
    .data1 55
    .data1 91
    .data1 50
    .data1 49
    .data1 10
    .data1 49
    .data1 91
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 48
    .data1 32
    .data1 49
    .data1 91
    .data1 49
    .data1 48
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 49
    .data1 52
    .data1 32
    .data1 52
    .data1 48
    .data1 91
    .data1 123
    .data1 125
    .data1 51
    .data1 54
    .data1 32
    .data1 52
    .data1 49
    .data1 46
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 57
    .data1 32
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 82
    .data1 111
    .data1 109
    .data1 97
    .data1 110
    .data1 10
    .data1 114
    .data1 102
    .data1 32
    .data1 47
    .data1 70
    .data1 102
    .data1 32
    .data1 49
    .data1 51
    .data1 53
    .data1 91
    .data1 49
    .data1 56
    .data1 32
    .data1 51
    .data1 91
    .data1 49
    .data1 50
    .data1 32
    .data1 49
    .data1 54
    .data1 32
    .data1 49
    .data1 54
    .data1 32
    .data1 49
    .data1 91
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 51
    .data1 48
    .data1 32
    .data1 49
    .data1 50
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 50
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 10
    .data1 49
    .data1 50
    .data1 32
    .data1 49
    .data1 56
    .data1 32
    .data1 49
    .data1 91
    .data1 49
    .data1 56
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 50
    .data1 91
    .data1 50
    .data1 51
    .data1 32
    .data1 53
    .data1 91
    .data1 50
    .data1 56
    .data1 32
    .data1 50
    .data1 54
    .data1 91
    .data1 50
    .data1 49
    .data1 32
    .data1 52
    .data1 91
    .data1 49
    .data1 48
    .data1 32
    .data1 52
    .data1 54
    .data1 91
    .data1 123
    .data1 125
    .data1 50
    .data1 49
    .data1 32
    .data1 52
    .data1 49
    .data1 46
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 57
    .data1 10
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 73
    .data1 116
    .data1 97
    .data1 108
    .data1 105
    .data1 99
    .data1 32
    .data1 114
    .data1 102
    .data1 32
    .data1 47
    .data1 70
    .data1 103
    .data1 32
    .data1 49
    .data1 55
    .data1 49
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 50
    .data1 51
    .data1 32
    .data1 50
    .data1 56
    .data1 32
    .data1 49
    .data1 52
    .data1 91
    .data1 50
    .data1 56
    .data1 32
    .data1 50
    .data1 56
    .data1 32
    .data1 50
    .data1 56
    .data1 32
    .data1 54
    .data1 53
    .data1 91
    .data1 123
    .data1 125
    .data1 54
    .data1 10
    .data1 52
    .data1 49
    .data1 46
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 54
    .data1 57
    .data1 32
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 66
    .data1 111
    .data1 108
    .data1 100
    .data1 73
    .data1 116
    .data1 97
    .data1 108
    .data1 105
    .data1 99
    .data1 32
    .data1 114
    .data1 102
    .data1 32
    .data1 47
    .data1 70
    .data1 104
    .data1 32
    .data1 49
    .data1 51
    .data1 52
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 51
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 49
    .data1 52
    .data1 32
    .data1 49
    .data1 57
    .data1 10
    .data1 49
    .data1 55
    .data1 32
    .data1 49
    .data1 91
    .data1 50
    .data1 53
    .data1 32
    .data1 50
    .data1 53
    .data1 32
    .data1 50
    .data1 53
    .data1 32
    .data1 51
    .data1 57
    .data1 32
    .data1 49
    .data1 52
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 50
    .data1 53
    .data1 32
    .data1 50
    .data1 91
    .data1 50
    .data1 50
    .data1 32
    .data1 50
    .data1 53
    .data1 32
    .data1 50
    .data1 50
    .data1 32
    .data1 49
    .data1 91
    .data1 50
    .data1 50
    .data1 32
    .data1 54
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 54
    .data1 91
    .data1 50
    .data1 56
    .data1 10
    .data1 50
    .data1 91
    .data1 50
    .data1 56
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 54
    .data1 32
    .data1 52
    .data1 52
    .data1 32
    .data1 51
    .data1 91
    .data1 49
    .data1 55
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 54
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 51
    .data1 54
    .data1 32
    .data1 51
    .data1 51
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 54
    .data1 32
    .data1 49
    .data1 55
    .data1 91
    .data1 49
    .data1 52
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 50
    .data1 32
    .data1 52
    .data1 52
    .data1 91
    .data1 123
    .data1 125
    .data1 50
    .data1 57
    .data1 10
    .data1 53
    .data1 48
    .data1 46
    .data1 48
    .data1 48
    .data1 48
    .data1 48
    .data1 48
    .data1 49
    .data1 32
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 82
    .data1 111
    .data1 109
    .data1 97
    .data1 110
    .data1 32
    .data1 114
    .data1 102
    .data1 32
    .data1 47
    .data1 70
    .data1 105
    .data1 32
    .data1 49
    .data1 51
    .data1 52
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 51
    .data1 91
    .data1 51
    .data1 51
    .data1 32
    .data1 50
    .data1 48
    .data1 32
    .data1 50
    .data1 51
    .data1 32
    .data1 50
    .data1 55
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 51
    .data1 10
    .data1 51
    .data1 48
    .data1 32
    .data1 51
    .data1 51
    .data1 32
    .data1 53
    .data1 48
    .data1 32
    .data1 49
    .data1 55
    .data1 32
    .data1 50
    .data1 91
    .data1 49
    .data1 55
    .data1 32
    .data1 50
    .data1 91
    .data1 50
    .data1 48
    .data1 32
    .data1 50
    .data1 55
    .data1 32
    .data1 51
    .data1 51
    .data1 32
    .data1 50
    .data1 55
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 49
    .data1 50
    .data1 91
    .data1 52
    .data1 48
    .data1 32
    .data1 51
    .data1 51
    .data1 32
    .data1 52
    .data1 51
    .data1 32
    .data1 49
    .data1 91
    .data1 51
    .data1 55
    .data1 10
    .data1 54
    .data1 91
    .data1 50
    .data1 51
    .data1 32
    .data1 51
    .data1 91
    .data1 52
    .data1 48
    .data1 32
    .data1 50
    .data1 91
    .data1 52
    .data1 48
    .data1 32
    .data1 49
    .data1 52
    .data1 91
    .data1 51
    .data1 48
    .data1 32
    .data1 51
    .data1 48
    .data1 32
    .data1 51
    .data1 48
    .data1 32
    .data1 52
    .data1 57
    .data1 91
    .data1 123
    .data1 125
    .data1 50
    .data1 54
    .data1 32
    .data1 53
    .data1 57
    .data1 46
    .data1 57
    .data1 57
    .data1 57
    .data1 57
    .data1 55
    .data1 52
    .data1 32
    .data1 47
    .data1 84
    .data1 105
    .data1 109
    .data1 101
    .data1 115
    .data1 45
    .data1 66
    .data1 111
    .data1 108
    .data1 100
    .data1 10
    .data1 114
    .data1 102
    .data1 32
    .data1 101
    .data1 110
    .data1 100
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 80
    .data1 114
    .data1 111
    .data1 108
    .data1 111
    .data1 103
    .data1 10
    .data1 37
    .data1 37
    .data1 66
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 83
    .data1 101
    .data1 116
    .data1 117
    .data1 112
    .data1 10
    .data1 37
    .data1 37
    .data1 70
    .data1 101
    .data1 97
    .data1 116
    .data1 117
    .data1 114
    .data1 101
    .data1 58
    .data1 32
    .data1 42
    .data1 82
    .data1 101
    .data1 115
    .data1 111
    .data1 108
    .data1 117
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 32
    .data1 51
    .data1 48
    .data1 48
    .data1 100
    .data1 112
    .data1 105
    .data1 10
    .data1 84
    .data1 101
    .data1 88
    .data1 68
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 98
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 10
    .data1 37
    .data1 37
    .data1 80
    .data1 97
    .data1 112
    .data1 101
    .data1 114
    .data1 83
    .data1 105
    .data1 122
    .data1 101
    .data1 58
    .data1 32
    .data1 76
    .data1 101
    .data1 116
    .data1 116
    .data1 101
    .data1 114
    .data1 10
    .data1 37
    .data1 37
    .data1 66
    .data1 101
    .data1 103
    .data1 105
    .data1 110
    .data1 80
    .data1 97
    .data1 112
    .data1 101
    .data1 114
    .data1 83
    .data1 105
    .data1 122
    .data1 101
    .data1 58
    .data1 32
    .data1 76
    .data1 101
    .data1 116
    .data1 116
    .data1 101
    .data1 114
    .data1 10
    .data1 108
    .data1 101
    .data1 116
    .data1 116
    .data1 101
    .data1 114
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 80
    .data1 97
    .data1 112
    .data1 101
    .data1 114
    .data1 83
    .data1 105
    .data1 122
    .data1 101
    .data1 10
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 110
    .data1 100
    .data1 83
    .data1 101
    .data1 116
    .data1 117
    .data1 112
    .data1 10
    .data1 37
    .data1 37
    .data1 80
    .data1 97
    .data1 103
    .data1 101
    .data1 58
    .data1 32
    .data1 49
    .data1 32
    .data1 49
    .data1 10
    .data1 49
    .data1 32
    .data1 48
    .data1 32
    .data1 98
    .data1 111
    .data1 112
    .data1 32
    .data1 55
    .data1 56
    .data1 55
    .data1 32
    .data1 49
    .data1 55
    .data1 52
    .data1 32
    .data1 97
    .data1 32
    .data1 70
    .data1 105
    .data1 40
    .data1 83
    .data1 69
    .data1 83
    .data1 41
    .data1 49
    .data1 53
    .data1 32
    .data1 98
    .data1 40
    .data1 80
    .data1 97
    .data1 112
    .data1 101
    .data1 114
    .data1 41
    .data1 102
    .data1 40
    .data1 84
    .data1 41
    .data1 45
    .data1 53
    .data1 32
    .data1 98
    .data1 40
    .data1 101
    .data1 109
    .data1 112
    .data1 108
    .data1 97
    .data1 116
    .data1 101
    .data1 41
    .data1 57
    .data1 49
    .data1 52
    .data1 10
    .data1 50
    .data1 57
    .data1 53
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 104
    .data1 40
    .data1 65
    .data1 117
    .data1 116
    .data1 104
    .data1 111
    .data1 114
    .data1 41
    .data1 49
    .data1 49
    .data1 32
    .data1 98
    .data1 40
    .data1 78
    .data1 97
    .data1 109
    .data1 101
    .data1 41
    .data1 57
    .data1 51
    .data1 50
    .data1 32
    .data1 52
    .data1 49
    .data1 49
    .data1 32
    .data1 121
    .data1 40
    .data1 68
    .data1 101
    .data1 112
    .data1 97
    .data1 114
    .data1 116
    .data1 109
    .data1 101
    .data1 110
    .data1 116
    .data1 41
    .data1 56
    .data1 49
    .data1 55
    .data1 32
    .data1 52
    .data1 54
    .data1 57
    .data1 10
    .data1 121
    .data1 40
    .data1 77
    .data1 111
    .data1 116
    .data1 111
    .data1 114
    .data1 111
    .data1 108
    .data1 97
    .data1 41
    .data1 104
    .data1 40
    .data1 71
    .data1 114
    .data1 111
    .data1 117
    .data1 112
    .data1 47
    .data1 83
    .data1 101
    .data1 99
    .data1 116
    .data1 111
    .data1 114
    .data1 41
    .data1 57
    .data1 48
    .data1 51
    .data1 32
    .data1 53
    .data1 50
    .data1 55
    .data1 32
    .data1 121
    .data1 40
    .data1 67
    .data1 105
    .data1 116
    .data1 121
    .data1 41
    .data1 109
    .data1 40
    .data1 44
    .data1 41
    .data1 103
    .data1 40
    .data1 83
    .data1 116
    .data1 97
    .data1 116
    .data1 101
    .data1 41
    .data1 103
    .data1 40
    .data1 90
    .data1 73
    .data1 80
    .data1 41
    .data1 57
    .data1 48
    .data1 51
    .data1 10
    .data1 53
    .data1 56
    .data1 53
    .data1 32
    .data1 121
    .data1 40
    .data1 69
    .data1 109
    .data1 97
    .data1 105
    .data1 108
    .data1 41
    .data1 103
    .data1 40
    .data1 65
    .data1 100
    .data1 100
    .data1 114
    .data1 101
    .data1 115
    .data1 115
    .data1 41
    .data1 52
    .data1 48
    .data1 56
    .data1 32
    .data1 55
    .data1 52
    .data1 56
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 103
    .data1 40
    .data1 65
    .data1 66
    .data1 83
    .data1 84
    .data1 82
    .data1 65
    .data1 67
    .data1 84
    .data1 41
    .data1 48
    .data1 32
    .data1 56
    .data1 51
    .data1 57
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 102
    .data1 40
    .data1 84
    .data1 104
    .data1 101
    .data1 41
    .data1 104
    .data1 40
    .data1 116
    .data1 101
    .data1 120
    .data1 116
    .data1 41
    .data1 103
    .data1 40
    .data1 111
    .data1 102
    .data1 41
    .data1 10
    .data1 102
    .data1 40
    .data1 116
    .data1 104
    .data1 101
    .data1 41
    .data1 104
    .data1 40
    .data1 97
    .data1 98
    .data1 115
    .data1 116
    .data1 114
    .data1 97
    .data1 99
    .data1 116
    .data1 41
    .data1 102
    .data1 40
    .data1 103
    .data1 111
    .data1 101
    .data1 115
    .data1 41
    .data1 104
    .data1 40
    .data1 104
    .data1 101
    .data1 114
    .data1 41
    .data1 110
    .data1 40
    .data1 101
    .data1 46
    .data1 41
    .data1 50
    .data1 51
    .data1 32
    .data1 98
    .data1 40
    .data1 78
    .data1 111
    .data1 41
    .data1 49
    .data1 51
    .data1 32
    .data1 98
    .data1 40
    .data1 109
    .data1 111
    .data1 114
    .data1 41
    .data1 110
    .data1 40
    .data1 101
    .data1 41
    .data1 103
    .data1 40
    .data1 116
    .data1 104
    .data1 97
    .data1 110
    .data1 41
    .data1 102
    .data1 40
    .data1 51
    .data1 41
    .data1 104
    .data1 10
    .data1 40
    .data1 105
    .data1 110
    .data1 99
    .data1 104
    .data1 101
    .data1 115
    .data1 41
    .data1 103
    .data1 40
    .data1 111
    .data1 102
    .data1 41
    .data1 48
    .data1 32
    .data1 56
    .data1 56
    .data1 57
    .data1 32
    .data1 121
    .data1 40
    .data1 97
    .data1 98
    .data1 115
    .data1 116
    .data1 114
    .data1 97
    .data1 99
    .data1 116
    .data1 41
    .data1 99
    .data1 40
    .data1 116
    .data1 101
    .data1 120
    .data1 116
    .data1 41
    .data1 105
    .data1 40
    .data1 112
    .data1 108
    .data1 101
    .data1 97
    .data1 115
    .data1 101
    .data1 46
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 48
    .data1 50
    .data1 57
    .data1 10
    .data1 121
    .data1 32
    .data1 70
    .data1 105
    .data1 40
    .data1 49
    .data1 41
    .data1 54
    .data1 48
    .data1 32
    .data1 98
    .data1 40
    .data1 73
    .data1 110
    .data1 116
    .data1 114
    .data1 41
    .data1 111
    .data1 40
    .data1 111
    .data1 100
    .data1 117
    .data1 99
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 49
    .data1 52
    .data1 54
    .data1 32
    .data1 121
    .data1 40
    .data1 50
    .data1 41
    .data1 103
    .data1 40
    .data1 66
    .data1 111
    .data1 100
    .data1 121
    .data1 41
    .data1 49
    .data1 52
    .data1 32
    .data1 98
    .data1 40
    .data1 83
    .data1 101
    .data1 99
    .data1 116
    .data1 105
    .data1 111
    .data1 110
    .data1 115
    .data1 41
    .data1 48
    .data1 10
    .data1 49
    .data1 50
    .data1 51
    .data1 57
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 101
    .data1 40
    .data1 84
    .data1 104
    .data1 105
    .data1 115
    .data1 41
    .data1 100
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 102
    .data1 40
    .data1 97
    .data1 41
    .data1 105
    .data1 40
    .data1 98
    .data1 111
    .data1 100
    .data1 121
    .data1 41
    .data1 101
    .data1 40
    .data1 112
    .data1 97
    .data1 114
    .data1 97
    .data1 103
    .data1 114
    .data1 97
    .data1 112
    .data1 104
    .data1 46
    .data1 41
    .data1 49
    .data1 54
    .data1 32
    .data1 98
    .data1 40
    .data1 73
    .data1 116
    .data1 41
    .data1 49
    .data1 48
    .data1 10
    .data1 98
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 104
    .data1 40
    .data1 110
    .data1 111
    .data1 116
    .data1 41
    .data1 102
    .data1 40
    .data1 118
    .data1 101
    .data1 114
    .data1 121
    .data1 41
    .data1 104
    .data1 40
    .data1 108
    .data1 111
    .data1 110
    .data1 103
    .data1 44
    .data1 41
    .data1 102
    .data1 40
    .data1 98
    .data1 117
    .data1 116
    .data1 41
    .data1 103
    .data1 40
    .data1 108
    .data1 111
    .data1 110
    .data1 103
    .data1 41
    .data1 103
    .data1 40
    .data1 101
    .data1 110
    .data1 111
    .data1 117
    .data1 103
    .data1 104
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 50
    .data1 56
    .data1 57
    .data1 10
    .data1 121
    .data1 40
    .data1 116
    .data1 111
    .data1 41
    .data1 103
    .data1 40
    .data1 109
    .data1 97
    .data1 107
    .data1 101
    .data1 41
    .data1 104
    .data1 40
    .data1 105
    .data1 116
    .data1 41
    .data1 101
    .data1 40
    .data1 92
    .data1 50
    .data1 53
    .data1 54
    .data1 116
    .data1 41
    .data1 104
    .data1 40
    .data1 111
    .data1 110
    .data1 41
    .data1 103
    .data1 40
    .data1 109
    .data1 117
    .data1 108
    .data1 116
    .data1 105
    .data1 112
    .data1 108
    .data1 101
    .data1 41
    .data1 102
    .data1 40
    .data1 108
    .data1 105
    .data1 110
    .data1 101
    .data1 115
    .data1 46
    .data1 41
    .data1 49
    .data1 50
    .data1 53
    .data1 10
    .data1 49
    .data1 51
    .data1 51
    .data1 57
    .data1 32
    .data1 121
    .data1 40
    .data1 84
    .data1 104
    .data1 105
    .data1 115
    .data1 41
    .data1 103
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 104
    .data1 40
    .data1 97
    .data1 110
    .data1 111
    .data1 116
    .data1 104
    .data1 101
    .data1 114
    .data1 41
    .data1 102
    .data1 40
    .data1 98
    .data1 111
    .data1 100
    .data1 121
    .data1 41
    .data1 103
    .data1 40
    .data1 112
    .data1 97
    .data1 114
    .data1 97
    .data1 103
    .data1 114
    .data1 97
    .data1 104
    .data1 46
    .data1 41
    .data1 49
    .data1 53
    .data1 32
    .data1 98
    .data1 40
    .data1 73
    .data1 116
    .data1 41
    .data1 57
    .data1 10
    .data1 98
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 103
    .data1 40
    .data1 109
    .data1 117
    .data1 99
    .data1 104
    .data1 41
    .data1 105
    .data1 40
    .data1 108
    .data1 111
    .data1 110
    .data1 103
    .data1 101
    .data1 114
    .data1 41
    .data1 101
    .data1 40
    .data1 92
    .data1 92
    .data1 40
    .data1 119
    .data1 101
    .data1 108
    .data1 108
    .data1 44
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 51
    .data1 56
    .data1 56
    .data1 32
    .data1 121
    .data1 40
    .data1 97
    .data1 41
    .data1 106
    .data1 40
    .data1 108
    .data1 105
    .data1 116
    .data1 116
    .data1 108
    .data1 101
    .data1 41
    .data1 100
    .data1 40
    .data1 108
    .data1 111
    .data1 110
    .data1 103
    .data1 101
    .data1 114
    .data1 41
    .data1 105
    .data1 40
    .data1 97
    .data1 116
    .data1 41
    .data1 103
    .data1 10
    .data1 40
    .data1 108
    .data1 101
    .data1 97
    .data1 115
    .data1 116
    .data1 92
    .data1 92
    .data1 41
    .data1 44
    .data1 41
    .data1 104
    .data1 40
    .data1 97
    .data1 110
    .data1 100
    .data1 41
    .data1 102
    .data1 40
    .data1 105
    .data1 116
    .data1 41
    .data1 102
    .data1 40
    .data1 114
    .data1 101
    .data1 113
    .data1 117
    .data1 105
    .data1 114
    .data1 101
    .data1 115
    .data1 41
    .data1 104
    .data1 40
    .data1 97
    .data1 116
    .data1 41
    .data1 104
    .data1 40
    .data1 108
    .data1 101
    .data1 97
    .data1 115
    .data1 116
    .data1 41
    .data1 102
    .data1 40
    .data1 51
    .data1 41
    .data1 103
    .data1 40
    .data1 108
    .data1 105
    .data1 110
    .data1 101
    .data1 115
    .data1 41
    .data1 103
    .data1 40
    .data1 116
    .data1 111
    .data1 41
    .data1 103
    .data1 40
    .data1 92
    .data1 50
    .data1 53
    .data1 54
    .data1 116
    .data1 41
    .data1 103
    .data1 10
    .data1 40
    .data1 116
    .data1 104
    .data1 101
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 52
    .data1 51
    .data1 56
    .data1 32
    .data1 121
    .data1 40
    .data1 99
    .data1 111
    .data1 110
    .data1 116
    .data1 101
    .data1 110
    .data1 116
    .data1 41
    .data1 102
    .data1 40
    .data1 111
    .data1 102
    .data1 41
    .data1 103
    .data1 40
    .data1 105
    .data1 116
    .data1 46
    .data1 41
    .data1 50
    .data1 49
    .data1 50
    .data1 32
    .data1 49
    .data1 52
    .data1 50
    .data1 51
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 100
    .data1 40
    .data1 49
    .data1 41
    .data1 52
    .data1 50
    .data1 32
    .data1 49
    .data1 53
    .data1 50
    .data1 49
    .data1 10
    .data1 121
    .data1 32
    .data1 70
    .data1 99
    .data1 40
    .data1 92
    .data1 48
    .data1 49
    .data1 55
    .data1 41
    .data1 50
    .data1 48
    .data1 32
    .data1 98
    .data1 32
    .data1 70
    .data1 101
    .data1 40
    .data1 84
    .data1 104
    .data1 105
    .data1 115
    .data1 41
    .data1 49
    .data1 48
    .data1 32
    .data1 98
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 103
    .data1 40
    .data1 97
    .data1 41
    .data1 104
    .data1 40
    .data1 98
    .data1 117
    .data1 108
    .data1 108
    .data1 101
    .data1 116
    .data1 46
    .data1 41
    .data1 48
    .data1 32
    .data1 49
    .data1 54
    .data1 54
    .data1 49
    .data1 32
    .data1 121
    .data1 10
    .data1 70
    .data1 105
    .data1 40
    .data1 51
    .data1 41
    .data1 54
    .data1 48
    .data1 32
    .data1 98
    .data1 40
    .data1 82
    .data1 101
    .data1 102
    .data1 101
    .data1 114
    .data1 41
    .data1 111
    .data1 40
    .data1 101
    .data1 110
    .data1 99
    .data1 101
    .data1 115
    .data1 41
    .data1 50
    .data1 49
    .data1 32
    .data1 49
    .data1 55
    .data1 53
    .data1 52
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 101
    .data1 40
    .data1 91
    .data1 49
    .data1 93
    .data1 92
    .data1 92
    .data1 41
    .data1 41
    .data1 57
    .data1 32
    .data1 98
    .data1 40
    .data1 82
    .data1 101
    .data1 102
    .data1 101
    .data1 114
    .data1 101
    .data1 110
    .data1 99
    .data1 101
    .data1 115
    .data1 41
    .data1 106
    .data1 40
    .data1 105
    .data1 110
    .data1 41
    .data1 101
    .data1 40
    .data1 73
    .data1 69
    .data1 69
    .data1 69
    .data1 41
    .data1 104
    .data1 10
    .data1 40
    .data1 115
    .data1 116
    .data1 97
    .data1 110
    .data1 100
    .data1 97
    .data1 114
    .data1 100
    .data1 41
    .data1 102
    .data1 40
    .data1 102
    .data1 111
    .data1 114
    .data1 109
    .data1 97
    .data1 116
    .data1 46
    .data1 41
    .data1 112
    .data1 32
    .data1 48
    .data1 32
    .data1 50
    .data1 53
    .data1 49
    .data1 49
    .data1 32
    .data1 52
    .data1 49
    .data1 50
    .data1 32
    .data1 50
    .data1 32
    .data1 118
    .data1 32
    .data1 52
    .data1 50
    .data1 32
    .data1 50
    .data1 53
    .data1 51
    .data1 56
    .data1 32
    .data1 97
    .data1 32
    .data1 70
    .data1 98
    .data1 40
    .data1 49
    .data1 41
    .data1 54
    .data1 48
    .data1 10
    .data1 50
    .data1 53
    .data1 53
    .data1 48
    .data1 32
    .data1 121
    .data1 32
    .data1 70
    .data1 97
    .data1 40
    .data1 84
    .data1 104
    .data1 105
    .data1 115
    .data1 41
    .data1 101
    .data1 40
    .data1 105
    .data1 115
    .data1 41
    .data1 104
    .data1 40
    .data1 97
    .data1 41
    .data1 102
    .data1 40
    .data1 102
    .data1 111
    .data1 111
    .data1 116
    .data1 110
    .data1 111
    .data1 116
    .data1 101
    .data1 46
    .data1 41
    .data1 112
    .data1 32
    .data1 101
    .data1 111
    .data1 112
    .data1 10
    .data1 37
    .data1 37
    .data1 84
    .data1 114
    .data1 97
    .data1 105
    .data1 108
    .data1 101
    .data1 114
    .data1 10
    .data1 101
    .data1 110
    .data1 100
    .data1 10
    .data1 117
    .data1 115
    .data1 101
    .data1 114
    .data1 100
    .data1 105
    .data1 99
    .data1 116
    .data1 32
    .data1 47
    .data1 101
    .data1 110
    .data1 100
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 32
    .data1 107
    .data1 110
    .data1 111
    .data1 119
    .data1 110
    .data1 123
    .data1 101
    .data1 110
    .data1 100
    .data1 45
    .data1 104
    .data1 111
    .data1 111
    .data1 107
    .data1 125
    .data1 105
    .data1 102
    .data1 10
    .data1 37
    .data1 37
    .data1 69
    .data1 79
    .data1 70
    .data1 0
.skip 2
eout::
    .data4 ((outbuf + 0) + 0)
.section .data
.comm outbuf, 0x2000, 4
.comm codebuf, 0x2000, 4
.comm codedone, 0x4, 4
.comm eaddr, 0x4, 4
.comm baddr, 0x4, 4
.comm last, 0x4, 4
.comm dict, 0x4008, 4
.comm compress, 0x4, 4
.comm escape, 0x4, 4
.comm c3, 0x4, 4
.comm c2, 0x4, 4
.comm c1, 0x4, 4
.comm p2, 0x4, 4
.comm p1, 0x4, 4
.comm p0, 0x4, 4
.section .text
.import decode
.type decode,@function
.import encode
.type encode,@function
.import checksize_dict
.type checksize_dict,@function
.import add_dict
.type add_dict,@function
.import search_dict
.type search_dict,@function
.import init_dict
.type init_dict,@function
.import putdata
.type putdata,@function
.import putcode
.type putcode,@function
.import getcode
.type getcode,@function
.import getdata
.type getdata,@function
.import _d_le
.type _d_le,@function
.import _d_eq
.type _d_eq,@function
.import cosd
.type cosd,@function
.import _d_ge
.type _d_ge,@function
.import _d_div
.type _d_div,@function
.import _d_add
.type _d_add,@function
.import _d_gt
.type _d_gt,@function
.import sind
.type sind,@function
.import _d_lt
.type _d_lt,@function
.import _d_neg
.type _d_neg,@function
.import fabsd
.type fabsd,@function
.import _d_mul
.type _d_mul,@function
.import _d_sub
.type _d_sub,@function
.import _d_ilfloat
.type _d_ilfloat,@function
.import _d_fix
.type _d_fix,@function
.import putc
.type putc,@function
.import _i_rem
.type _i_rem,@function
.import _i_div
.type _i_div,@function
.import puts
.type puts,@function
.import puti
.type puti,@function
.import abs
.type abs,@function
