/* "" */
/* "Copyright (C) 1990-2010 Hewlett-Packard Company" */
/* "VEX C compiler version 3.43 (20110131 release)" */
/* "" */
/* "-dir /home/alex/Documents/MCA/workspace/tools/vex-3.43 -o blit -ms -O3 -mas_g" */

/********************************************/
/*         SYSTEM HEADER                    */
/********************************************/

extern int sim_mem_probe(volatile unsigned int);
extern unsigned int sim_mem_access32(volatile unsigned int);
extern unsigned short sim_mem_access16(volatile unsigned int);
extern unsigned char sim_mem_access8(volatile unsigned int);
extern unsigned long long sim_cycle_counter;
extern unsigned long long sim_stall_counter;
extern unsigned long long sim_branch_stall;
extern unsigned long long sim_bundle_index[];
extern unsigned long long sim_oper_counter;
extern unsigned long long sim_bnt_counter;
extern unsigned long long sim_btc_counter;
extern unsigned long long sim_btu_counter;
extern unsigned long long sim_nop_counter;
extern unsigned int mem_trace_ld(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_st(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_pf(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_lds(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_sts(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_pfs(unsigned int, unsigned int, unsigned int);
extern void sim_ta_init(int);
/*         TRACING HANDLES                */
#define GOTO(x) /**/
#define CALL(x) /**/
#define ENTRY(x) /**/
#define RETURN(x) /**/
#define BRANCH(x) /**/
#define BRANCHF(x) /**/
#define LABEL(x) /**/
#define INC_STALL_CNT() sim_stall_counter += sim_branch_stall
#define INC_BNT_CNT() sim_bnt_counter++
#define INC_BTC_CNT() sim_btc_counter++
#define INC_BTU_CNT() sim_btu_counter++
#define INC_NOP_CNT(n) sim_nop_counter += (n)
#define INC_BUNDLE_CNT(index) sim_bundle_index[index]++
#define ADD_CYCLES(cycles)  sim_cycle_counter += (cycles)

typedef struct
{
  char *name;
  int length;
  int init;
  int offset;
  int linesize;
  int rta;
} sim_fileinfo_t;

extern int sim_init_fileinfo(sim_fileinfo_t *);
extern void sim_icache_fetch(int, int);
extern void sim_gprof_enter(int *, char *f);
extern void sim_gprof_start(int *);
extern void sim_gprof_stop(int *);
extern void sim_gprof_exit(int *);
/***********************************************/
/*         MACHINE MODEL HEADER                */
/***********************************************/

#define UINT8(s)  ((s) & 0xff)
#define INT8(s)   (((int) ((s) << 24)) >> 24)
#define UINT16(s) ((s) & 0xffff)
#define INT16(s)  (((int) ((s) << 16)) >> 16)
#define UINT32(s) ((unsigned int) (s))
#define INT32(s)  ((int) (s))


 		 /*  MEMORY MACROS */

#define ADDR8(a)  ((a) ^ 0x3)
#define ADDR16(a) ((a) ^ 0x2)
#define ADDR32(a) (a)
#define MEM8(a) (*((volatile unsigned char  *)(ADDR8(a))))
#define MEM16(a) (*((volatile unsigned short *)(ADDR16(a))))
#define MEM32(a) (*((volatile unsigned int *)(ADDR32(a))))
#define MEMSPEC8(a) sim_mem_access8(ADDR8(a))
#define MEMSPEC16(a) sim_mem_access16(ADDR16(a))
#define MEMSPEC32(a) sim_mem_access32(ADDR32(a))
#define LDBs(t,s1) t = INT8(MEMSPEC8(s1))
#define LDB(t,s1) t = INT8(MEM8(s1))
#define LDBUs(t,s1) t = UINT8(MEMSPEC8(s1))
#define LDBU(t,s1) t = UINT8(MEM8(s1))
#define LDHs(t,s1) t = INT16(MEMSPEC16(s1))
#define LDH(t,s1) t = INT16(MEM16(s1))
#define LDHUs(t,s1) t = UINT16(MEMSPEC16(s1))
#define LDHU(t,s1) t = UINT16(MEM16(s1))
#define LDWs(t,s1) t = INT32(MEMSPEC32(s1))
#define LDW(t,s1) t = INT32(MEM32(s1))
#define STB(t,s1) MEM8(t) = UINT8(s1)
#define STH(t,s1) MEM16(t) = UINT16(s1)
#define STW(t,s1) MEM32(t) = UINT32(s1)


 		 /*  INSTRUCTION MACROS */

#define MULL(t,s1,s2) t = (s1) * INT16(s2)
#define MULLU(t,s1,s2) t = (s1) * UINT16(s2)
#define MULH(t,s1,s2) t = (s1) * INT16((s2) >> 16)
#define MULHU(t,s1,s2) t = (s1) * UINT16((s2) >> 16)
#define MULHS(t,s1,s2) t = ((s1) * UINT16((s2) >> 16)) << 16
#define MULLL(t,s1,s2)  t = INT16(s1) * INT16(s2)
#define MULLLU(t,s1,s2) t = UINT16(s1) * UINT16(s2)
#define MULLH(t,s1,s2)  t = INT16(s1) * INT16((s2) >> 16)
#define MULLHU(t,s1,s2) t = UINT16(s1) * UINT16((s2) >> 16)
#define MULHH(t,s1,s2)  t = INT16((s1) >> 16) * INT16((s2) >> 16)
#define MULHHU(t,s1,s2) t = UINT16((s1) >> 16) * UINT16((s2) >> 16)
#define ADD(t,s1,s2) t = (s1) + (s2)
#define AND(t,s1,s2) t = (s1) & (s2)
#define ANDC(t,s1,s2) t = ~(s1) & (s2)
#define ANDL(t,s1,s2) t = ((((s1) == 0) | ((s2) == 0)) ? 0 : 1)
#define CMPEQ(t,s1,s2) t = ((s1) == (s2))
#define CMPGE(t,s1,s2) t = ((int) (s1) >= (int) (s2))
#define CMPGEU(t,s1,s2) t = ((unsigned int) (s1) >= (unsigned int) (s2))
#define CMPGT(t,s1,s2) t = ((int) (s1) > (int) (s2))
#define CMPGTU(t,s1,s2) t = ((unsigned int) (s1) > (unsigned int) (s2))
#define CMPLE(t,s1,s2) t = ((int) (s1) <= (int) (s2))
#define CMPLEU(t,s1,s2) t = ((unsigned int) (s1) <= (unsigned int) (s2))
#define CMPLT(t,s1,s2) t = ((int) (s1) < (int) (s2))
#define CMPLTU(t,s1,s2) t = ((unsigned int) (s1) < (unsigned int) (s2))
#define CMPNE(t,s1,s2) t = ( (s1) !=  (s2))
#define MAX(t,s1,s2) t = ((int) (s1) > (int) (s2)) ? (s1) : (s2)
#define MAXU(t,s1,s2) t = ((unsigned int) (s1) > (unsigned int) (s2)) ? (s1) : (s2)
#define MIN(t,s1,s2) t = ((int) (s1) < (int) (s2)) ? (s1) : (s2)
#define MINU(t,s1,s2) t = ((unsigned int) (s1) < (unsigned int) (s2)) ? (s1) : (s2)
#define MFB(t,s1) t = s1
#define MFL(t,s1) t = s1
#define MOV(t,s1) t = s1
#define MTL(t,s1) t = s1
#define MTB(t,s1) t = ((s1) == 0) ? 0 : 1
#define MTBINV(t,s1) t = ((s1) == 0) ? 1 : 0
#define MUL(t,s1,s2) t = (s1) * (s2)
#define NANDL(t,s1,s2) t = (((s1) == 0) | ((s2) == 0)) ? 1 : 0
#define NOP()
#define NORL(t,s1,s2) t = (((s1) == 0) & ((s2) == 0)) ? 1 : 0
#define ORL(t,s1,s2) t = (((s1) == 0) & ((s2) == 0)) ? 0 : 1
#define OR(t,s1,s2) t = (s1) | (s2)
#define ORC(t,s1,s2) t = (~(s1)) | (s2)
#define PFT(s1) (s1)
#define SBIT(t,s1,s2) t = (s1) | ((unsigned int) 1 << (s2))
#define SBITF(t,s1,s2) t = (s1) & ~((unsigned int) 1 << (s2))
#define SH1ADD(t,s1,s2) t = ((s1) << 1) + (s2)
#define SH2ADD(t,s1,s2) t = ((s1) << 2) + (s2)
#define SH3ADD(t,s1,s2) t = ((s1) << 3) + (s2)
#define SH4ADD(t,s1,s2) t = ((s1) << 4) + (s2)
#define SHL(t,s1,s2) t = ((int) (s1)) << (s2)
#define SHR(t,s1,s2) t = ((int) (s1)) >> (s2)
#define SHRU(t,s1,s2) t = ((unsigned int) (s1)) >> (s2)
#define SLCT(t,s1,s2,s3) t = (unsigned int) (((s1) != 0) ? (s2) : (s3))
#define SLCTF(t,s1,s2,s3) t = (unsigned int) (((s1) == 0) ? (s2) : (s3))
#define SUB(t,s1,s2) t = (s1) - (s2)
#define SXTB(t,s1) t = (unsigned int) (((signed int) ((s1) << 24)) >> 24)
#define SXTH(t,s1) t = (unsigned int) (((signed int) ((s1) << 16)) >> 16)
#define TBIT(t,s1,s2) t = ((s1) & ((unsigned int) 1 << (s2))) ? 1 : 0
#define TBITF(t,s1,s2) t = ((s1) & ((unsigned int) 1 << (s2))) ? 0 : 1
#define XNOP(s1)
#define XOR(t,s1,s2) t = (s1) ^ (s2)
#define ZXTB(t,s1) t = ((s1) & 0xff)
#define ZXTH(t,s1) t = ((s1) & 0xffff)
#define ADDCG(t,cout,s1,s2,cin) {\
    t = (s1) + (s2) + ((cin) & 0x1);\
    cout =   ((cin) & 0x1)\
           ? ((unsigned int) t <= (unsigned int) (s1))\
           : ((unsigned int) t <  (unsigned int) (s1));\
}
#define DIVS(t,cout,s1,s2,cin) {\
    unsigned int tmp = ((s1) << 1) | (cin);\
    cout = (unsigned int) (s1) >> 31;\
    t = cout ? tmp + (s2) : tmp - (s2);\
}
static sim_fileinfo_t t_thisfile;
extern void sim_asm_op0(int, ...);
extern unsigned int sim_asm_op1(int, ...);
typedef struct { unsigned int n0,n1; } sim_asm2_t;
extern sim_asm2_t sim_asm_op2(int, ...);
typedef struct { unsigned int n0,n1,n2; } sim_asm3_t;
extern sim_asm3_t sim_asm_op3(int, ...);
typedef struct { unsigned int n0,n1,n2,n3; } sim_asm4_t;
extern sim_asm4_t sim_asm_op4(int, ...);

/*********************************
            BSS SYMBOLS
*********************************/

unsigned int dst[1024];

/*********************************
            ENTRY SYMBOLS
*********************************/

typedef struct {
	unsigned int alias0;
	unsigned int alias1;
} sim_result_0_t;
extern unsigned int abs( unsigned int );
extern sim_result_0_t  fabs( unsigned int, unsigned int );
extern unsigned int memcpy( unsigned int, unsigned int, unsigned int );
extern unsigned int strncmp( unsigned int, unsigned int, unsigned int );
extern unsigned int rand(  );
extern sim_result_0_t  sin( unsigned int, unsigned int );
extern sim_result_0_t  cos( unsigned int, unsigned int );
extern sim_result_0_t  tan( unsigned int, unsigned int );
extern sim_result_0_t  sqrt( unsigned int, unsigned int );
extern  putc( unsigned int );
extern  puts( unsigned int );
extern  puti( unsigned int );
extern  putf( unsigned int, unsigned int );
extern  blit( unsigned int, unsigned int, unsigned int );
extern unsigned int __vex_main(  );
extern  _d_fix(  );
extern  _i_rem(  );
extern  _i_div(  );
extern  putchar(  );
extern  _d_le(  );
extern  _d_sub(  );
extern  _d_eq(  );
extern  _d_ge(  );
extern  _d_div(  );
extern  _d_add(  );
extern  _d_mul(  );
extern  _d_ilfloat(  );
extern  _d_gt(  );
extern  _d_lt(  );
extern  _d_neg(  );

/*********************************
            DATA SYMBOLS
*********************************/

static unsigned int _X1PACKETX2[1]; 
static unsigned int _X1STRINGPACKETX1[4]; 
static unsigned int _X1STRINGPACKETX2[4]; 
unsigned int src[1024]; 
static unsigned int _X1PACKETX2[1] = { 
	0x00000001
}; 

static unsigned int _X1STRINGPACKETX1[4] = { 
	0x626C6974,
	0x3A206661,
	0x696C6564,
	0x0A000000
}; 

static unsigned int _X1STRINGPACKETX2[4] = { 
	0x626C6974,
	0x3A207375,
	0x63636573,
	0x730A0000
}; 

unsigned int src[1024] = { 
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x12345678,
	0x12345678,
	0x12345678,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x12345678,
	0x12345678,
	0x12345678,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x12345678,
	0x12345678,
	0x12345678,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x12345678,
	0x12345678,
	0x12345678,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x12345678,
	0x12345678,
	0x12345678,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x10101010,
	0x12345678,
	0x10101010,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x10101010,
	0x12345678,
	0x10101010,
	0x12345678,
	0x00005678,
	0x12340000,
	0x02040608,
	0x00000001,
	0x10101010,
	0x12345678,
	0x10101010,
	0x12345678,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000
}; 


/*********************************
            TEXT
*********************************/
extern unsigned int sim_create_stack(unsigned int, unsigned int);
extern void sim_check_stack(unsigned int, unsigned int);
extern void sim_bad_label(int);
unsigned int reg_b0_0;
unsigned int reg_b0_1;
unsigned int reg_b0_2;
unsigned int reg_b0_3;
unsigned int reg_b0_4;
unsigned int reg_b0_5;
unsigned int reg_b0_6;
unsigned int reg_b0_7;
unsigned int reg_b0_8;
unsigned int reg_b0_9;
unsigned int reg_b0_10;
unsigned int reg_b0_11;
unsigned int reg_b0_12;
unsigned int reg_b0_13;
unsigned int reg_b0_14;
unsigned int reg_b0_15;
unsigned int reg_b1_0;
unsigned int reg_b1_1;
unsigned int reg_b1_2;
unsigned int reg_b1_3;
unsigned int reg_b1_4;
unsigned int reg_b1_5;
unsigned int reg_b1_6;
unsigned int reg_b1_7;
unsigned int reg_b1_8;
unsigned int reg_b1_9;
unsigned int reg_b1_10;
unsigned int reg_b1_11;
unsigned int reg_b1_12;
unsigned int reg_b1_13;
unsigned int reg_b1_14;
unsigned int reg_b1_15;
unsigned int reg_b2_0;
unsigned int reg_b2_1;
unsigned int reg_b2_2;
unsigned int reg_b2_3;
unsigned int reg_b2_4;
unsigned int reg_b2_5;
unsigned int reg_b2_6;
unsigned int reg_b2_7;
unsigned int reg_b2_8;
unsigned int reg_b2_9;
unsigned int reg_b2_10;
unsigned int reg_b2_11;
unsigned int reg_b2_12;
unsigned int reg_b2_13;
unsigned int reg_b2_14;
unsigned int reg_b2_15;
unsigned int reg_b3_0;
unsigned int reg_b3_1;
unsigned int reg_b3_2;
unsigned int reg_b3_3;
unsigned int reg_b3_4;
unsigned int reg_b3_5;
unsigned int reg_b3_6;
unsigned int reg_b3_7;
unsigned int reg_b3_8;
unsigned int reg_b3_9;
unsigned int reg_b3_10;
unsigned int reg_b3_11;
unsigned int reg_b3_12;
unsigned int reg_b3_13;
unsigned int reg_b3_14;
unsigned int reg_b3_15;
unsigned int reg_l0_0;
unsigned int reg_r0_0;
unsigned int reg_r0_1;
unsigned int reg_r0_2;
unsigned int reg_r0_3;
unsigned int reg_r0_4;
unsigned int reg_r0_5;
unsigned int reg_r0_6;
unsigned int reg_r0_7;
unsigned int reg_r0_8;
unsigned int reg_r0_9;
unsigned int reg_r0_10;
unsigned int reg_r0_11;
unsigned int reg_r0_12;
unsigned int reg_r0_13;
unsigned int reg_r0_14;
unsigned int reg_r0_15;
unsigned int reg_r0_16;
unsigned int reg_r0_17;
unsigned int reg_r0_18;
unsigned int reg_r0_19;
unsigned int reg_r0_20;
unsigned int reg_r0_21;
unsigned int reg_r0_22;
unsigned int reg_r0_23;
unsigned int reg_r0_24;
unsigned int reg_r0_25;
unsigned int reg_r0_26;
unsigned int reg_r0_27;
unsigned int reg_r0_28;
unsigned int reg_r0_29;
unsigned int reg_r0_30;
unsigned int reg_r0_31;
unsigned int reg_r0_32;
unsigned int reg_r0_33;
unsigned int reg_r0_34;
unsigned int reg_r0_35;
unsigned int reg_r0_36;
unsigned int reg_r0_37;
unsigned int reg_r0_38;
unsigned int reg_r0_39;
unsigned int reg_r0_40;
unsigned int reg_r0_41;
unsigned int reg_r0_42;
unsigned int reg_r0_43;
unsigned int reg_r0_44;
unsigned int reg_r0_45;
unsigned int reg_r0_46;
unsigned int reg_r0_47;
unsigned int reg_r0_48;
unsigned int reg_r0_49;
unsigned int reg_r0_50;
unsigned int reg_r0_51;
unsigned int reg_r0_52;
unsigned int reg_r0_53;
unsigned int reg_r0_54;
unsigned int reg_r0_55;
unsigned int reg_r0_56;
unsigned int reg_r0_57;
unsigned int reg_r0_58;
unsigned int reg_r0_59;
unsigned int reg_r0_60;
unsigned int reg_r0_61;
unsigned int reg_r0_62;
unsigned int reg_r0_63;
unsigned int reg_r0_64;
unsigned int reg_r0_65;
unsigned int reg_r0_66;
unsigned int reg_r0_67;
unsigned int reg_r0_68;
unsigned int reg_r0_69;
unsigned int reg_r0_70;
unsigned int reg_r0_71;
unsigned int reg_r0_72;
unsigned int reg_r0_73;
unsigned int reg_r0_74;
unsigned int reg_r0_75;
unsigned int reg_r0_76;
unsigned int reg_r0_77;
unsigned int reg_r0_78;
unsigned int reg_r0_79;
unsigned int reg_r0_80;
unsigned int reg_r0_81;
unsigned int reg_r0_82;
unsigned int reg_r0_83;
unsigned int reg_r0_84;
unsigned int reg_r0_85;
unsigned int reg_r0_86;
unsigned int reg_r0_87;
unsigned int reg_r0_88;
unsigned int reg_r0_89;
unsigned int reg_r0_90;
unsigned int reg_r0_91;
unsigned int reg_r0_92;
unsigned int reg_r0_93;
unsigned int reg_r0_94;
unsigned int reg_r0_95;
unsigned int reg_r0_96;
unsigned int reg_r0_97;
unsigned int reg_r0_98;
unsigned int reg_r0_99;
unsigned int reg_r0_100;
unsigned int reg_r0_101;
unsigned int reg_r0_102;
unsigned int reg_r0_103;
unsigned int reg_r0_104;
unsigned int reg_r0_105;
unsigned int reg_r0_106;
unsigned int reg_r0_107;
unsigned int reg_r0_108;
unsigned int reg_r0_109;
unsigned int reg_r0_110;
unsigned int reg_r0_111;
unsigned int reg_r0_112;
unsigned int reg_r0_113;
unsigned int reg_r0_114;
unsigned int reg_r0_115;
unsigned int reg_r0_116;
unsigned int reg_r0_117;
unsigned int reg_r0_118;
unsigned int reg_r0_119;
unsigned int reg_r0_120;
unsigned int reg_r0_121;
unsigned int reg_r0_122;
unsigned int reg_r0_123;
unsigned int reg_r0_124;
unsigned int reg_r0_125;
unsigned int reg_r0_126;
unsigned int reg_r0_127;
unsigned int reg_r1_0;
unsigned int reg_r1_1;
unsigned int reg_r1_2;
unsigned int reg_r1_3;
unsigned int reg_r1_4;
unsigned int reg_r1_5;
unsigned int reg_r1_6;
unsigned int reg_r1_7;
unsigned int reg_r1_8;
unsigned int reg_r1_9;
unsigned int reg_r1_10;
unsigned int reg_r1_11;
unsigned int reg_r1_12;
unsigned int reg_r1_13;
unsigned int reg_r1_14;
unsigned int reg_r1_15;
unsigned int reg_r1_16;
unsigned int reg_r1_17;
unsigned int reg_r1_18;
unsigned int reg_r1_19;
unsigned int reg_r1_20;
unsigned int reg_r1_21;
unsigned int reg_r1_22;
unsigned int reg_r1_23;
unsigned int reg_r1_24;
unsigned int reg_r1_25;
unsigned int reg_r1_26;
unsigned int reg_r1_27;
unsigned int reg_r1_28;
unsigned int reg_r1_29;
unsigned int reg_r1_30;
unsigned int reg_r1_31;
unsigned int reg_r1_32;
unsigned int reg_r1_33;
unsigned int reg_r1_34;
unsigned int reg_r1_35;
unsigned int reg_r1_36;
unsigned int reg_r1_37;
unsigned int reg_r1_38;
unsigned int reg_r1_39;
unsigned int reg_r1_40;
unsigned int reg_r1_41;
unsigned int reg_r1_42;
unsigned int reg_r1_43;
unsigned int reg_r1_44;
unsigned int reg_r1_45;
unsigned int reg_r1_46;
unsigned int reg_r1_47;
unsigned int reg_r1_48;
unsigned int reg_r1_49;
unsigned int reg_r1_50;
unsigned int reg_r1_51;
unsigned int reg_r1_52;
unsigned int reg_r1_53;
unsigned int reg_r1_54;
unsigned int reg_r1_55;
unsigned int reg_r1_56;
unsigned int reg_r1_57;
unsigned int reg_r1_58;
unsigned int reg_r1_59;
unsigned int reg_r1_60;
unsigned int reg_r1_61;
unsigned int reg_r1_62;
unsigned int reg_r1_63;
unsigned int reg_r1_64;
unsigned int reg_r1_65;
unsigned int reg_r1_66;
unsigned int reg_r1_67;
unsigned int reg_r1_68;
unsigned int reg_r1_69;
unsigned int reg_r1_70;
unsigned int reg_r1_71;
unsigned int reg_r1_72;
unsigned int reg_r1_73;
unsigned int reg_r1_74;
unsigned int reg_r1_75;
unsigned int reg_r1_76;
unsigned int reg_r1_77;
unsigned int reg_r1_78;
unsigned int reg_r1_79;
unsigned int reg_r1_80;
unsigned int reg_r1_81;
unsigned int reg_r1_82;
unsigned int reg_r1_83;
unsigned int reg_r1_84;
unsigned int reg_r1_85;
unsigned int reg_r1_86;
unsigned int reg_r1_87;
unsigned int reg_r1_88;
unsigned int reg_r1_89;
unsigned int reg_r1_90;
unsigned int reg_r1_91;
unsigned int reg_r1_92;
unsigned int reg_r1_93;
unsigned int reg_r1_94;
unsigned int reg_r1_95;
unsigned int reg_r1_96;
unsigned int reg_r1_97;
unsigned int reg_r1_98;
unsigned int reg_r1_99;
unsigned int reg_r1_100;
unsigned int reg_r1_101;
unsigned int reg_r1_102;
unsigned int reg_r1_103;
unsigned int reg_r1_104;
unsigned int reg_r1_105;
unsigned int reg_r1_106;
unsigned int reg_r1_107;
unsigned int reg_r1_108;
unsigned int reg_r1_109;
unsigned int reg_r1_110;
unsigned int reg_r1_111;
unsigned int reg_r1_112;
unsigned int reg_r1_113;
unsigned int reg_r1_114;
unsigned int reg_r1_115;
unsigned int reg_r1_116;
unsigned int reg_r1_117;
unsigned int reg_r1_118;
unsigned int reg_r1_119;
unsigned int reg_r1_120;
unsigned int reg_r1_121;
unsigned int reg_r1_122;
unsigned int reg_r1_123;
unsigned int reg_r1_124;
unsigned int reg_r1_125;
unsigned int reg_r1_126;
unsigned int reg_r1_127;
unsigned int reg_r2_0;
unsigned int reg_r2_1;
unsigned int reg_r2_2;
unsigned int reg_r2_3;
unsigned int reg_r2_4;
unsigned int reg_r2_5;
unsigned int reg_r2_6;
unsigned int reg_r2_7;
unsigned int reg_r2_8;
unsigned int reg_r2_9;
unsigned int reg_r2_10;
unsigned int reg_r2_11;
unsigned int reg_r2_12;
unsigned int reg_r2_13;
unsigned int reg_r2_14;
unsigned int reg_r2_15;
unsigned int reg_r2_16;
unsigned int reg_r2_17;
unsigned int reg_r2_18;
unsigned int reg_r2_19;
unsigned int reg_r2_20;
unsigned int reg_r2_21;
unsigned int reg_r2_22;
unsigned int reg_r2_23;
unsigned int reg_r2_24;
unsigned int reg_r2_25;
unsigned int reg_r2_26;
unsigned int reg_r2_27;
unsigned int reg_r2_28;
unsigned int reg_r2_29;
unsigned int reg_r2_30;
unsigned int reg_r2_31;
unsigned int reg_r2_32;
unsigned int reg_r2_33;
unsigned int reg_r2_34;
unsigned int reg_r2_35;
unsigned int reg_r2_36;
unsigned int reg_r2_37;
unsigned int reg_r2_38;
unsigned int reg_r2_39;
unsigned int reg_r2_40;
unsigned int reg_r2_41;
unsigned int reg_r2_42;
unsigned int reg_r2_43;
unsigned int reg_r2_44;
unsigned int reg_r2_45;
unsigned int reg_r2_46;
unsigned int reg_r2_47;
unsigned int reg_r2_48;
unsigned int reg_r2_49;
unsigned int reg_r2_50;
unsigned int reg_r2_51;
unsigned int reg_r2_52;
unsigned int reg_r2_53;
unsigned int reg_r2_54;
unsigned int reg_r2_55;
unsigned int reg_r2_56;
unsigned int reg_r2_57;
unsigned int reg_r2_58;
unsigned int reg_r2_59;
unsigned int reg_r2_60;
unsigned int reg_r2_61;
unsigned int reg_r2_62;
unsigned int reg_r2_63;
unsigned int reg_r2_64;
unsigned int reg_r2_65;
unsigned int reg_r2_66;
unsigned int reg_r2_67;
unsigned int reg_r2_68;
unsigned int reg_r2_69;
unsigned int reg_r2_70;
unsigned int reg_r2_71;
unsigned int reg_r2_72;
unsigned int reg_r2_73;
unsigned int reg_r2_74;
unsigned int reg_r2_75;
unsigned int reg_r2_76;
unsigned int reg_r2_77;
unsigned int reg_r2_78;
unsigned int reg_r2_79;
unsigned int reg_r2_80;
unsigned int reg_r2_81;
unsigned int reg_r2_82;
unsigned int reg_r2_83;
unsigned int reg_r2_84;
unsigned int reg_r2_85;
unsigned int reg_r2_86;
unsigned int reg_r2_87;
unsigned int reg_r2_88;
unsigned int reg_r2_89;
unsigned int reg_r2_90;
unsigned int reg_r2_91;
unsigned int reg_r2_92;
unsigned int reg_r2_93;
unsigned int reg_r2_94;
unsigned int reg_r2_95;
unsigned int reg_r2_96;
unsigned int reg_r2_97;
unsigned int reg_r2_98;
unsigned int reg_r2_99;
unsigned int reg_r2_100;
unsigned int reg_r2_101;
unsigned int reg_r2_102;
unsigned int reg_r2_103;
unsigned int reg_r2_104;
unsigned int reg_r2_105;
unsigned int reg_r2_106;
unsigned int reg_r2_107;
unsigned int reg_r2_108;
unsigned int reg_r2_109;
unsigned int reg_r2_110;
unsigned int reg_r2_111;
unsigned int reg_r2_112;
unsigned int reg_r2_113;
unsigned int reg_r2_114;
unsigned int reg_r2_115;
unsigned int reg_r2_116;
unsigned int reg_r2_117;
unsigned int reg_r2_118;
unsigned int reg_r2_119;
unsigned int reg_r2_120;
unsigned int reg_r2_121;
unsigned int reg_r2_122;
unsigned int reg_r2_123;
unsigned int reg_r2_124;
unsigned int reg_r2_125;
unsigned int reg_r2_126;
unsigned int reg_r2_127;
unsigned int reg_r3_0;
unsigned int reg_r3_1;
unsigned int reg_r3_2;
unsigned int reg_r3_3;
unsigned int reg_r3_4;
unsigned int reg_r3_5;
unsigned int reg_r3_6;
unsigned int reg_r3_7;
unsigned int reg_r3_8;
unsigned int reg_r3_9;
unsigned int reg_r3_10;
unsigned int reg_r3_11;
unsigned int reg_r3_12;
unsigned int reg_r3_13;
unsigned int reg_r3_14;
unsigned int reg_r3_15;
unsigned int reg_r3_16;
unsigned int reg_r3_17;
unsigned int reg_r3_18;
unsigned int reg_r3_19;
unsigned int reg_r3_20;
unsigned int reg_r3_21;
unsigned int reg_r3_22;
unsigned int reg_r3_23;
unsigned int reg_r3_24;
unsigned int reg_r3_25;
unsigned int reg_r3_26;
unsigned int reg_r3_27;
unsigned int reg_r3_28;
unsigned int reg_r3_29;
unsigned int reg_r3_30;
unsigned int reg_r3_31;
unsigned int reg_r3_32;
unsigned int reg_r3_33;
unsigned int reg_r3_34;
unsigned int reg_r3_35;
unsigned int reg_r3_36;
unsigned int reg_r3_37;
unsigned int reg_r3_38;
unsigned int reg_r3_39;
unsigned int reg_r3_40;
unsigned int reg_r3_41;
unsigned int reg_r3_42;
unsigned int reg_r3_43;
unsigned int reg_r3_44;
unsigned int reg_r3_45;
unsigned int reg_r3_46;
unsigned int reg_r3_47;
unsigned int reg_r3_48;
unsigned int reg_r3_49;
unsigned int reg_r3_50;
unsigned int reg_r3_51;
unsigned int reg_r3_52;
unsigned int reg_r3_53;
unsigned int reg_r3_54;
unsigned int reg_r3_55;
unsigned int reg_r3_56;
unsigned int reg_r3_57;
unsigned int reg_r3_58;
unsigned int reg_r3_59;
unsigned int reg_r3_60;
unsigned int reg_r3_61;
unsigned int reg_r3_62;
unsigned int reg_r3_63;
unsigned int reg_r3_64;
unsigned int reg_r3_65;
unsigned int reg_r3_66;
unsigned int reg_r3_67;
unsigned int reg_r3_68;
unsigned int reg_r3_69;
unsigned int reg_r3_70;
unsigned int reg_r3_71;
unsigned int reg_r3_72;
unsigned int reg_r3_73;
unsigned int reg_r3_74;
unsigned int reg_r3_75;
unsigned int reg_r3_76;
unsigned int reg_r3_77;
unsigned int reg_r3_78;
unsigned int reg_r3_79;
unsigned int reg_r3_80;
unsigned int reg_r3_81;
unsigned int reg_r3_82;
unsigned int reg_r3_83;
unsigned int reg_r3_84;
unsigned int reg_r3_85;
unsigned int reg_r3_86;
unsigned int reg_r3_87;
unsigned int reg_r3_88;
unsigned int reg_r3_89;
unsigned int reg_r3_90;
unsigned int reg_r3_91;
unsigned int reg_r3_92;
unsigned int reg_r3_93;
unsigned int reg_r3_94;
unsigned int reg_r3_95;
unsigned int reg_r3_96;
unsigned int reg_r3_97;
unsigned int reg_r3_98;
unsigned int reg_r3_99;
unsigned int reg_r3_100;
unsigned int reg_r3_101;
unsigned int reg_r3_102;
unsigned int reg_r3_103;
unsigned int reg_r3_104;
unsigned int reg_r3_105;
unsigned int reg_r3_106;
unsigned int reg_r3_107;
unsigned int reg_r3_108;
unsigned int reg_r3_109;
unsigned int reg_r3_110;
unsigned int reg_r3_111;
unsigned int reg_r3_112;
unsigned int reg_r3_113;
unsigned int reg_r3_114;
unsigned int reg_r3_115;
unsigned int reg_r3_116;
unsigned int reg_r3_117;
unsigned int reg_r3_118;
unsigned int reg_r3_119;
unsigned int reg_r3_120;
unsigned int reg_r3_121;
unsigned int reg_r3_122;
unsigned int reg_r3_123;
unsigned int reg_r3_124;
unsigned int reg_r3_125;
unsigned int reg_r3_126;
unsigned int reg_r3_127;


extern unsigned int abs( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(abs);
  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (101 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(0 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_2, 0, reg_r0_3); /* line 20 */
   CMPLT(reg_b0_0, reg_r0_3, 0); /* line 21 */
} /* line 21 */
  sim_icache_fetch(2 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_3, reg_b0_0, reg_r0_2, reg_r0_3); /* line 24 */
   RETURN(abs);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 25 */
  reg_l0_0 = t_client_rpc;
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 101:
      reg_l0_0 = t_client_rpc;
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern sim_result_0_t fabs( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
  sim_result_0_t t_sim_result_0_t_0;
   ENTRY(fabs);
  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (106 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(4 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 40 */
} /* line 40 */
  sim_icache_fetch(5 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 42 */
} /* line 42 */
  sim_icache_fetch(6 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_4); /* line 44 */
} /* line 44 */
		 /* line 45 */
  sim_icache_fetch(7 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_3); /* line 48 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_neg);
   reg_l0_0 = (106 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_neg;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 48 */
l_lr_2: ;/* line 48 */
LABEL(l_lr_2);
  sim_icache_fetch(10 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, 0); /* line 50 */
   MOV(reg_r0_6, 0); /* line 51 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 52 */
} /* line 52 */
  sim_icache_fetch(13 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_4); /* line 54 */
} /* line 54 */
  sim_icache_fetch(14 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 56 */
} /* line 56 */
  sim_icache_fetch(15 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 58 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 59 */
   ADD_CYCLES(1);
} /* line 59 */
		 /* line 60 */
  sim_icache_fetch(17 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_lt);
   reg_l0_0 = (106 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_lt;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 62 */
l_lr_4: ;/* line 62 */
LABEL(l_lr_4);
  sim_icache_fetch(19 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 64 */
   CMPNE(reg_b0_1, reg_r0_3, 0); /* line 65 */
   LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 66 */
} /* line 66 */
  sim_icache_fetch(22 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 68 */
} /* line 68 */
  sim_icache_fetch(23 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 70 */
} /* line 70 */
  sim_icache_fetch(24 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 72 */
} /* line 72 */
  sim_icache_fetch(25 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_3, reg_b0_0, reg_r0_5, reg_r0_2); /* line 74 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 75 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 76 */
   ADD_CYCLES(1);
} /* line 76 */
  sim_icache_fetch(28 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   SLCT(reg_r0_4, reg_b0_1, reg_r0_7, reg_r0_6); /* line 78 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 79 */
   ADD_CYCLES(1);
} /* line 79 */
  sim_icache_fetch(30 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(fabs);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 82 */
  reg_l0_0 = t_client_rpc;
  t_sim_result_0_t_0.alias0 = reg_r0_3;
  t_sim_result_0_t_0.alias1 = reg_r0_4;
  return t_sim_result_0_t_0;

labelfinder:
  switch (t_labelnum >> 5) {
    case 103: goto l_lr_2;
    case 105: goto l_lr_4;
    case 106:
      reg_l0_0 = t_client_rpc;
      t_sim_result_0_t_0.alias0 = reg_r0_3;
      t_sim_result_0_t_0.alias1 = reg_r0_4;
      return t_sim_result_0_t_0;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int memcpy( unsigned int arg0, unsigned int arg1, unsigned int arg2 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(memcpy);
  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_r0_5 =  arg2; 
  reg_l0_0 = (116 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(31 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_4 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_4, reg_r0_5, (unsigned int) -7); /* line 102 */
   MOV(reg_r0_2, t__i32_0); /* line 103 */
} /* line 103 */
  sim_icache_fetch(33 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_5, reg_r0_3); /* line 105 */
} /* line 105 */
l_L0X3: ;/* line 108 */
LABEL(l_L0X3);
  sim_icache_fetch(34 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPNE(reg_b0_0, reg_r0_4, (unsigned int) -7); /* line 109 */
   LDBs(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 110 */
   CMPNE(reg_b0_1, reg_r0_4, (unsigned int) -6); /* line 111 */
   CMPNE(reg_b0_2, reg_r0_4, (unsigned int) -5); /* line 112 */
} /* line 112 */
  sim_icache_fetch(38 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPNE(reg_b0_3, reg_r0_4, (unsigned int) -4); /* line 114 */
   CMPNE(reg_b0_4, reg_r0_4, (unsigned int) -3); /* line 115 */
   CMPNE(reg_b0_5, reg_r0_4, (unsigned int) -2); /* line 116 */
   MOV(reg_r0_6, reg_r0_4); /* line 117 */
} /* line 117 */
  sim_icache_fetch(42 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPNE(reg_b0_0, reg_r0_4, (unsigned int) -1); /* line 119 */
   ADD(reg_r0_4, reg_r0_4, (unsigned int) -8); /* line 120 */
   CMPNE(reg_b0_6, reg_r0_6, 0); /* line 121 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L1X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 122 */
  sim_icache_fetch(46 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 124 */
   if (!reg_b0_1) {    BRANCHF(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L2X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 125 */
  sim_icache_fetch(48 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 127 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 128 */
   ADD_CYCLES(2);
} /* line 128 */
  sim_icache_fetch(50 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 130 */
   if (!reg_b0_2) {    BRANCHF(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L3X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 131 */
  sim_icache_fetch(52 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 133 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 134 */
   ADD_CYCLES(2);
} /* line 134 */
  sim_icache_fetch(54 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 136 */
   if (!reg_b0_3) {    BRANCHF(reg_b0_3);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L4X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 137 */
  sim_icache_fetch(56 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 139 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 140 */
   ADD_CYCLES(2);
} /* line 140 */
  sim_icache_fetch(58 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 142 */
   if (!reg_b0_4) {    BRANCHF(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L5X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 143 */
  sim_icache_fetch(60 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 145 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 146 */
   ADD_CYCLES(2);
} /* line 146 */
  sim_icache_fetch(62 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 148 */
   if (!reg_b0_5) {    BRANCHF(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L6X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 149 */
  sim_icache_fetch(64 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 151 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 152 */
   ADD_CYCLES(2);
} /* line 152 */
  sim_icache_fetch(66 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 154 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L7X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 155 */
  sim_icache_fetch(68 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 157 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 158 */
   ADD_CYCLES(2);
} /* line 158 */
  sim_icache_fetch(70 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 160 */
   if (!reg_b0_6) {    BRANCHF(reg_b0_6);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L8X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 161 */
  sim_icache_fetch(72 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 163 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 164 */
   ADD_CYCLES(2);
} /* line 164 */
  sim_icache_fetch(74 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 166 */
   GOTO(l_L0X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L0X3;
} /* line 167 */
l_L8X3: ;/* line 170 */
LABEL(l_L8X3);
  sim_icache_fetch(76 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 173 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 173 */
l_L7X3: ;/* line 176 */
LABEL(l_L7X3);
  sim_icache_fetch(78 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 179 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 179 */
l_L6X3: ;/* line 182 */
LABEL(l_L6X3);
  sim_icache_fetch(80 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 185 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 185 */
l_L5X3: ;/* line 188 */
LABEL(l_L5X3);
  sim_icache_fetch(82 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 191 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 191 */
l_L4X3: ;/* line 194 */
LABEL(l_L4X3);
  sim_icache_fetch(84 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 197 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 197 */
l_L3X3: ;/* line 200 */
LABEL(l_L3X3);
  sim_icache_fetch(86 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 203 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 203 */
l_L2X3: ;/* line 206 */
LABEL(l_L2X3);
  sim_icache_fetch(88 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 209 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 209 */
l_L1X3: ;/* line 212 */
LABEL(l_L1X3);
  sim_icache_fetch(90 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_5); /* line 215 */
   RETURN(memcpy);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 215 */
  reg_l0_0 = t_client_rpc;
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 107: goto l_L0X3;
    case 108: goto l_L8X3;
    case 109: goto l_L7X3;
    case 110: goto l_L6X3;
    case 111: goto l_L5X3;
    case 112: goto l_L4X3;
    case 113: goto l_L3X3;
    case 114: goto l_L2X3;
    case 115: goto l_L1X3;
    case 116:
      reg_l0_0 = t_client_rpc;
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int strncmp( unsigned int arg0, unsigned int arg1, unsigned int arg2 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(strncmp);
  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_r0_5 =  arg2; 
  reg_l0_0 = (142 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(92 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_13, (unsigned int) 7); /* line 232 */
   MOV(reg_r0_12, (unsigned int) 6); /* line 233 */
} /* line 233 */
  sim_icache_fetch(94 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   MOV(reg_r0_11, (unsigned int) 5); /* line 235 */
   MOV(reg_r0_10, (unsigned int) 4); /* line 236 */
   MOV(reg_r0_9, (unsigned int) 3); /* line 237 */
   MOV(reg_r0_8, (unsigned int) 2); /* line 238 */
} /* line 238 */
  sim_icache_fetch(98 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   MOV(reg_r0_6, reg_r0_4); /* line 240 */
   MOV(reg_r0_4, reg_r0_3); /* line 241 */
   MOV(reg_r0_2, 0); /* line 242 */
   MOV(reg_r0_7, (unsigned int) 1); /* line 243 */
} /* line 243 */
  sim_icache_fetch(102 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, reg_r0_5); /* line 245 */
} /* line 245 */
l_L9X3: ;/* line 248 */
LABEL(l_L9X3);
  sim_icache_fetch(103 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLTU(reg_b0_0, reg_r0_2, reg_r0_3); /* line 249 */
   LDBs(reg_r0_5, mem_trace_ld(reg_r0_4,0,1)); /* line 250 */
   CMPLTU(reg_b0_1, reg_r0_7, reg_r0_3); /* line 251 */
   CMPLTU(reg_b0_2, reg_r0_8, reg_r0_3); /* line 252 */
} /* line 252 */
  sim_icache_fetch(107 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_14, mem_trace_ld(reg_r0_6,0,1)); /* line 254 */
   CMPLTU(reg_b0_3, reg_r0_9, reg_r0_3); /* line 255 */
   CMPLTU(reg_b0_4, reg_r0_10, reg_r0_3); /* line 256 */
   CMPLTU(reg_b0_5, reg_r0_11, reg_r0_3); /* line 257 */
} /* line 257 */
  sim_icache_fetch(111 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_15, mem_trace_ld((reg_r0_4 + (unsigned int) 1),0,1)); /* line 259 */
   CMPLTU(reg_b0_0, reg_r0_12, reg_r0_3); /* line 260 */
   CMPLTU(reg_b0_6, reg_r0_13, reg_r0_3); /* line 261 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L10X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 262 */
  sim_icache_fetch(115 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_16, mem_trace_ld((reg_r0_6 + (unsigned int) 1),0,1)); /* line 264 */
   ADD(reg_r0_9, reg_r0_9, (unsigned int) 8); /* line 265 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 8); /* line 266 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 8); /* line 267 */
} /* line 267 */
  sim_icache_fetch(119 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_6 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_7, reg_r0_5, reg_r0_14); /* line 269 */
   CMPGT(reg_b0_6, reg_r0_5, reg_r0_14); /* line 270 */
   LDBs(reg_r0_5, mem_trace_ld((reg_r0_4 + (unsigned int) 2),0,1)); /* line 271 */
   MFB(reg_r0_17, t__i32_0); /* line 272 */
} /* line 272 */
  sim_icache_fetch(123 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_14, mem_trace_ld((reg_r0_6 + (unsigned int) 2),0,1)); /* line 274 */
   ADD(reg_r0_12, reg_r0_12, (unsigned int) 8); /* line 275 */
   ADD(reg_r0_11, reg_r0_11, (unsigned int) 8); /* line 276 */
   ADD(reg_r0_10, reg_r0_10, (unsigned int) 8); /* line 277 */
} /* line 277 */
  sim_icache_fetch(127 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  unsigned int t__i32_1;
  t__i32_1 = reg_b0_7 ;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_7, reg_r0_15, reg_r0_16); /* line 279 */
   CMPGT(reg_b0_0, reg_r0_15, reg_r0_16); /* line 280 */
   MFB(reg_r0_18, t__i32_0); /* line 281 */
   if (t__i32_1) {    BRANCH(t__i32_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L11X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 282 */
  sim_icache_fetch(131 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_6 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_15, mem_trace_ld((reg_r0_4 + (unsigned int) 3),0,1)); /* line 284 */
   ADD(reg_r0_13, reg_r0_13, (unsigned int) 8); /* line 285 */
   MTB(reg_b0_6, reg_r0_18); /* line 286 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L12X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 287 */
  sim_icache_fetch(135 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  unsigned int t__i32_1;
  t__i32_0 = reg_b0_5 ;
  t__i32_1 = reg_b0_1 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_1, reg_r0_5, reg_r0_14); /* line 289 */
   CMPGT(reg_b0_5, reg_r0_5, reg_r0_14); /* line 290 */
   MFB(reg_r0_16, t__i32_0); /* line 291 */
   if (!t__i32_1) {    BRANCHF(t__i32_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L13X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 292 */
  sim_icache_fetch(139 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_7 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_5, mem_trace_ld((reg_r0_6 + (unsigned int) 3),0,1)); /* line 294 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 295 */
   MTB(reg_b0_7, reg_r0_16); /* line 296 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L14X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 297 */
  sim_icache_fetch(143 + t_thisfile.offset, 3);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   LDBs(reg_r0_14, mem_trace_ld((reg_r0_4 + (unsigned int) 4),0,1)); /* line 299 */
   MTB(reg_b0_0, reg_r0_17); /* line 300 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L15X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 301 */
  sim_icache_fetch(146 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDBs(reg_r0_16, mem_trace_ld((reg_r0_6 + (unsigned int) 4),0,1)); /* line 303 */
   if (!reg_b0_2) {    BRANCHF(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L16X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 304 */
  sim_icache_fetch(148 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_1 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_1, reg_r0_15, reg_r0_5); /* line 306 */
   CMPGT(reg_b0_2, reg_r0_15, reg_r0_5); /* line 307 */
   LDBs(reg_r0_5, mem_trace_ld((reg_r0_4 + (unsigned int) 5),0,1)); /* line 308 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L17X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 309 */
  sim_icache_fetch(152 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDBs(reg_r0_15, mem_trace_ld((reg_r0_6 + (unsigned int) 5),0,1)); /* line 311 */
   if (reg_b0_5) {    BRANCH(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L18X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 312 */
  sim_icache_fetch(154 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_3, reg_r0_14, reg_r0_16); /* line 314 */
   CMPGT(reg_b0_5, reg_r0_14, reg_r0_16); /* line 315 */
   LDBs(reg_r0_14, mem_trace_ld((reg_r0_4 + (unsigned int) 6),0,1)); /* line 316 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L19X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 317 */
  sim_icache_fetch(158 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDBs(reg_r0_16, mem_trace_ld((reg_r0_6 + (unsigned int) 6),0,1)); /* line 319 */
   if (reg_b0_1) {    BRANCH(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L20X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 320 */
  sim_icache_fetch(160 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_2 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_1, reg_r0_5, reg_r0_15); /* line 322 */
   CMPGT(reg_b0_2, reg_r0_5, reg_r0_15); /* line 323 */
   LDBs(reg_r0_5, mem_trace_ld((reg_r0_4 + (unsigned int) 7),0,1)); /* line 324 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L21X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 325 */
  sim_icache_fetch(164 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   LDBs(reg_r0_15, mem_trace_ld((reg_r0_6 + (unsigned int) 7),0,1)); /* line 327 */
   ADD(reg_r0_4, reg_r0_4, (unsigned int) 8); /* line 328 */
   ADD(reg_r0_6, reg_r0_6, (unsigned int) 8); /* line 329 */
   if (!reg_b0_4) {    BRANCHF(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L22X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 330 */
  sim_icache_fetch(168 + t_thisfile.offset, 3);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPLT(reg_b0_3, reg_r0_14, reg_r0_16); /* line 332 */
   CMPGT(reg_b0_4, reg_r0_14, reg_r0_16); /* line 333 */
   if (t__i32_0) {    BRANCH(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L23X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 334 */
  sim_icache_fetch(171 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_5) {    BRANCH(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L24X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 336 */
  sim_icache_fetch(172 + t_thisfile.offset, 3);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_7 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPLT(reg_b0_5, reg_r0_5, reg_r0_15); /* line 338 */
   CMPGT(reg_b0_7, reg_r0_5, reg_r0_15); /* line 339 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L25X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 340 */
  sim_icache_fetch(175 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_1) {    BRANCH(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L26X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 342 */
  sim_icache_fetch(176 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_2) {    BRANCH(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L27X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 344 */
  sim_icache_fetch(177 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_6) {    BRANCHF(reg_b0_6);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L28X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 346 */
  sim_icache_fetch(178 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_3) {    BRANCH(reg_b0_3);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L29X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 348 */
  sim_icache_fetch(179 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_4) {    BRANCH(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L30X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 350 */
  sim_icache_fetch(180 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L31X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 352 */
  sim_icache_fetch(181 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_5) {    BRANCH(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L32X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 354 */
  sim_icache_fetch(182 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_7) {    BRANCH(reg_b0_7);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L33X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 357 */
  sim_icache_fetch(183 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L9X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L9X3;
} /* line 359 */
l_L33X3: ;/* line 362 */
LABEL(l_L33X3);
  sim_icache_fetch(184 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1); /* line 365 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 365 */
l_L32X3: ;/* line 368 */
LABEL(l_L32X3);
  sim_icache_fetch(186 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1); /* line 371 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 371 */
l_L31X3: ;/* line 374 */
LABEL(l_L31X3);
  sim_icache_fetch(188 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 377 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 377 */
l_L30X3: ;/* line 380 */
LABEL(l_L30X3);
  sim_icache_fetch(190 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1); /* line 383 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 383 */
l_L29X3: ;/* line 386 */
LABEL(l_L29X3);
  sim_icache_fetch(192 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1); /* line 389 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 389 */
l_L28X3: ;/* line 392 */
LABEL(l_L28X3);
  sim_icache_fetch(194 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 395 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 395 */
l_L27X3: ;/* line 398 */
LABEL(l_L27X3);
  sim_icache_fetch(196 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1); /* line 401 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 401 */
l_L26X3: ;/* line 404 */
LABEL(l_L26X3);
  sim_icache_fetch(198 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1); /* line 407 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 407 */
l_L25X3: ;/* line 410 */
LABEL(l_L25X3);
  sim_icache_fetch(200 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 413 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 413 */
l_L24X3: ;/* line 416 */
LABEL(l_L24X3);
  sim_icache_fetch(202 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1); /* line 419 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 419 */
l_L23X3: ;/* line 422 */
LABEL(l_L23X3);
  sim_icache_fetch(204 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1); /* line 425 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 425 */
l_L22X3: ;/* line 428 */
LABEL(l_L22X3);
  sim_icache_fetch(206 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, 0); /* line 429 */
} /* line 429 */
  sim_icache_fetch(207 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 432 */
l_L21X3: ;/* line 435 */
LABEL(l_L21X3);
  sim_icache_fetch(208 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) 1); /* line 436 */
} /* line 436 */
  sim_icache_fetch(209 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 439 */
l_L20X3: ;/* line 442 */
LABEL(l_L20X3);
  sim_icache_fetch(210 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) -1); /* line 443 */
} /* line 443 */
  sim_icache_fetch(211 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 446 */
l_L19X3: ;/* line 449 */
LABEL(l_L19X3);
  sim_icache_fetch(212 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, 0); /* line 450 */
} /* line 450 */
  sim_icache_fetch(213 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 453 */
l_L18X3: ;/* line 456 */
LABEL(l_L18X3);
  sim_icache_fetch(214 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) 1); /* line 457 */
} /* line 457 */
  sim_icache_fetch(215 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 460 */
l_L17X3: ;/* line 463 */
LABEL(l_L17X3);
  sim_icache_fetch(216 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) -1); /* line 464 */
} /* line 464 */
  sim_icache_fetch(217 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 467 */
l_L16X3: ;/* line 470 */
LABEL(l_L16X3);
  sim_icache_fetch(218 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, 0); /* line 471 */
} /* line 471 */
  sim_icache_fetch(219 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 474 */
l_L15X3: ;/* line 477 */
LABEL(l_L15X3);
  sim_icache_fetch(220 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) 1); /* line 478 */
} /* line 478 */
  sim_icache_fetch(221 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 481 */
l_L14X3: ;/* line 484 */
LABEL(l_L14X3);
  sim_icache_fetch(222 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) -1); /* line 485 */
} /* line 485 */
  sim_icache_fetch(223 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 488 */
l_L13X3: ;/* line 491 */
LABEL(l_L13X3);
  sim_icache_fetch(224 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 494 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 494 */
l_L12X3: ;/* line 497 */
LABEL(l_L12X3);
  sim_icache_fetch(226 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, (unsigned int) 1); /* line 498 */
} /* line 498 */
  sim_icache_fetch(227 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 501 */
l_L11X3: ;/* line 504 */
LABEL(l_L11X3);
  sim_icache_fetch(228 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1); /* line 507 */
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 507 */
l_L10X3: ;/* line 510 */
LABEL(l_L10X3);
  sim_icache_fetch(230 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_3, 0); /* line 511 */
} /* line 511 */
  sim_icache_fetch(231 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(strncmp);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 514 */
  reg_l0_0 = t_client_rpc;
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 117: goto l_L9X3;
    case 118: goto l_L33X3;
    case 119: goto l_L32X3;
    case 120: goto l_L31X3;
    case 121: goto l_L30X3;
    case 122: goto l_L29X3;
    case 123: goto l_L28X3;
    case 124: goto l_L27X3;
    case 125: goto l_L26X3;
    case 126: goto l_L25X3;
    case 127: goto l_L24X3;
    case 128: goto l_L23X3;
    case 129: goto l_L22X3;
    case 130: goto l_L21X3;
    case 131: goto l_L20X3;
    case 132: goto l_L19X3;
    case 133: goto l_L18X3;
    case 134: goto l_L17X3;
    case 135: goto l_L16X3;
    case 136: goto l_L15X3;
    case 137: goto l_L14X3;
    case 138: goto l_L13X3;
    case 139: goto l_L12X3;
    case 140: goto l_L11X3;
    case 141: goto l_L10X3;
    case 142:
      reg_l0_0 = t_client_rpc;
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int rand(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(rand);
  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (143 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(232 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_2, mem_trace_ld((unsigned int) _X1PACKETX2,0,4)); /* line 530 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 531 */
   ADD_CYCLES(2);
} /* line 531 */
  sim_icache_fetch(235 + t_thisfile.offset, 5);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MULLU(reg_r0_4, reg_r0_2, (unsigned int) 1103515245); /* line 533 */
   MULHS(reg_r0_2, reg_r0_2, (unsigned int) 1103515245); /* line 534 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 535 */
   ADD_CYCLES(1);
} /* line 535 */
  sim_icache_fetch(240 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_4, reg_r0_4, reg_r0_2); /* line 537 */
} /* line 537 */
  sim_icache_fetch(241 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_4, reg_r0_4, (unsigned int) 12345); /* line 539 */
} /* line 539 */
  sim_icache_fetch(243 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((unsigned int) _X1PACKETX2,0,4), reg_r0_4); /* line 541 */
   SHRU(reg_r0_2, reg_r0_4, (unsigned int) 16); /* line 542 */
} /* line 542 */
  sim_icache_fetch(246 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   AND(reg_r0_3, reg_r0_2, (unsigned int) 32767); /* line 545 */
   RETURN(rand);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 546 */
  reg_l0_0 = t_client_rpc;
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 143:
      reg_l0_0 = t_client_rpc;
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern sim_result_0_t sin( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
  sim_result_0_t t_sim_result_0_t_0;
   ENTRY(sin);
  sim_check_stack(reg_r0_1, -128); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (198 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(249 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -128); /* line 563 */
} /* line 563 */
  sim_icache_fetch(250 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 565 */
} /* line 565 */
  sim_icache_fetch(251 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_57); /* line 567 */
} /* line 567 */
  sim_icache_fetch(252 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_57, reg_r0_3); /* line 569 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 48),0,4), reg_r0_58); /* line 570 */
} /* line 570 */
  sim_icache_fetch(254 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_58, reg_r0_4); /* line 572 */
} /* line 572 */
l_L34X3: ;/* line 575 */
LABEL(l_L34X3);
  sim_icache_fetch(255 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) 1075388923); /* line 576 */
   MOV(reg_r0_6, (unsigned int) 1413754136); /* line 577 */
} /* line 577 */
		 /* line 578 */
  sim_icache_fetch(259 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 581 */
   MOV(reg_r0_4, reg_r0_58); /* line 582 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_gt);
   reg_l0_0 = (198 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_gt;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 582 */
l_lr_45: ;/* line 582 */
LABEL(l_lr_45);
  sim_icache_fetch(263 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 584 */
   MOV(reg_r0_4, (unsigned int) 1413754136); /* line 585 */
   MOV(reg_r0_5, reg_r0_57); /* line 586 */
} /* line 586 */
  sim_icache_fetch(267 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1072094725); /* line 588 */
   MOV(reg_r0_6, reg_r0_58); /* line 589 */
} /* line 589 */
  sim_icache_fetch(270 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L35X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 591 */
		 /* line 592 */
  sim_icache_fetch(271 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 594 */
l_lr_47: ;/* line 594 */
LABEL(l_lr_47);
  sim_icache_fetch(273 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_57, reg_r0_3); /* line 596 */
   MOV(reg_r0_58, reg_r0_4); /* line 597 */
   GOTO(l_L34X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L34X3;
} /* line 598 */
l_L35X3: ;/* line 603 */
LABEL(l_L35X3);
  sim_icache_fetch(276 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 603 */
l_L36X3: ;/* line 606 */
LABEL(l_L36X3);
  sim_icache_fetch(277 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) -1072094725); /* line 607 */
   MOV(reg_r0_6, (unsigned int) 1413754136); /* line 608 */
} /* line 608 */
		 /* line 609 */
  sim_icache_fetch(281 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 612 */
   MOV(reg_r0_4, reg_r0_58); /* line 613 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_lt);
   reg_l0_0 = (198 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_lt;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 613 */
l_lr_51: ;/* line 613 */
LABEL(l_lr_51);
  sim_icache_fetch(285 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 615 */
   MOV(reg_r0_4, (unsigned int) 1413754136); /* line 616 */
   MOV(reg_r0_5, reg_r0_57); /* line 617 */
} /* line 617 */
  sim_icache_fetch(289 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1075388923); /* line 619 */
   MOV(reg_r0_6, reg_r0_58); /* line 620 */
} /* line 620 */
  sim_icache_fetch(292 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L37X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 622 */
		 /* line 623 */
  sim_icache_fetch(293 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 625 */
l_lr_53: ;/* line 625 */
LABEL(l_lr_53);
  sim_icache_fetch(295 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_57, reg_r0_3); /* line 627 */
   MOV(reg_r0_58, reg_r0_4); /* line 628 */
   GOTO(l_L36X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L36X3;
} /* line 629 */
l_L37X3: ;/* line 632 */
LABEL(l_L37X3);
  sim_icache_fetch(298 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 52),0,4), reg_r0_59); /* line 633 */
   MOV(reg_r0_3, (unsigned int) 1); /* line 634 */
} /* line 634 */
  sim_icache_fetch(300 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 56),0,4), reg_r0_60); /* line 636 */
} /* line 636 */
  sim_icache_fetch(301 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 60),0,4), reg_r0_61); /* line 638 */
} /* line 638 */
  sim_icache_fetch(302 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 64),0,4), reg_r0_62); /* line 640 */
} /* line 640 */
		 /* line 641 */
  sim_icache_fetch(303 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 68),0,4), reg_r0_63); /* line 644 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ilfloat);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int);
    t_FT *t_call = (t_FT*) _d_ilfloat;
    t_sim_result_0_t =     (*t_call)(reg_r0_3);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 644 */
l_lr_56: ;/* line 644 */
LABEL(l_lr_56);
  sim_icache_fetch(306 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 646 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 647 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 72),0,4), reg_r0_3); /* line 648 */
} /* line 648 */
		 /* line 649 */
  sim_icache_fetch(310 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 76),0,4), reg_r0_4); /* line 652 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 652 */
l_lr_58: ;/* line 652 */
LABEL(l_lr_58);
  sim_icache_fetch(313 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 654 */
   MOV(reg_r0_5, reg_r0_57); /* line 655 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 80),0,4), reg_r0_3); /* line 656 */
} /* line 656 */
  sim_icache_fetch(316 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_57); /* line 658 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 84),0,4), reg_r0_4); /* line 659 */
} /* line 659 */
		 /* line 660 */
  sim_icache_fetch(318 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, reg_r0_58); /* line 663 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 663 */
l_lr_60: ;/* line 663 */
LABEL(l_lr_60);
  sim_icache_fetch(321 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 88),0,4), reg_r0_3); /* line 665 */
} /* line 665 */
  sim_icache_fetch(322 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1072693248); /* line 667 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 92),0,4), reg_r0_4); /* line 668 */
} /* line 668 */
  sim_icache_fetch(325 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, 0); /* line 670 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 80),0,4)); /* line 671 */
} /* line 671 */
  sim_icache_fetch(327 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 84),0,4)); /* line 673 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 674 */
   ADD_CYCLES(1);
} /* line 674 */
		 /* line 675 */
  sim_icache_fetch(329 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 677 */
l_lr_62: ;/* line 677 */
LABEL(l_lr_62);
  sim_icache_fetch(331 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 96),0,4), reg_r0_3); /* line 679 */
} /* line 679 */
  sim_icache_fetch(332 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 100),0,4), reg_r0_4); /* line 681 */
} /* line 681 */
  sim_icache_fetch(333 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 88),0,4)); /* line 683 */
} /* line 683 */
  sim_icache_fetch(334 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 92),0,4)); /* line 685 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 686 */
   ADD_CYCLES(1);
} /* line 686 */
		 /* line 687 */
  sim_icache_fetch(336 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_neg);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_neg;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 689 */
l_lr_64: ;/* line 689 */
LABEL(l_lr_64);
  sim_icache_fetch(338 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 104),0,4), reg_r0_3); /* line 691 */
} /* line 691 */
  sim_icache_fetch(339 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 108),0,4), reg_r0_4); /* line 693 */
} /* line 693 */
  sim_icache_fetch(340 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 72),0,4)); /* line 695 */
} /* line 695 */
  sim_icache_fetch(341 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 76),0,4)); /* line 697 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 698 */
   ADD_CYCLES(1);
} /* line 698 */
		 /* line 699 */
  sim_icache_fetch(343 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 701 */
l_lr_66: ;/* line 701 */
LABEL(l_lr_66);
		 /* line 702 */
  sim_icache_fetch(345 + t_thisfile.offset, 5);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 705 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 706 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 706 */
l_lr_68: ;/* line 706 */
LABEL(l_lr_68);
  sim_icache_fetch(350 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 96),0,4)); /* line 708 */
} /* line 708 */
  sim_icache_fetch(351 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 100),0,4)); /* line 710 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 711 */
   ADD_CYCLES(1);
} /* line 711 */
		 /* line 712 */
  sim_icache_fetch(353 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 714 */
l_lr_70: ;/* line 714 */
LABEL(l_lr_70);
		 /* line 715 */
  sim_icache_fetch(355 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 718 */
   MOV(reg_r0_5, reg_r0_57); /* line 719 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 719 */
l_lr_72: ;/* line 719 */
LABEL(l_lr_72);
  sim_icache_fetch(359 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 721 */
   MOV(reg_r0_5, reg_r0_57); /* line 722 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_3); /* line 723 */
} /* line 723 */
		 /* line 724 */
  sim_icache_fetch(362 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_4); /* line 727 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 727 */
l_lr_74: ;/* line 727 */
LABEL(l_lr_74);
  sim_icache_fetch(365 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   MOV(reg_r0_59, (unsigned int) 2); /* line 729 */
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 104),0,4)); /* line 730 */
   MOV(reg_r0_62, reg_r0_3); /* line 731 */
   MOV(reg_r0_63, reg_r0_4); /* line 732 */
} /* line 732 */
  sim_icache_fetch(369 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 108),0,4)); /* line 734 */
} /* line 734 */
  sim_icache_fetch(370 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 736 */
} /* line 736 */
  sim_icache_fetch(371 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 738 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 739 */
   ADD_CYCLES(1);
} /* line 739 */
  sim_icache_fetch(373 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 740 */
l_L38X3: ;/* line 743 */
LABEL(l_L38X3);
		 /* line 743 */
  sim_icache_fetch(374 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 746 */
   MOV(reg_r0_4, reg_r0_58); /* line 747 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(fabs);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) fabs;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 747 */
l_lr_77: ;/* line 747 */
LABEL(l_lr_77);
  sim_icache_fetch(378 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) 1055193269); /* line 749 */
   MOV(reg_r0_6, (unsigned int) -1998362383); /* line 750 */
} /* line 750 */
		 /* line 751 */
  sim_icache_fetch(382 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ge);
   reg_l0_0 = (198 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_ge;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 753 */
l_lr_79: ;/* line 753 */
LABEL(l_lr_79);
  sim_icache_fetch(384 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 755 */
   MOV(reg_r0_3, reg_r0_59); /* line 756 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 757 */
   ADD_CYCLES(1);
} /* line 757 */
  sim_icache_fetch(387 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L39X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 759 */
		 /* line 760 */
  sim_icache_fetch(388 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ilfloat);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int);
    t_FT *t_call = (t_FT*) _d_ilfloat;
    t_sim_result_0_t =     (*t_call)(reg_r0_3);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 762 */
l_lr_81: ;/* line 762 */
LABEL(l_lr_81);
  sim_icache_fetch(390 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 764 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 765 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_3); /* line 766 */
} /* line 766 */
		 /* line 767 */
  sim_icache_fetch(394 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_4); /* line 770 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 770 */
l_lr_83: ;/* line 770 */
LABEL(l_lr_83);
  sim_icache_fetch(397 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, (unsigned int) 1072693248); /* line 772 */
   MOV(reg_r0_5, t__i32_0); /* line 773 */
   MOV(reg_r0_6, reg_r0_4); /* line 774 */
} /* line 774 */
		 /* line 775 */
  sim_icache_fetch(401 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, 0); /* line 778 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 778 */
l_lr_85: ;/* line 778 */
LABEL(l_lr_85);
  sim_icache_fetch(404 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 780 */
} /* line 780 */
  sim_icache_fetch(405 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_60); /* line 782 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_4); /* line 783 */
} /* line 783 */
  sim_icache_fetch(407 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, reg_r0_61); /* line 785 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 786 */
} /* line 786 */
  sim_icache_fetch(409 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 788 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 789 */
   ADD_CYCLES(1);
} /* line 789 */
		 /* line 790 */
  sim_icache_fetch(411 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 792 */
l_lr_87: ;/* line 792 */
LABEL(l_lr_87);
		 /* line 793 */
  sim_icache_fetch(413 + t_thisfile.offset, 5);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 796 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 797 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 797 */
l_lr_89: ;/* line 797 */
LABEL(l_lr_89);
  sim_icache_fetch(418 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 799 */
} /* line 799 */
  sim_icache_fetch(419 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 801 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 802 */
   ADD_CYCLES(1);
} /* line 802 */
		 /* line 803 */
  sim_icache_fetch(421 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 805 */
l_lr_91: ;/* line 805 */
LABEL(l_lr_91);
		 /* line 806 */
  sim_icache_fetch(423 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_57); /* line 809 */
   MOV(reg_r0_6, reg_r0_58); /* line 810 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 810 */
l_lr_93: ;/* line 810 */
LABEL(l_lr_93);
  sim_icache_fetch(427 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_62); /* line 812 */
   MOV(reg_r0_6, reg_r0_63); /* line 813 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_3); /* line 814 */
} /* line 814 */
		 /* line 815 */
  sim_icache_fetch(430 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_4); /* line 818 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (198 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 818 */
l_lr_95: ;/* line 818 */
LABEL(l_lr_95);
  sim_icache_fetch(433 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_59, reg_r0_59, (unsigned int) 1); /* line 820 */
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 821 */
   MOV(reg_r0_62, reg_r0_3); /* line 822 */
   MOV(reg_r0_63, reg_r0_4); /* line 823 */
} /* line 823 */
  sim_icache_fetch(437 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 825 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 826 */
   ADD_CYCLES(1);
} /* line 826 */
  sim_icache_fetch(439 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L38X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L38X3;
} /* line 828 */
l_L39X3: ;/* line 831 */
LABEL(l_L39X3);
  sim_icache_fetch(440 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_4, reg_r0_63); /* line 832 */
   MOV(reg_r0_3, reg_r0_62); /* line 833 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 834 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 835 */
   ADD_CYCLES(3);
} /* line 835 */
  sim_icache_fetch(444 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 837 */
} /* line 837 */
  sim_icache_fetch(445 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 48),0,4)); /* line 839 */
} /* line 839 */
  sim_icache_fetch(446 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 52),0,4)); /* line 841 */
} /* line 841 */
  sim_icache_fetch(447 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 56),0,4)); /* line 843 */
} /* line 843 */
  sim_icache_fetch(448 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 60),0,4)); /* line 845 */
} /* line 845 */
  sim_icache_fetch(449 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_62, mem_trace_ld((reg_r0_1 + (unsigned int) 64),0,4)); /* line 847 */
} /* line 847 */
  sim_icache_fetch(450 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_63, mem_trace_ld((reg_r0_1 + (unsigned int) 68),0,4)); /* line 849 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 850 */
   ADD_CYCLES(1);
} /* line 850 */
  sim_icache_fetch(452 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(sin);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 128; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 853 */
  reg_l0_0 = t_client_rpc;
  t_sim_result_0_t_0.alias0 = reg_r0_3;
  t_sim_result_0_t_0.alias1 = reg_r0_4;
  return t_sim_result_0_t_0;

labelfinder:
  switch (t_labelnum >> 5) {
    case 144: goto l_L34X3;
    case 146: goto l_lr_45;
    case 148: goto l_lr_47;
    case 149: goto l_L35X3;
    case 150: goto l_L36X3;
    case 152: goto l_lr_51;
    case 154: goto l_lr_53;
    case 155: goto l_L37X3;
    case 157: goto l_lr_56;
    case 159: goto l_lr_58;
    case 161: goto l_lr_60;
    case 163: goto l_lr_62;
    case 165: goto l_lr_64;
    case 167: goto l_lr_66;
    case 169: goto l_lr_68;
    case 171: goto l_lr_70;
    case 173: goto l_lr_72;
    case 175: goto l_lr_74;
    case 176: goto l_L38X3;
    case 178: goto l_lr_77;
    case 180: goto l_lr_79;
    case 182: goto l_lr_81;
    case 184: goto l_lr_83;
    case 186: goto l_lr_85;
    case 188: goto l_lr_87;
    case 190: goto l_lr_89;
    case 192: goto l_lr_91;
    case 194: goto l_lr_93;
    case 196: goto l_lr_95;
    case 197: goto l_L39X3;
    case 198:
      reg_l0_0 = t_client_rpc;
      t_sim_result_0_t_0.alias0 = reg_r0_3;
      t_sim_result_0_t_0.alias1 = reg_r0_4;
      return t_sim_result_0_t_0;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern sim_result_0_t cos( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
  sim_result_0_t t_sim_result_0_t_0;
   ENTRY(cos);
  sim_check_stack(reg_r0_1, -128); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (255 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(453 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -128); /* line 871 */
   MOV(reg_r0_6, reg_r0_4); /* line 872 */
   MOV(reg_r0_5, reg_r0_3); /* line 873 */
} /* line 873 */
  sim_icache_fetch(456 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 875 */
   MOV(reg_r0_3, (unsigned int) 1073291771); /* line 876 */
} /* line 876 */
  sim_icache_fetch(459 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_57); /* line 878 */
   MOV(reg_r0_4, (unsigned int) 1413754136); /* line 879 */
} /* line 879 */
		 /* line 880 */
  sim_icache_fetch(462 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 48),0,4), reg_r0_58); /* line 883 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 883 */
l_lr_99: ;/* line 883 */
LABEL(l_lr_99);
  sim_icache_fetch(465 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_57, reg_r0_3); /* line 885 */
   MOV(reg_r0_58, reg_r0_4); /* line 886 */
} /* line 886 */
l_L40X3: ;/* line 889 */
LABEL(l_L40X3);
  sim_icache_fetch(467 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) 1075388923); /* line 890 */
   MOV(reg_r0_6, (unsigned int) 1413754136); /* line 891 */
} /* line 891 */
		 /* line 892 */
  sim_icache_fetch(471 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 895 */
   MOV(reg_r0_4, reg_r0_58); /* line 896 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_gt);
   reg_l0_0 = (255 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_gt;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 896 */
l_lr_102: ;/* line 896 */
LABEL(l_lr_102);
  sim_icache_fetch(475 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 898 */
   MOV(reg_r0_4, (unsigned int) 1413754136); /* line 899 */
   MOV(reg_r0_5, reg_r0_57); /* line 900 */
} /* line 900 */
  sim_icache_fetch(479 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) -1072094725); /* line 902 */
   MOV(reg_r0_6, reg_r0_58); /* line 903 */
} /* line 903 */
  sim_icache_fetch(482 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L41X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 905 */
		 /* line 906 */
  sim_icache_fetch(483 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 908 */
l_lr_104: ;/* line 908 */
LABEL(l_lr_104);
  sim_icache_fetch(485 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_57, reg_r0_3); /* line 910 */
   MOV(reg_r0_58, reg_r0_4); /* line 911 */
   GOTO(l_L40X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L40X3;
} /* line 912 */
l_L41X3: ;/* line 917 */
LABEL(l_L41X3);
  sim_icache_fetch(488 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 917 */
l_L42X3: ;/* line 920 */
LABEL(l_L42X3);
  sim_icache_fetch(489 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) -1072094725); /* line 921 */
   MOV(reg_r0_6, (unsigned int) 1413754136); /* line 922 */
} /* line 922 */
		 /* line 923 */
  sim_icache_fetch(493 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 926 */
   MOV(reg_r0_4, reg_r0_58); /* line 927 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_lt);
   reg_l0_0 = (255 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_lt;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 927 */
l_lr_108: ;/* line 927 */
LABEL(l_lr_108);
  sim_icache_fetch(497 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 929 */
   MOV(reg_r0_4, (unsigned int) 1413754136); /* line 930 */
   MOV(reg_r0_5, reg_r0_57); /* line 931 */
} /* line 931 */
  sim_icache_fetch(501 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1075388923); /* line 933 */
   MOV(reg_r0_6, reg_r0_58); /* line 934 */
} /* line 934 */
  sim_icache_fetch(504 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L43X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 936 */
		 /* line 937 */
  sim_icache_fetch(505 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 939 */
l_lr_110: ;/* line 939 */
LABEL(l_lr_110);
  sim_icache_fetch(507 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_57, reg_r0_3); /* line 941 */
   MOV(reg_r0_58, reg_r0_4); /* line 942 */
   GOTO(l_L42X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L42X3;
} /* line 943 */
l_L43X3: ;/* line 946 */
LABEL(l_L43X3);
  sim_icache_fetch(510 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 52),0,4), reg_r0_59); /* line 947 */
   MOV(reg_r0_3, (unsigned int) 1); /* line 948 */
} /* line 948 */
  sim_icache_fetch(512 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 56),0,4), reg_r0_60); /* line 950 */
} /* line 950 */
  sim_icache_fetch(513 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 60),0,4), reg_r0_61); /* line 952 */
} /* line 952 */
  sim_icache_fetch(514 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 64),0,4), reg_r0_62); /* line 954 */
} /* line 954 */
		 /* line 955 */
  sim_icache_fetch(515 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 68),0,4), reg_r0_63); /* line 958 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ilfloat);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int);
    t_FT *t_call = (t_FT*) _d_ilfloat;
    t_sim_result_0_t =     (*t_call)(reg_r0_3);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 958 */
l_lr_113: ;/* line 958 */
LABEL(l_lr_113);
  sim_icache_fetch(518 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 960 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 961 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 72),0,4), reg_r0_3); /* line 962 */
} /* line 962 */
		 /* line 963 */
  sim_icache_fetch(522 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 76),0,4), reg_r0_4); /* line 966 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 966 */
l_lr_115: ;/* line 966 */
LABEL(l_lr_115);
  sim_icache_fetch(525 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 968 */
   MOV(reg_r0_5, reg_r0_57); /* line 969 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 80),0,4), reg_r0_3); /* line 970 */
} /* line 970 */
  sim_icache_fetch(528 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_57); /* line 972 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 84),0,4), reg_r0_4); /* line 973 */
} /* line 973 */
		 /* line 974 */
  sim_icache_fetch(530 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, reg_r0_58); /* line 977 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 977 */
l_lr_117: ;/* line 977 */
LABEL(l_lr_117);
  sim_icache_fetch(533 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 88),0,4), reg_r0_3); /* line 979 */
} /* line 979 */
  sim_icache_fetch(534 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 1072693248); /* line 981 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 92),0,4), reg_r0_4); /* line 982 */
} /* line 982 */
  sim_icache_fetch(537 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, 0); /* line 984 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 80),0,4)); /* line 985 */
} /* line 985 */
  sim_icache_fetch(539 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 84),0,4)); /* line 987 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 988 */
   ADD_CYCLES(1);
} /* line 988 */
		 /* line 989 */
  sim_icache_fetch(541 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 991 */
l_lr_119: ;/* line 991 */
LABEL(l_lr_119);
  sim_icache_fetch(543 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 96),0,4), reg_r0_3); /* line 993 */
} /* line 993 */
  sim_icache_fetch(544 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 100),0,4), reg_r0_4); /* line 995 */
} /* line 995 */
  sim_icache_fetch(545 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 88),0,4)); /* line 997 */
} /* line 997 */
  sim_icache_fetch(546 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 92),0,4)); /* line 999 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1000 */
   ADD_CYCLES(1);
} /* line 1000 */
		 /* line 1001 */
  sim_icache_fetch(548 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_neg);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_neg;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1003 */
l_lr_121: ;/* line 1003 */
LABEL(l_lr_121);
  sim_icache_fetch(550 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 104),0,4), reg_r0_3); /* line 1005 */
} /* line 1005 */
  sim_icache_fetch(551 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 108),0,4), reg_r0_4); /* line 1007 */
} /* line 1007 */
  sim_icache_fetch(552 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 72),0,4)); /* line 1009 */
} /* line 1009 */
  sim_icache_fetch(553 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 76),0,4)); /* line 1011 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1012 */
   ADD_CYCLES(1);
} /* line 1012 */
		 /* line 1013 */
  sim_icache_fetch(555 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1015 */
l_lr_123: ;/* line 1015 */
LABEL(l_lr_123);
		 /* line 1016 */
  sim_icache_fetch(557 + t_thisfile.offset, 5);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 1019 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 1020 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1020 */
l_lr_125: ;/* line 1020 */
LABEL(l_lr_125);
  sim_icache_fetch(562 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 96),0,4)); /* line 1022 */
} /* line 1022 */
  sim_icache_fetch(563 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 100),0,4)); /* line 1024 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1025 */
   ADD_CYCLES(1);
} /* line 1025 */
		 /* line 1026 */
  sim_icache_fetch(565 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1028 */
l_lr_127: ;/* line 1028 */
LABEL(l_lr_127);
		 /* line 1029 */
  sim_icache_fetch(567 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 1032 */
   MOV(reg_r0_5, reg_r0_57); /* line 1033 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1033 */
l_lr_129: ;/* line 1033 */
LABEL(l_lr_129);
  sim_icache_fetch(571 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, reg_r0_58); /* line 1035 */
   MOV(reg_r0_5, reg_r0_57); /* line 1036 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_3); /* line 1037 */
} /* line 1037 */
		 /* line 1038 */
  sim_icache_fetch(574 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_4); /* line 1041 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1041 */
l_lr_131: ;/* line 1041 */
LABEL(l_lr_131);
  sim_icache_fetch(577 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   MOV(reg_r0_59, (unsigned int) 2); /* line 1043 */
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 104),0,4)); /* line 1044 */
   MOV(reg_r0_62, reg_r0_3); /* line 1045 */
   MOV(reg_r0_63, reg_r0_4); /* line 1046 */
} /* line 1046 */
  sim_icache_fetch(581 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 108),0,4)); /* line 1048 */
} /* line 1048 */
  sim_icache_fetch(582 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1050 */
} /* line 1050 */
  sim_icache_fetch(583 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1052 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1053 */
   ADD_CYCLES(1);
} /* line 1053 */
  sim_icache_fetch(585 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 1054 */
l_L44X3: ;/* line 1057 */
LABEL(l_L44X3);
		 /* line 1057 */
  sim_icache_fetch(586 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_57); /* line 1060 */
   MOV(reg_r0_4, reg_r0_58); /* line 1061 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(fabs);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) fabs;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1061 */
l_lr_134: ;/* line 1061 */
LABEL(l_lr_134);
  sim_icache_fetch(590 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) 1055193269); /* line 1063 */
   MOV(reg_r0_6, (unsigned int) -1998362383); /* line 1064 */
} /* line 1064 */
		 /* line 1065 */
  sim_icache_fetch(594 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ge);
   reg_l0_0 = (255 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_ge;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 1067 */
l_lr_136: ;/* line 1067 */
LABEL(l_lr_136);
  sim_icache_fetch(596 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 1069 */
   MOV(reg_r0_3, reg_r0_59); /* line 1070 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1071 */
   ADD_CYCLES(1);
} /* line 1071 */
  sim_icache_fetch(599 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L45X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1073 */
		 /* line 1074 */
  sim_icache_fetch(600 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ilfloat);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int);
    t_FT *t_call = (t_FT*) _d_ilfloat;
    t_sim_result_0_t =     (*t_call)(reg_r0_3);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1076 */
l_lr_138: ;/* line 1076 */
LABEL(l_lr_138);
  sim_icache_fetch(602 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 1078 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 1079 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_3); /* line 1080 */
} /* line 1080 */
		 /* line 1081 */
  sim_icache_fetch(606 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_4); /* line 1084 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1084 */
l_lr_140: ;/* line 1084 */
LABEL(l_lr_140);
  sim_icache_fetch(609 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, (unsigned int) 1072693248); /* line 1086 */
   MOV(reg_r0_5, t__i32_0); /* line 1087 */
   MOV(reg_r0_6, reg_r0_4); /* line 1088 */
} /* line 1088 */
		 /* line 1089 */
  sim_icache_fetch(613 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, 0); /* line 1092 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1092 */
l_lr_142: ;/* line 1092 */
LABEL(l_lr_142);
  sim_icache_fetch(616 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 1094 */
} /* line 1094 */
  sim_icache_fetch(617 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, reg_r0_60); /* line 1096 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_4); /* line 1097 */
} /* line 1097 */
  sim_icache_fetch(619 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, reg_r0_61); /* line 1099 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1100 */
} /* line 1100 */
  sim_icache_fetch(621 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1102 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1103 */
   ADD_CYCLES(1);
} /* line 1103 */
		 /* line 1104 */
  sim_icache_fetch(623 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1106 */
l_lr_144: ;/* line 1106 */
LABEL(l_lr_144);
		 /* line 1107 */
  sim_icache_fetch(625 + t_thisfile.offset, 5);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 1110 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 1111 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1111 */
l_lr_146: ;/* line 1111 */
LABEL(l_lr_146);
  sim_icache_fetch(630 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1113 */
} /* line 1113 */
  sim_icache_fetch(631 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1115 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1116 */
   ADD_CYCLES(1);
} /* line 1116 */
		 /* line 1117 */
  sim_icache_fetch(633 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1119 */
l_lr_148: ;/* line 1119 */
LABEL(l_lr_148);
		 /* line 1120 */
  sim_icache_fetch(635 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_57); /* line 1123 */
   MOV(reg_r0_6, reg_r0_58); /* line 1124 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1124 */
l_lr_150: ;/* line 1124 */
LABEL(l_lr_150);
  sim_icache_fetch(639 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_62); /* line 1126 */
   MOV(reg_r0_6, reg_r0_63); /* line 1127 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_3); /* line 1128 */
} /* line 1128 */
		 /* line 1129 */
  sim_icache_fetch(642 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_4); /* line 1132 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (255 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1132 */
l_lr_152: ;/* line 1132 */
LABEL(l_lr_152);
  sim_icache_fetch(645 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_59, reg_r0_59, (unsigned int) 1); /* line 1134 */
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1135 */
   MOV(reg_r0_62, reg_r0_3); /* line 1136 */
   MOV(reg_r0_63, reg_r0_4); /* line 1137 */
} /* line 1137 */
  sim_icache_fetch(649 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1139 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1140 */
   ADD_CYCLES(1);
} /* line 1140 */
  sim_icache_fetch(651 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L44X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L44X3;
} /* line 1142 */
l_L45X3: ;/* line 1145 */
LABEL(l_L45X3);
  sim_icache_fetch(652 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_4, reg_r0_63); /* line 1146 */
   MOV(reg_r0_3, reg_r0_62); /* line 1147 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1148 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 1149 */
   ADD_CYCLES(3);
} /* line 1149 */
  sim_icache_fetch(656 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 1151 */
} /* line 1151 */
  sim_icache_fetch(657 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 48),0,4)); /* line 1153 */
} /* line 1153 */
  sim_icache_fetch(658 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 52),0,4)); /* line 1155 */
} /* line 1155 */
  sim_icache_fetch(659 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 56),0,4)); /* line 1157 */
} /* line 1157 */
  sim_icache_fetch(660 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 60),0,4)); /* line 1159 */
} /* line 1159 */
  sim_icache_fetch(661 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_62, mem_trace_ld((reg_r0_1 + (unsigned int) 64),0,4)); /* line 1161 */
} /* line 1161 */
  sim_icache_fetch(662 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_63, mem_trace_ld((reg_r0_1 + (unsigned int) 68),0,4)); /* line 1163 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1164 */
   ADD_CYCLES(1);
} /* line 1164 */
  sim_icache_fetch(664 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(cos);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 128; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1167 */
  reg_l0_0 = t_client_rpc;
  t_sim_result_0_t_0.alias0 = reg_r0_3;
  t_sim_result_0_t_0.alias1 = reg_r0_4;
  return t_sim_result_0_t_0;

labelfinder:
  switch (t_labelnum >> 5) {
    case 200: goto l_lr_99;
    case 201: goto l_L40X3;
    case 203: goto l_lr_102;
    case 205: goto l_lr_104;
    case 206: goto l_L41X3;
    case 207: goto l_L42X3;
    case 209: goto l_lr_108;
    case 211: goto l_lr_110;
    case 212: goto l_L43X3;
    case 214: goto l_lr_113;
    case 216: goto l_lr_115;
    case 218: goto l_lr_117;
    case 220: goto l_lr_119;
    case 222: goto l_lr_121;
    case 224: goto l_lr_123;
    case 226: goto l_lr_125;
    case 228: goto l_lr_127;
    case 230: goto l_lr_129;
    case 232: goto l_lr_131;
    case 233: goto l_L44X3;
    case 235: goto l_lr_134;
    case 237: goto l_lr_136;
    case 239: goto l_lr_138;
    case 241: goto l_lr_140;
    case 243: goto l_lr_142;
    case 245: goto l_lr_144;
    case 247: goto l_lr_146;
    case 249: goto l_lr_148;
    case 251: goto l_lr_150;
    case 253: goto l_lr_152;
    case 254: goto l_L45X3;
    case 255:
      reg_l0_0 = t_client_rpc;
      t_sim_result_0_t_0.alias0 = reg_r0_3;
      t_sim_result_0_t_0.alias1 = reg_r0_4;
      return t_sim_result_0_t_0;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern sim_result_0_t tan( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
  sim_result_0_t t_sim_result_0_t_0;
   ENTRY(tan);
  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (262 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(665 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 1185 */
} /* line 1185 */
  sim_icache_fetch(666 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1187 */
} /* line 1187 */
  sim_icache_fetch(667 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_4); /* line 1189 */
} /* line 1189 */
		 /* line 1190 */
  sim_icache_fetch(668 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_3); /* line 1193 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(cos);
   reg_l0_0 = (262 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) cos;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1193 */
l_lr_156: ;/* line 1193 */
LABEL(l_lr_156);
  sim_icache_fetch(671 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 1195 */
} /* line 1195 */
  sim_icache_fetch(672 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_4); /* line 1197 */
} /* line 1197 */
  sim_icache_fetch(673 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1199 */
} /* line 1199 */
  sim_icache_fetch(674 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1201 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1202 */
   ADD_CYCLES(1);
} /* line 1202 */
		 /* line 1203 */
  sim_icache_fetch(676 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(sin);
   reg_l0_0 = (262 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) sin;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1205 */
l_lr_158: ;/* line 1205 */
LABEL(l_lr_158);
  sim_icache_fetch(678 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1207 */
} /* line 1207 */
  sim_icache_fetch(679 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1209 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1210 */
   ADD_CYCLES(1);
} /* line 1210 */
		 /* line 1211 */
  sim_icache_fetch(681 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (262 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1213 */
l_lr_160: ;/* line 1213 */
LABEL(l_lr_160);
  sim_icache_fetch(683 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1215 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 1216 */
   ADD_CYCLES(3);
} /* line 1216 */
  sim_icache_fetch(685 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(tan);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1219 */
  reg_l0_0 = t_client_rpc;
  t_sim_result_0_t_0.alias0 = reg_r0_3;
  t_sim_result_0_t_0.alias1 = reg_r0_4;
  return t_sim_result_0_t_0;

labelfinder:
  switch (t_labelnum >> 5) {
    case 257: goto l_lr_156;
    case 259: goto l_lr_158;
    case 261: goto l_lr_160;
    case 262:
      reg_l0_0 = t_client_rpc;
      t_sim_result_0_t_0.alias0 = reg_r0_3;
      t_sim_result_0_t_0.alias1 = reg_r0_4;
      return t_sim_result_0_t_0;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern sim_result_0_t sqrt( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
  sim_result_0_t t_sim_result_0_t_0;
   ENTRY(sqrt);
  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (291 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(686 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 1237 */
   MOV(reg_r0_6, 0); /* line 1238 */
} /* line 1238 */
  sim_icache_fetch(688 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1240 */
   MOV(reg_r0_5, (unsigned int) 1076101120); /* line 1241 */
} /* line 1241 */
  sim_icache_fetch(691 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_4); /* line 1243 */
} /* line 1243 */
		 /* line 1244 */
  sim_icache_fetch(692 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_3); /* line 1247 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1247 */
l_lr_163: ;/* line 1247 */
LABEL(l_lr_163);
  sim_icache_fetch(695 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   MOV(reg_r0_2, 0); /* line 1249 */
   MOV(reg_r0_5, 0); /* line 1250 */
   MOV(reg_r0_6, 0); /* line 1251 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_3); /* line 1252 */
} /* line 1252 */
  sim_icache_fetch(699 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_4); /* line 1254 */
} /* line 1254 */
  sim_icache_fetch(700 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_2); /* line 1256 */
} /* line 1256 */
  sim_icache_fetch(701 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1258 */
} /* line 1258 */
  sim_icache_fetch(702 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1260 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1261 */
   ADD_CYCLES(1);
} /* line 1261 */
		 /* line 1262 */
  sim_icache_fetch(704 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_eq);
   reg_l0_0 = (291 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_eq;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 1264 */
l_lr_165: ;/* line 1264 */
LABEL(l_lr_165);
  sim_icache_fetch(706 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 1266 */
   MOV(reg_r0_4, 0); /* line 1267 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1268 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1269 */
   ADD_CYCLES(1);
} /* line 1269 */
  sim_icache_fetch(710 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 1271 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L46X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1272 */
  sim_icache_fetch(712 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 1273 */
l_L47X3: ;/* line 1275 */
LABEL(l_L47X3);
  sim_icache_fetch(713 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(sqrt);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1277 */
l_L46X3: ;/* line 1280 */
LABEL(l_L46X3);
  sim_icache_fetch(714 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_57); /* line 1281 */
} /* line 1281 */
  sim_icache_fetch(715 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_57, (unsigned int) -19); /* line 1283 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_58); /* line 1284 */
} /* line 1284 */
  sim_icache_fetch(717 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 48),0,4), reg_r0_59); /* line 1286 */
} /* line 1286 */
  sim_icache_fetch(718 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 52),0,4), reg_r0_60); /* line 1288 */
} /* line 1288 */
  sim_icache_fetch(719 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 56),0,4), reg_r0_61); /* line 1290 */
} /* line 1290 */
  sim_icache_fetch(720 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 60),0,4), reg_r0_62); /* line 1292 */
} /* line 1292 */
  sim_icache_fetch(721 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1294 */
} /* line 1294 */
  sim_icache_fetch(722 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1296 */
} /* line 1296 */
  sim_icache_fetch(723 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1298 */
} /* line 1298 */
  sim_icache_fetch(724 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1300 */
} /* line 1300 */
  sim_icache_fetch(725 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_62, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1302 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1303 */
   ADD_CYCLES(1);
} /* line 1303 */
  sim_icache_fetch(727 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 1304 */
l_L48X3: ;/* line 1307 */
LABEL(l_L48X3);
  sim_icache_fetch(728 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLT(reg_b0_0, reg_r0_57, 0); /* line 1308 */
   CMPEQ(reg_b0_1, reg_r0_58, 0); /* line 1309 */
   MOV(reg_r0_3, reg_r0_59); /* line 1310 */
   MOV(reg_r0_5, reg_r0_59); /* line 1311 */
} /* line 1311 */
  sim_icache_fetch(732 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, reg_r0_60); /* line 1313 */
   MOV(reg_r0_6, reg_r0_60); /* line 1314 */
} /* line 1314 */
  sim_icache_fetch(734 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L49X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1316 */
  sim_icache_fetch(735 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    BRANCHF(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L50X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1318 */
		 /* line 1319 */
  sim_icache_fetch(736 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1321 */
l_lr_170: ;/* line 1321 */
LABEL(l_lr_170);
  sim_icache_fetch(738 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, reg_r0_3); /* line 1323 */
   MOV(reg_r0_6, reg_r0_4); /* line 1324 */
} /* line 1324 */
		 /* line 1325 */
  sim_icache_fetch(740 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_61); /* line 1328 */
   MOV(reg_r0_4, reg_r0_62); /* line 1329 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_sub);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_sub;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1329 */
l_lr_172: ;/* line 1329 */
LABEL(l_lr_172);
		 /* line 1330 */
  sim_icache_fetch(744 + t_thisfile.offset, 5);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_6, 0); /* line 1333 */
   MOV(reg_r0_5, (unsigned int) 1073741824); /* line 1334 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1334 */
l_lr_174: ;/* line 1334 */
LABEL(l_lr_174);
		 /* line 1335 */
  sim_icache_fetch(749 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_59); /* line 1338 */
   MOV(reg_r0_6, reg_r0_60); /* line 1339 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_div);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_div;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1339 */
l_lr_176: ;/* line 1339 */
LABEL(l_lr_176);
		 /* line 1340 */
  sim_icache_fetch(753 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_5, reg_r0_59); /* line 1343 */
   MOV(reg_r0_6, reg_r0_60); /* line 1344 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_add);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_add;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1344 */
l_lr_178: ;/* line 1344 */
LABEL(l_lr_178);
  sim_icache_fetch(757 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_3); /* line 1346 */
   MOV(reg_r0_5, reg_r0_3); /* line 1347 */
   MOV(reg_r0_6, reg_r0_4); /* line 1348 */
} /* line 1348 */
		 /* line 1349 */
  sim_icache_fetch(760 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_4); /* line 1352 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1352 */
l_lr_180: ;/* line 1352 */
LABEL(l_lr_180);
  sim_icache_fetch(763 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, reg_r0_3); /* line 1354 */
   MOV(reg_r0_6, reg_r0_4); /* line 1355 */
} /* line 1355 */
		 /* line 1356 */
  sim_icache_fetch(765 + t_thisfile.offset, 4);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, reg_r0_61); /* line 1359 */
   MOV(reg_r0_4, reg_r0_62); /* line 1360 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_sub);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_sub;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1360 */
l_lr_182: ;/* line 1360 */
LABEL(l_lr_182);
		 /* line 1361 */
  sim_icache_fetch(769 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(fabs);
   reg_l0_0 = (291 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) fabs;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1363 */
l_lr_184: ;/* line 1363 */
LABEL(l_lr_184);
  sim_icache_fetch(771 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_5, (unsigned int) 1055193269); /* line 1365 */
   MOV(reg_r0_6, (unsigned int) -1998362383); /* line 1366 */
} /* line 1366 */
		 /* line 1367 */
  sim_icache_fetch(775 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_le);
   reg_l0_0 = (291 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_le;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
   }
} /* line 1369 */
l_lr_186: ;/* line 1369 */
LABEL(l_lr_186);
  sim_icache_fetch(777 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPEQ(reg_b0_0, reg_r0_3, 0); /* line 1371 */
   ADD(reg_r0_57, reg_r0_57, (unsigned int) 1); /* line 1372 */
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1373 */
} /* line 1373 */
  sim_icache_fetch(780 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_58, reg_b0_0, reg_r0_58, (unsigned int) 1); /* line 1375 */
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1376 */
} /* line 1376 */
l_L51X3: ;/* line 1378 */
LABEL(l_L51X3);
  sim_icache_fetch(782 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 1378 */
  sim_icache_fetch(783 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L48X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L48X3;
} /* line 1380 */
l_L50X3: ;/* line 1383 */
LABEL(l_L50X3);
  sim_icache_fetch(784 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_57, reg_r0_57, (unsigned int) 1); /* line 1384 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_60); /* line 1385 */
} /* line 1385 */
  sim_icache_fetch(786 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_59); /* line 1387 */
} /* line 1387 */
  sim_icache_fetch(787 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1389 */
} /* line 1389 */
  sim_icache_fetch(788 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1391 */
   GOTO(l_L51X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L51X3;
} /* line 1392 */
l_L49X3: ;/* line 1395 */
LABEL(l_L49X3);
  sim_icache_fetch(790 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_4, reg_r0_60); /* line 1396 */
   MOV(reg_r0_3, reg_r0_59); /* line 1397 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1398 */
} /* line 1398 */
  sim_icache_fetch(793 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1400 */
} /* line 1400 */
  sim_icache_fetch(794 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 1402 */
} /* line 1402 */
  sim_icache_fetch(795 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 48),0,4)); /* line 1404 */
} /* line 1404 */
  sim_icache_fetch(796 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_60, mem_trace_ld((reg_r0_1 + (unsigned int) 52),0,4)); /* line 1406 */
} /* line 1406 */
  sim_icache_fetch(797 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_61, mem_trace_ld((reg_r0_1 + (unsigned int) 56),0,4)); /* line 1408 */
} /* line 1408 */
  sim_icache_fetch(798 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_62, mem_trace_ld((reg_r0_1 + (unsigned int) 60),0,4)); /* line 1410 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1411 */
   ADD_CYCLES(1);
} /* line 1411 */
  sim_icache_fetch(800 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L47X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L47X3;
} /* line 1413 */
  reg_l0_0 = t_client_rpc;
  t_sim_result_0_t_0.alias0 = reg_r0_3;
  t_sim_result_0_t_0.alias1 = reg_r0_4;
  return t_sim_result_0_t_0;

labelfinder:
  switch (t_labelnum >> 5) {
    case 264: goto l_lr_163;
    case 266: goto l_lr_165;
    case 267: goto l_L47X3;
    case 268: goto l_L46X3;
    case 269: goto l_L48X3;
    case 271: goto l_lr_170;
    case 273: goto l_lr_172;
    case 275: goto l_lr_174;
    case 277: goto l_lr_176;
    case 279: goto l_lr_178;
    case 281: goto l_lr_180;
    case 283: goto l_lr_182;
    case 285: goto l_lr_184;
    case 287: goto l_lr_186;
    case 288: goto l_L51X3;
    case 289: goto l_L50X3;
    case 290: goto l_L49X3;
    case 291:
      reg_l0_0 = t_client_rpc;
      t_sim_result_0_t_0.alias0 = reg_r0_3;
      t_sim_result_0_t_0.alias1 = reg_r0_4;
      return t_sim_result_0_t_0;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  putc( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(putc);
  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (294 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(801 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 1431 */
   SXTB(reg_r0_3, reg_r0_3); /* line 1432 */
} /* line 1432 */
		 /* line 1433 */
  sim_icache_fetch(803 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1436 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(putchar);
   reg_l0_0 = (294 << 5);
   {
    typedef unsigned int t_FT (unsigned int);
    t_FT *t_call = (t_FT*) putchar;
    reg_r0_3 =     (*t_call)(reg_r0_3);
   }
} /* line 1436 */
l_lr_192: ;/* line 1436 */
LABEL(l_lr_192);
  sim_icache_fetch(806 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1438 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 1439 */
   ADD_CYCLES(3);
} /* line 1439 */
  sim_icache_fetch(808 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(putc);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1442 */
  reg_l0_0 = t_client_rpc;
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 293: goto l_lr_192;
    case 294:
      reg_l0_0 = t_client_rpc;
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  puts( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(puts);
  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (299 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(809 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 1459 */
} /* line 1459 */
  sim_icache_fetch(810 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1461 */
} /* line 1461 */
  sim_icache_fetch(811 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_57); /* line 1463 */
} /* line 1463 */
  sim_icache_fetch(812 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_57, reg_r0_3); /* line 1465 */
} /* line 1465 */
l_L52X3: ;/* line 1468 */
LABEL(l_L52X3);
  sim_icache_fetch(813 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDB(reg_r0_3, mem_trace_ld(reg_r0_57,0,1)); /* line 1469 */
   ADD(reg_r0_57, reg_r0_57, (unsigned int) 1); /* line 1470 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 1471 */
   ADD_CYCLES(2);
} /* line 1471 */
  sim_icache_fetch(816 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 1473 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1474 */
   ADD_CYCLES(1);
} /* line 1474 */
  sim_icache_fetch(818 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L53X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1476 */
		 /* line 1477 */
  sim_icache_fetch(819 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(putc);
   reg_l0_0 = (299 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) putc;
    (*t_call)(reg_r0_3);
   }
} /* line 1480 */
l_lr_196: ;/* line 1480 */
LABEL(l_lr_196);
  sim_icache_fetch(821 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L52X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L52X3;
} /* line 1482 */
l_L53X3: ;/* line 1485 */
LABEL(l_L53X3);
  sim_icache_fetch(822 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1486 */
} /* line 1486 */
  sim_icache_fetch(823 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1488 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 1489 */
   ADD_CYCLES(2);
} /* line 1489 */
  sim_icache_fetch(825 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(puts);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1492 */
  reg_l0_0 = t_client_rpc;
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 295: goto l_L52X3;
    case 297: goto l_lr_196;
    case 298: goto l_L53X3;
    case 299:
      reg_l0_0 = t_client_rpc;
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  puti( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(puti);
  sim_check_stack(reg_r0_1, -160); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (342 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(826 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -160); /* line 1510 */
   MOV(reg_r0_2, 0); /* line 1511 */
   CMPLT(reg_b0_0, reg_r0_3, 0); /* line 1512 */
} /* line 1512 */
  sim_icache_fetch(829 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_1, (unsigned int) 16); /* line 1514 */
   MOV(reg_r0_6, (unsigned int) 45); /* line 1515 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_l0_0); /* line 1516 */
} /* line 1516 */
  sim_icache_fetch(832 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_4, (unsigned int) 1000000000); /* line 1518 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_5); /* line 1519 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L54X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1520 */
  sim_icache_fetch(836 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   SUB(reg_r0_2, 0, reg_r0_3); /* line 1522 */
   MOV(reg_r0_7, (unsigned int) 1); /* line 1523 */
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_6); /* line 1524 */
} /* line 1524 */
l_L55X3: ;/* line 1526 */
LABEL(l_L55X3);
  sim_icache_fetch(839 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_2); /* line 1527 */
   MOV(reg_r0_3, reg_r0_2); /* line 1528 */
} /* line 1528 */
		 /* line 1529 */
  sim_icache_fetch(841 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_7); /* line 1532 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1532 */
l_lr_201: ;/* line 1532 */
LABEL(l_lr_201);
		 /* line 1533 */
  sim_icache_fetch(844 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1536 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1536 */
l_lr_203: ;/* line 1536 */
LABEL(l_lr_203);
  sim_icache_fetch(847 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1538 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_3); /* line 1539 */
} /* line 1539 */
  sim_icache_fetch(849 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1541 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1542 */
   ADD_CYCLES(1);
} /* line 1542 */
		 /* line 1543 */
  sim_icache_fetch(851 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1545 */
l_lr_205: ;/* line 1545 */
LABEL(l_lr_205);
		 /* line 1546 */
  sim_icache_fetch(853 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1549 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1549 */
l_lr_207: ;/* line 1549 */
LABEL(l_lr_207);
  sim_icache_fetch(856 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1551 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 48),0,4), reg_r0_3); /* line 1552 */
} /* line 1552 */
  sim_icache_fetch(858 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1554 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1555 */
   ADD_CYCLES(1);
} /* line 1555 */
		 /* line 1556 */
  sim_icache_fetch(860 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1558 */
l_lr_209: ;/* line 1558 */
LABEL(l_lr_209);
  sim_icache_fetch(862 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_3, (unsigned int) 48); /* line 1560 */
   MOV(reg_r0_4, (unsigned int) 100000000); /* line 1561 */
   LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 1562 */
} /* line 1562 */
  sim_icache_fetch(866 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 52),0,4), reg_r0_5); /* line 1564 */
} /* line 1564 */
  sim_icache_fetch(867 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1566 */
} /* line 1566 */
  sim_icache_fetch(868 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1568 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 48),0,4)); /* line 1569 */
} /* line 1569 */
  sim_icache_fetch(870 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_7, reg_r0_2); /* line 1571 */
   LDW(reg_r0_8, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1572 */
} /* line 1572 */
  sim_icache_fetch(872 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   CMPNE(reg_b0_0, reg_r0_7, (unsigned int) 48); /* line 1574 */
   ADD(reg_r0_9, reg_r0_5, (unsigned int) 1); /* line 1575 */
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1576 */
} /* line 1576 */
  sim_icache_fetch(875 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_11, reg_r0_6, (unsigned int) 48); /* line 1578 */
   SLCT(reg_r0_7, reg_b0_0, reg_r0_9, reg_r0_5); /* line 1579 */
   SLCT(reg_r0_10, reg_b0_0, reg_r0_9, 0); /* line 1580 */
} /* line 1580 */
  sim_icache_fetch(878 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SXTB(reg_r0_9, reg_r0_11); /* line 1582 */
   ADD(reg_r0_5, reg_r0_5, reg_r0_8); /* line 1583 */
   ADD(reg_r0_6, reg_r0_7, (unsigned int) 1); /* line 1584 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 56),0,4), reg_r0_7); /* line 1585 */
} /* line 1585 */
  sim_icache_fetch(882 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_7, reg_r0_9, (unsigned int) 48); /* line 1587 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 60),0,4), reg_r0_10); /* line 1588 */
} /* line 1588 */
  sim_icache_fetch(884 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 64),0,4), reg_r0_11); /* line 1590 */
} /* line 1590 */
  sim_icache_fetch(885 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 68),0,4), reg_r0_6); /* line 1592 */
} /* line 1592 */
  sim_icache_fetch(886 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 72),0,4), reg_r0_7); /* line 1594 */
} /* line 1594 */
		 /* line 1595 */
  sim_icache_fetch(887 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_2); /* line 1597 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1598 */
l_lr_211: ;/* line 1598 */
LABEL(l_lr_211);
		 /* line 1599 */
  sim_icache_fetch(890 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1602 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1602 */
l_lr_213: ;/* line 1602 */
LABEL(l_lr_213);
  sim_icache_fetch(893 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1604 */
   MOV(reg_r0_4, (unsigned int) 10000000); /* line 1605 */
   LDW(reg_r0_10, mem_trace_ld((reg_r0_1 + (unsigned int) 60),0,4)); /* line 1606 */
} /* line 1606 */
  sim_icache_fetch(897 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1608 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 56),0,4)); /* line 1609 */
} /* line 1609 */
  sim_icache_fetch(899 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1611 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 68),0,4)); /* line 1612 */
} /* line 1612 */
  sim_icache_fetch(901 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_10, reg_r0_2); /* line 1614 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1615 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1616 */
   ADD_CYCLES(1);
} /* line 1616 */
  sim_icache_fetch(904 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_7, reg_r0_6); /* line 1618 */
   SLCT(reg_r0_8, reg_b0_0, reg_r0_10, reg_r0_6); /* line 1619 */
} /* line 1619 */
  sim_icache_fetch(906 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_7, reg_r0_7, reg_r0_5); /* line 1621 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1622 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 76),0,4), reg_r0_2); /* line 1623 */
} /* line 1623 */
  sim_icache_fetch(909 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 80),0,4), reg_r0_8); /* line 1625 */
} /* line 1625 */
  sim_icache_fetch(910 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 84),0,4), reg_r0_6); /* line 1627 */
} /* line 1627 */
  sim_icache_fetch(911 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_7,0,1), reg_r0_3); /* line 1629 */
} /* line 1629 */
  sim_icache_fetch(912 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1631 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1632 */
   ADD_CYCLES(1);
} /* line 1632 */
		 /* line 1633 */
  sim_icache_fetch(914 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1635 */
l_lr_215: ;/* line 1635 */
LABEL(l_lr_215);
		 /* line 1636 */
  sim_icache_fetch(916 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1639 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1639 */
l_lr_217: ;/* line 1639 */
LABEL(l_lr_217);
  sim_icache_fetch(919 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1641 */
   MOV(reg_r0_4, (unsigned int) 1000000); /* line 1642 */
   LDW(reg_r0_8, mem_trace_ld((reg_r0_1 + (unsigned int) 80),0,4)); /* line 1643 */
} /* line 1643 */
  sim_icache_fetch(923 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1645 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 76),0,4)); /* line 1646 */
} /* line 1646 */
  sim_icache_fetch(925 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1648 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 84),0,4)); /* line 1649 */
} /* line 1649 */
  sim_icache_fetch(927 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_8, reg_r0_2); /* line 1651 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1652 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1653 */
   ADD_CYCLES(1);
} /* line 1653 */
  sim_icache_fetch(930 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_5, reg_r0_6); /* line 1655 */
   SLCT(reg_r0_9, reg_b0_0, reg_r0_8, reg_r0_6); /* line 1656 */
} /* line 1656 */
  sim_icache_fetch(932 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_5, reg_r0_7); /* line 1658 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1659 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 88),0,4), reg_r0_2); /* line 1660 */
} /* line 1660 */
  sim_icache_fetch(935 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 92),0,4), reg_r0_9); /* line 1662 */
} /* line 1662 */
  sim_icache_fetch(936 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 96),0,4), reg_r0_6); /* line 1664 */
} /* line 1664 */
  sim_icache_fetch(937 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 1666 */
} /* line 1666 */
  sim_icache_fetch(938 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1668 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1669 */
   ADD_CYCLES(1);
} /* line 1669 */
		 /* line 1670 */
  sim_icache_fetch(940 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1672 */
l_lr_219: ;/* line 1672 */
LABEL(l_lr_219);
		 /* line 1673 */
  sim_icache_fetch(942 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1676 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1676 */
l_lr_221: ;/* line 1676 */
LABEL(l_lr_221);
  sim_icache_fetch(945 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1678 */
   MOV(reg_r0_4, (unsigned int) 100000); /* line 1679 */
   LDW(reg_r0_9, mem_trace_ld((reg_r0_1 + (unsigned int) 92),0,4)); /* line 1680 */
} /* line 1680 */
  sim_icache_fetch(949 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1682 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 88),0,4)); /* line 1683 */
} /* line 1683 */
  sim_icache_fetch(951 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1685 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 96),0,4)); /* line 1686 */
} /* line 1686 */
  sim_icache_fetch(953 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_9, reg_r0_2); /* line 1688 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1689 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1690 */
   ADD_CYCLES(1);
} /* line 1690 */
  sim_icache_fetch(956 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_5, reg_r0_6); /* line 1692 */
   SLCT(reg_r0_8, reg_b0_0, reg_r0_9, reg_r0_6); /* line 1693 */
} /* line 1693 */
  sim_icache_fetch(958 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_5, reg_r0_7); /* line 1695 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1696 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 100),0,4), reg_r0_2); /* line 1697 */
} /* line 1697 */
  sim_icache_fetch(961 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 104),0,4), reg_r0_8); /* line 1699 */
} /* line 1699 */
  sim_icache_fetch(962 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 108),0,4), reg_r0_6); /* line 1701 */
} /* line 1701 */
  sim_icache_fetch(963 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 1703 */
} /* line 1703 */
  sim_icache_fetch(964 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1705 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1706 */
   ADD_CYCLES(1);
} /* line 1706 */
		 /* line 1707 */
  sim_icache_fetch(966 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1709 */
l_lr_223: ;/* line 1709 */
LABEL(l_lr_223);
		 /* line 1710 */
  sim_icache_fetch(968 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1713 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1713 */
l_lr_225: ;/* line 1713 */
LABEL(l_lr_225);
  sim_icache_fetch(971 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1715 */
   MOV(reg_r0_4, (unsigned int) 10000); /* line 1716 */
   LDW(reg_r0_8, mem_trace_ld((reg_r0_1 + (unsigned int) 104),0,4)); /* line 1717 */
} /* line 1717 */
  sim_icache_fetch(975 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1719 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 100),0,4)); /* line 1720 */
} /* line 1720 */
  sim_icache_fetch(977 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1722 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 108),0,4)); /* line 1723 */
} /* line 1723 */
  sim_icache_fetch(979 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_8, reg_r0_2); /* line 1725 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1726 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1727 */
   ADD_CYCLES(1);
} /* line 1727 */
  sim_icache_fetch(982 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_5, reg_r0_6); /* line 1729 */
   SLCT(reg_r0_9, reg_b0_0, reg_r0_8, reg_r0_6); /* line 1730 */
} /* line 1730 */
  sim_icache_fetch(984 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_5, reg_r0_7); /* line 1732 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1733 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 112),0,4), reg_r0_2); /* line 1734 */
} /* line 1734 */
  sim_icache_fetch(987 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 116),0,4), reg_r0_9); /* line 1736 */
} /* line 1736 */
  sim_icache_fetch(988 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 120),0,4), reg_r0_6); /* line 1738 */
} /* line 1738 */
  sim_icache_fetch(989 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 1740 */
} /* line 1740 */
  sim_icache_fetch(990 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1742 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1743 */
   ADD_CYCLES(1);
} /* line 1743 */
		 /* line 1744 */
  sim_icache_fetch(992 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1746 */
l_lr_227: ;/* line 1746 */
LABEL(l_lr_227);
		 /* line 1747 */
  sim_icache_fetch(994 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1750 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1750 */
l_lr_229: ;/* line 1750 */
LABEL(l_lr_229);
  sim_icache_fetch(997 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1752 */
   MOV(reg_r0_4, (unsigned int) 1000); /* line 1753 */
   LDW(reg_r0_9, mem_trace_ld((reg_r0_1 + (unsigned int) 116),0,4)); /* line 1754 */
} /* line 1754 */
  sim_icache_fetch(1001 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1756 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 112),0,4)); /* line 1757 */
} /* line 1757 */
  sim_icache_fetch(1003 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1759 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 120),0,4)); /* line 1760 */
} /* line 1760 */
  sim_icache_fetch(1005 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_9, reg_r0_2); /* line 1762 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1763 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1764 */
   ADD_CYCLES(1);
} /* line 1764 */
  sim_icache_fetch(1008 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_5, reg_r0_6); /* line 1766 */
   SLCT(reg_r0_8, reg_b0_0, reg_r0_9, reg_r0_6); /* line 1767 */
} /* line 1767 */
  sim_icache_fetch(1010 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_5, reg_r0_7); /* line 1769 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1770 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 124),0,4), reg_r0_2); /* line 1771 */
} /* line 1771 */
  sim_icache_fetch(1013 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 128),0,4), reg_r0_8); /* line 1773 */
} /* line 1773 */
  sim_icache_fetch(1014 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 132),0,4), reg_r0_6); /* line 1775 */
} /* line 1775 */
  sim_icache_fetch(1015 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 1777 */
} /* line 1777 */
  sim_icache_fetch(1016 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1779 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1780 */
   ADD_CYCLES(1);
} /* line 1780 */
		 /* line 1781 */
  sim_icache_fetch(1018 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1783 */
l_lr_231: ;/* line 1783 */
LABEL(l_lr_231);
		 /* line 1784 */
  sim_icache_fetch(1020 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1787 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1787 */
l_lr_233: ;/* line 1787 */
LABEL(l_lr_233);
  sim_icache_fetch(1023 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1789 */
   MOV(reg_r0_4, (unsigned int) 100); /* line 1790 */
   LDW(reg_r0_8, mem_trace_ld((reg_r0_1 + (unsigned int) 128),0,4)); /* line 1791 */
} /* line 1791 */
  sim_icache_fetch(1026 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1793 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 124),0,4)); /* line 1794 */
} /* line 1794 */
  sim_icache_fetch(1028 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1796 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 132),0,4)); /* line 1797 */
} /* line 1797 */
  sim_icache_fetch(1030 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_8, reg_r0_2); /* line 1799 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1800 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1801 */
   ADD_CYCLES(1);
} /* line 1801 */
  sim_icache_fetch(1033 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_2, reg_b0_0, reg_r0_5, reg_r0_6); /* line 1803 */
   SLCT(reg_r0_9, reg_b0_0, reg_r0_8, reg_r0_6); /* line 1804 */
} /* line 1804 */
  sim_icache_fetch(1035 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_5, reg_r0_5, reg_r0_7); /* line 1806 */
   ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1807 */
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 136),0,4), reg_r0_2); /* line 1808 */
} /* line 1808 */
  sim_icache_fetch(1038 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 140),0,4), reg_r0_9); /* line 1810 */
} /* line 1810 */
  sim_icache_fetch(1039 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 144),0,4), reg_r0_6); /* line 1812 */
} /* line 1812 */
  sim_icache_fetch(1040 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 1814 */
} /* line 1814 */
  sim_icache_fetch(1041 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1816 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1817 */
   ADD_CYCLES(1);
} /* line 1817 */
		 /* line 1818 */
  sim_icache_fetch(1043 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_div);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1820 */
l_lr_235: ;/* line 1820 */
LABEL(l_lr_235);
		 /* line 1821 */
  sim_icache_fetch(1045 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, (unsigned int) 10); /* line 1824 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_i_rem);
   reg_l0_0 = (342 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_rem;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1824 */
l_lr_237: ;/* line 1824 */
LABEL(l_lr_237);
  sim_icache_fetch(1048 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_3, reg_r0_3, (unsigned int) 48); /* line 1826 */
   LDW(reg_r0_9, mem_trace_ld((reg_r0_1 + (unsigned int) 140),0,4)); /* line 1827 */
} /* line 1827 */
  sim_icache_fetch(1050 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SXTB(reg_r0_2, reg_r0_3); /* line 1829 */
   LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 144),0,4)); /* line 1830 */
} /* line 1830 */
  sim_icache_fetch(1052 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 48); /* line 1832 */
   LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 72),0,4)); /* line 1833 */
} /* line 1833 */
  sim_icache_fetch(1054 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_0, reg_r0_9, reg_r0_2); /* line 1835 */
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 136),0,4)); /* line 1836 */
} /* line 1836 */
  sim_icache_fetch(1056 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_9, reg_b0_0, reg_r0_9, reg_r0_6); /* line 1838 */
   LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1839 */
} /* line 1839 */
  sim_icache_fetch(1058 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   NORL(reg_b0_1, reg_r0_9, reg_r0_7); /* line 1841 */
   LDW(reg_r0_11, mem_trace_ld((reg_r0_1 + (unsigned int) 64),0,4)); /* line 1842 */
} /* line 1842 */
  sim_icache_fetch(1060 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SLCT(reg_r0_6, reg_b0_0, reg_r0_4, reg_r0_6); /* line 1844 */
   LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 52),0,4)); /* line 1845 */
} /* line 1845 */
  sim_icache_fetch(1062 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_4, reg_r0_4, reg_r0_5); /* line 1847 */
   ADD(reg_r0_8, reg_r0_6, reg_r0_5); /* line 1848 */
   ADD(reg_r0_7, reg_r0_6, (unsigned int) 1); /* line 1849 */
} /* line 1849 */
  sim_icache_fetch(1065 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_4,0,1), reg_r0_3); /* line 1851 */
   SLCT(reg_r0_6, reg_b0_1, reg_r0_6, reg_r0_7); /* line 1852 */
} /* line 1852 */
  sim_icache_fetch(1067 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   STB(mem_trace_st(reg_r0_8,0,1), reg_r0_11); /* line 1854 */
   ADD(reg_r0_4, reg_r0_6, (unsigned int) 1); /* line 1855 */
   ADD(reg_r0_7, reg_r0_6, reg_r0_5); /* line 1856 */
   MOV(reg_r0_3, reg_r0_5); /* line 1857 */
} /* line 1857 */
  sim_icache_fetch(1071 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_4, reg_r0_4, reg_r0_5); /* line 1859 */
   STB(mem_trace_st(reg_r0_7,0,1), reg_r0_2); /* line 1860 */
} /* line 1860 */
		 /* line 1861 */
  sim_icache_fetch(1073 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STB(mem_trace_st(reg_r0_4,0,1), 0); /* line 1863 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(puts);
   reg_l0_0 = (342 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
} /* line 1864 */
l_lr_239: ;/* line 1864 */
LABEL(l_lr_239);
  sim_icache_fetch(1076 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1866 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 1867 */
   ADD_CYCLES(3);
} /* line 1867 */
  sim_icache_fetch(1078 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(puti);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 160; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1870 */
l_L54X3: ;/* line 1873 */
LABEL(l_L54X3);
  sim_icache_fetch(1079 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_7, reg_r0_2); /* line 1874 */
   MOV(reg_r0_2, reg_r0_3); /* line 1875 */
   GOTO(l_L55X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L55X3;
} /* line 1876 */
  reg_l0_0 = t_client_rpc;
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 300: goto l_L55X3;
    case 302: goto l_lr_201;
    case 304: goto l_lr_203;
    case 306: goto l_lr_205;
    case 308: goto l_lr_207;
    case 310: goto l_lr_209;
    case 312: goto l_lr_211;
    case 314: goto l_lr_213;
    case 316: goto l_lr_215;
    case 318: goto l_lr_217;
    case 320: goto l_lr_219;
    case 322: goto l_lr_221;
    case 324: goto l_lr_223;
    case 326: goto l_lr_225;
    case 328: goto l_lr_227;
    case 330: goto l_lr_229;
    case 332: goto l_lr_231;
    case 334: goto l_lr_233;
    case 336: goto l_lr_235;
    case 338: goto l_lr_237;
    case 340: goto l_lr_239;
    case 341: goto l_L54X3;
    case 342:
      reg_l0_0 = t_client_rpc;
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  putf( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(putf);
  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (361 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(1082 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 1895 */
} /* line 1895 */
  sim_icache_fetch(1083 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1897 */
} /* line 1897 */
  sim_icache_fetch(1084 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_4); /* line 1899 */
} /* line 1899 */
		 /* line 1900 */
  sim_icache_fetch(1085 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_3); /* line 1903 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_fix);
   reg_l0_0 = (361 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_fix;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1903 */
l_lr_243: ;/* line 1903 */
LABEL(l_lr_243);
		 /* line 1904 */
  sim_icache_fetch(1088 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 1907 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_ilfloat);
   reg_l0_0 = (361 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int);
    t_FT *t_call = (t_FT*) _d_ilfloat;
    t_sim_result_0_t =     (*t_call)(reg_r0_3);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1907 */
l_lr_245: ;/* line 1907 */
LABEL(l_lr_245);
  sim_icache_fetch(1091 + t_thisfile.offset, 3);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1909 */
   MOV(reg_r0_5, t__i32_0); /* line 1910 */
   MOV(reg_r0_6, reg_r0_4); /* line 1911 */
} /* line 1911 */
  sim_icache_fetch(1094 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1913 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1914 */
   ADD_CYCLES(1);
} /* line 1914 */
		 /* line 1915 */
  sim_icache_fetch(1096 + t_thisfile.offset, 2);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_sub);
   reg_l0_0 = (361 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_sub;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1917 */
l_lr_247: ;/* line 1917 */
LABEL(l_lr_247);
  sim_icache_fetch(1098 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_3 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, (unsigned int) 1093567616); /* line 1919 */
   MOV(reg_r0_5, t__i32_0); /* line 1920 */
   MOV(reg_r0_6, reg_r0_4); /* line 1921 */
} /* line 1921 */
		 /* line 1922 */
  sim_icache_fetch(1102 + t_thisfile.offset, 3);
{
  sim_result_0_t t_sim_result_0_t;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_4, 0); /* line 1925 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_mul);
   reg_l0_0 = (361 << 5);
   {
    typedef sim_result_0_t t_FT (unsigned int, unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_mul;
    t_sim_result_0_t =     (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5, reg_r0_6);
    reg_r0_3 = t_sim_result_0_t.alias0;
    reg_r0_4 = t_sim_result_0_t.alias1;
   }
} /* line 1925 */
l_lr_249: ;/* line 1925 */
LABEL(l_lr_249);
		 /* line 1926 */
  sim_icache_fetch(1105 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(_d_fix);
   reg_l0_0 = (361 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _d_fix;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
} /* line 1928 */
l_lr_251: ;/* line 1928 */
LABEL(l_lr_251);
		 /* line 1929 */
  sim_icache_fetch(1107 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(abs);
   reg_l0_0 = (361 << 5);
   {
    typedef unsigned int t_FT (unsigned int);
    t_FT *t_call = (t_FT*) abs;
    reg_r0_3 =     (*t_call)(reg_r0_3);
   }
} /* line 1931 */
l_lr_253: ;/* line 1931 */
LABEL(l_lr_253);
  sim_icache_fetch(1109 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_3); /* line 1933 */
} /* line 1933 */
  sim_icache_fetch(1110 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1935 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1936 */
   ADD_CYCLES(1);
} /* line 1936 */
		 /* line 1937 */
  sim_icache_fetch(1112 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(puti);
   reg_l0_0 = (361 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puti;
    (*t_call)(reg_r0_3);
   }
} /* line 1939 */
l_lr_255: ;/* line 1939 */
LABEL(l_lr_255);
		 /* line 1940 */
  sim_icache_fetch(1114 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) 46); /* line 1943 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(putc);
   reg_l0_0 = (361 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) putc;
    (*t_call)(reg_r0_3);
   }
} /* line 1943 */
l_lr_257: ;/* line 1943 */
LABEL(l_lr_257);
  sim_icache_fetch(1117 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1945 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 1946 */
   ADD_CYCLES(1);
} /* line 1946 */
		 /* line 1947 */
  sim_icache_fetch(1119 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(puti);
   reg_l0_0 = (361 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puti;
    (*t_call)(reg_r0_3);
   }
} /* line 1949 */
l_lr_259: ;/* line 1949 */
LABEL(l_lr_259);
  sim_icache_fetch(1121 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1951 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 1952 */
   ADD_CYCLES(3);
} /* line 1952 */
  sim_icache_fetch(1123 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(putf);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1955 */
  reg_l0_0 = t_client_rpc;
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 344: goto l_lr_243;
    case 346: goto l_lr_245;
    case 348: goto l_lr_247;
    case 350: goto l_lr_249;
    case 352: goto l_lr_251;
    case 354: goto l_lr_253;
    case 356: goto l_lr_255;
    case 358: goto l_lr_257;
    case 360: goto l_lr_259;
    case 361:
      reg_l0_0 = t_client_rpc;
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  blit( unsigned int arg0, unsigned int arg1, unsigned int arg2 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(blit);
  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_r0_5 =  arg2; 
  reg_l0_0 = (395 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(1124 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_15, reg_r0_3, (unsigned int) 5); /* line 1975 */
   SHRU(reg_r0_16, reg_r0_4, (unsigned int) 5); /* line 1976 */
} /* line 1976 */
  sim_icache_fetch(1126 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_17, reg_r0_15, (unsigned int) src); /* line 1978 */
   ADD(reg_r0_7, reg_r0_16, (unsigned int) dst); /* line 1979 */
} /* line 1979 */
  sim_icache_fetch(1130 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   AND(reg_r0_3, reg_r0_3, (unsigned int) 31); /* line 1981 */
   AND(reg_r0_4, reg_r0_4, (unsigned int) 31); /* line 1982 */
   LDWs(reg_r0_18, mem_trace_ld((reg_r0_15 + (unsigned int) src),0,4)); /* line 1983 */
} /* line 1983 */
  sim_icache_fetch(1134 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGTU(reg_b0_0, reg_r0_3, reg_r0_4); /* line 1985 */
   SUB(reg_r0_8, reg_r0_3, reg_r0_4); /* line 1986 */
   SUB(reg_r0_20, (unsigned int) 32, reg_r0_4); /* line 1987 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 1988 */
} /* line 1988 */
  sim_icache_fetch(1138 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_19 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   SHL(reg_r0_19, t__i32_0, reg_r0_20); /* line 1990 */
   SHRU(reg_r0_21, t__i32_0, reg_r0_3); /* line 1991 */
   LDWs(reg_r0_16, mem_trace_ld((reg_r0_16 + (unsigned int) dst),0,4)); /* line 1992 */
} /* line 1992 */
  sim_icache_fetch(1142 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_18 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_18, reg_r0_4, (unsigned int) 32); /* line 1994 */
   AND(reg_r0_21, reg_r0_21, t__i32_0); /* line 1995 */
   ADD(reg_r0_14, reg_r0_5, (unsigned int) -192); /* line 1996 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L56X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 1997 */
  sim_icache_fetch(1146 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_4, reg_r0_18, reg_r0_3); /* line 1999 */
   SHL(reg_r0_21, reg_r0_21, reg_r0_8); /* line 2000 */
   ADD(reg_r0_13, reg_r0_5, (unsigned int) -160); /* line 2001 */
   ADD(reg_r0_12, reg_r0_5, (unsigned int) -128); /* line 2002 */
} /* line 2002 */
  sim_icache_fetch(1150 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   AND(reg_r0_19, reg_r0_19, reg_r0_16); /* line 2004 */
   ADD(reg_r0_9, reg_r0_5, (unsigned int) -32); /* line 2005 */
   ADD(reg_r0_11, reg_r0_5, (unsigned int) -96); /* line 2006 */
   ADD(reg_r0_10, reg_r0_5, (unsigned int) -64); /* line 2007 */
} /* line 2007 */
  sim_icache_fetch(1154 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_5 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   OR(reg_r0_5, reg_r0_19, reg_r0_21); /* line 2009 */
   ADD(reg_r0_2, reg_r0_15, ((unsigned int) src + (unsigned int) 4)); /* line 2010 */
   MOV(reg_r0_6, t__i32_0); /* line 2011 */
} /* line 2011 */
  sim_icache_fetch(1158 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
} /* line 2012 */
l_L57X3: ;/* line 2015 */
LABEL(l_L57X3);
  sim_icache_fetch(1159 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_0, reg_r0_6, (unsigned int) 32); /* line 2016 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_2,0,4)); /* line 2017 */
   CMPGEU(reg_b0_1, reg_r0_9, (unsigned int) 32); /* line 2018 */
   CMPGEU(reg_b0_2, reg_r0_10, (unsigned int) 32); /* line 2019 */
} /* line 2019 */
  sim_icache_fetch(1163 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_3, reg_r0_11, (unsigned int) 32); /* line 2021 */
   CMPGEU(reg_b0_4, reg_r0_12, (unsigned int) 32); /* line 2022 */
   CMPGEU(reg_b0_5, reg_r0_13, (unsigned int) 32); /* line 2023 */
   CMPGEU(reg_b0_6, reg_r0_14, (unsigned int) 32); /* line 2024 */
} /* line 2024 */
  sim_icache_fetch(1167 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_12, reg_r0_12, (unsigned int) -224); /* line 2026 */
   ADD(reg_r0_11, reg_r0_11, (unsigned int) -224); /* line 2027 */
   ADD(reg_r0_10, reg_r0_10, (unsigned int) -224); /* line 2028 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L58X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2029 */
  sim_icache_fetch(1171 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SHRU(reg_r0_15, reg_r0_3, reg_r0_4); /* line 2031 */
   SHL(reg_r0_3, reg_r0_3, reg_r0_8); /* line 2032 */
   ADD(reg_r0_14, reg_r0_14, (unsigned int) -224); /* line 2033 */
   ADD(reg_r0_13, reg_r0_13, (unsigned int) -224); /* line 2034 */
} /* line 2034 */
  sim_icache_fetch(1175 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   OR(reg_r0_15, reg_r0_15, reg_r0_5); /* line 2036 */
   ADD(reg_r0_9, reg_r0_9, (unsigned int) -224); /* line 2037 */
} /* line 2037 */
  sim_icache_fetch(1177 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_15); /* line 2039 */
   if (!reg_b0_1) {    BRANCHF(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L59X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2040 */
  sim_icache_fetch(1179 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_15, mem_trace_ld((reg_r0_2 + (unsigned int) 4),0,4)); /* line 2042 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2043 */
   ADD_CYCLES(2);
} /* line 2043 */
  sim_icache_fetch(1181 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_15, reg_r0_4); /* line 2045 */
   SHL(reg_r0_15, reg_r0_15, reg_r0_8); /* line 2046 */
} /* line 2046 */
  sim_icache_fetch(1183 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_3, reg_r0_3, reg_r0_16); /* line 2048 */
} /* line 2048 */
  sim_icache_fetch(1184 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 4),0,4), reg_r0_3); /* line 2050 */
   if (!reg_b0_2) {    BRANCHF(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L60X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2051 */
  sim_icache_fetch(1186 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 8),0,4)); /* line 2053 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2054 */
   ADD_CYCLES(2);
} /* line 2054 */
  sim_icache_fetch(1188 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_3, reg_r0_4); /* line 2056 */
   SHL(reg_r0_3, reg_r0_3, reg_r0_8); /* line 2057 */
} /* line 2057 */
  sim_icache_fetch(1190 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_15, reg_r0_15, reg_r0_16); /* line 2059 */
} /* line 2059 */
  sim_icache_fetch(1191 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 8),0,4), reg_r0_15); /* line 2061 */
   if (!reg_b0_3) {    BRANCHF(reg_b0_3);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L61X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2062 */
  sim_icache_fetch(1193 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_15, mem_trace_ld((reg_r0_2 + (unsigned int) 12),0,4)); /* line 2064 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2065 */
   ADD_CYCLES(2);
} /* line 2065 */
  sim_icache_fetch(1195 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_15, reg_r0_4); /* line 2067 */
   SHL(reg_r0_15, reg_r0_15, reg_r0_8); /* line 2068 */
} /* line 2068 */
  sim_icache_fetch(1197 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_3, reg_r0_3, reg_r0_16); /* line 2070 */
} /* line 2070 */
  sim_icache_fetch(1198 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 12),0,4), reg_r0_3); /* line 2072 */
   if (!reg_b0_4) {    BRANCHF(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L62X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2073 */
  sim_icache_fetch(1200 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 16),0,4)); /* line 2075 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2076 */
   ADD_CYCLES(2);
} /* line 2076 */
  sim_icache_fetch(1202 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_3, reg_r0_4); /* line 2078 */
   SHL(reg_r0_3, reg_r0_3, reg_r0_8); /* line 2079 */
} /* line 2079 */
  sim_icache_fetch(1204 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_15, reg_r0_15, reg_r0_16); /* line 2081 */
} /* line 2081 */
  sim_icache_fetch(1205 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 16),0,4), reg_r0_15); /* line 2083 */
   if (!reg_b0_5) {    BRANCHF(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L63X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2084 */
  sim_icache_fetch(1207 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_15, mem_trace_ld((reg_r0_2 + (unsigned int) 20),0,4)); /* line 2086 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2087 */
   ADD_CYCLES(2);
} /* line 2087 */
  sim_icache_fetch(1209 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_15, reg_r0_4); /* line 2089 */
   SHL(reg_r0_15, reg_r0_15, reg_r0_8); /* line 2090 */
} /* line 2090 */
  sim_icache_fetch(1211 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_3, reg_r0_3, reg_r0_16); /* line 2092 */
} /* line 2092 */
  sim_icache_fetch(1212 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 20),0,4), reg_r0_3); /* line 2094 */
   if (!reg_b0_6) {    BRANCHF(reg_b0_6);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L64X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2095 */
  sim_icache_fetch(1214 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 24),0,4)); /* line 2097 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 28); /* line 2098 */
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -224); /* line 2099 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2100 */
   ADD_CYCLES(2);
} /* line 2100 */
  sim_icache_fetch(1218 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_3, reg_r0_4); /* line 2102 */
   SHL(reg_r0_5, reg_r0_3, reg_r0_8); /* line 2103 */
} /* line 2103 */
  sim_icache_fetch(1220 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_15, reg_r0_15, reg_r0_16); /* line 2105 */
} /* line 2105 */
  sim_icache_fetch(1221 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 24),0,4), reg_r0_15); /* line 2107 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 28); /* line 2108 */
   GOTO(l_L57X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L57X3;
} /* line 2109 */
l_L64X3: ;/* line 2112 */
LABEL(l_L64X3);
  sim_icache_fetch(1224 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -192); /* line 2113 */
   MOV(reg_r0_5, reg_r0_15); /* line 2114 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 24); /* line 2115 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2116 */
} /* line 2116 */
  sim_icache_fetch(1228 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2118 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2119 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2120 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2121 */
l_L63X3: ;/* line 2124 */
LABEL(l_L63X3);
  sim_icache_fetch(1232 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -160); /* line 2125 */
   MOV(reg_r0_5, reg_r0_3); /* line 2126 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 20); /* line 2127 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2128 */
} /* line 2128 */
  sim_icache_fetch(1236 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2130 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2131 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2132 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2133 */
l_L62X3: ;/* line 2136 */
LABEL(l_L62X3);
  sim_icache_fetch(1240 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -128); /* line 2137 */
   MOV(reg_r0_5, reg_r0_15); /* line 2138 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 16); /* line 2139 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2140 */
} /* line 2140 */
  sim_icache_fetch(1244 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2142 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2143 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2144 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2145 */
l_L61X3: ;/* line 2148 */
LABEL(l_L61X3);
  sim_icache_fetch(1248 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -96); /* line 2149 */
   MOV(reg_r0_5, reg_r0_3); /* line 2150 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 12); /* line 2151 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2152 */
} /* line 2152 */
  sim_icache_fetch(1252 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2154 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2155 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2156 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2157 */
l_L60X3: ;/* line 2160 */
LABEL(l_L60X3);
  sim_icache_fetch(1256 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -64); /* line 2161 */
   MOV(reg_r0_5, reg_r0_15); /* line 2162 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 2163 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2164 */
} /* line 2164 */
  sim_icache_fetch(1260 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2166 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2167 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2168 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2169 */
l_L59X3: ;/* line 2172 */
LABEL(l_L59X3);
  sim_icache_fetch(1264 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -32); /* line 2173 */
   MOV(reg_r0_5, reg_r0_3); /* line 2174 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 4); /* line 2175 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2176 */
} /* line 2176 */
  sim_icache_fetch(1268 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2178 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2179 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2180 */
   GOTO(l_L65X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L65X3;
} /* line 2181 */
l_L58X3: ;/* line 2186 */
LABEL(l_L58X3);
  sim_icache_fetch(1272 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 32); /* line 2187 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2188 */
} /* line 2188 */
  sim_icache_fetch(1274 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_8, reg_r0_8, reg_r0_6); /* line 2191 */
   LDW(reg_r0_2, mem_trace_ld(reg_r0_7,0,4)); /* line 2192 */
} /* line 2192 */
l_L65X3: ;/* line 2194 */
LABEL(l_L65X3);
  sim_icache_fetch(1276 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   SHL(reg_r0_19, reg_r0_19, reg_r0_8); /* line 2195 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2196 */
   ADD_CYCLES(1);
} /* line 2196 */
  sim_icache_fetch(1278 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   AND(reg_r0_19, reg_r0_19, reg_r0_2); /* line 2198 */
} /* line 2198 */
  sim_icache_fetch(1279 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_19, reg_r0_19, reg_r0_5); /* line 2200 */
} /* line 2200 */
  sim_icache_fetch(1280 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_19); /* line 2203 */
   RETURN(blit);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2204 */
l_L56X3: ;/* line 2207 */
LABEL(l_L56X3);
  sim_icache_fetch(1282 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPLTU(reg_b0_0, reg_r0_3, reg_r0_4); /* line 2208 */
   SUB(reg_r0_20, (unsigned int) 32, reg_r0_4); /* line 2209 */
   LDWs(reg_r0_18, mem_trace_ld(reg_r0_17,0,4)); /* line 2210 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2211 */
} /* line 2211 */
  sim_icache_fetch(1286 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  unsigned int t__i32_1;
  t__i32_0 = reg_r0_20 ;
  t__i32_1 = reg_r0_19 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_20, reg_r0_3, (unsigned int) 32); /* line 2213 */
   SHL(reg_r0_19, t__i32_1, t__i32_0); /* line 2214 */
   SHRU(reg_r0_16, t__i32_1, reg_r0_3); /* line 2215 */
   LDWs(reg_r0_21, mem_trace_ld(reg_r0_7,0,4)); /* line 2216 */
} /* line 2216 */
  sim_icache_fetch(1290 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_9, reg_r0_20, reg_r0_4); /* line 2218 */
   ADD(reg_r0_15, reg_r0_5, (unsigned int) -192); /* line 2219 */
   ADD(reg_r0_14, reg_r0_5, (unsigned int) -160); /* line 2220 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L66X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2221 */
  sim_icache_fetch(1294 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   AND(reg_r0_2, reg_r0_16, reg_r0_18); /* line 2223 */
   ADD(reg_r0_13, reg_r0_5, (unsigned int) -128); /* line 2224 */
   ADD(reg_r0_12, reg_r0_5, (unsigned int) -96); /* line 2225 */
   ADD(reg_r0_11, reg_r0_5, (unsigned int) -64); /* line 2226 */
} /* line 2226 */
  sim_icache_fetch(1298 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_r0_5 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_3, reg_r0_4, reg_r0_3); /* line 2228 */
   AND(reg_r0_5, reg_r0_19, reg_r0_21); /* line 2229 */
   ADD(reg_r0_8, reg_r0_17, (unsigned int) 4); /* line 2230 */
   MOV(reg_r0_6, t__i32_0); /* line 2231 */
} /* line 2231 */
  sim_icache_fetch(1302 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_10, reg_r0_6, (unsigned int) -32); /* line 2233 */
} /* line 2233 */
l_L67X3: ;/* line 2236 */
LABEL(l_L67X3);
  sim_icache_fetch(1303 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_0, reg_r0_6, (unsigned int) 32); /* line 2237 */
   SHRU(reg_r0_4, reg_r0_2, reg_r0_3); /* line 2238 */
   SHL(reg_r0_2, reg_r0_2, reg_r0_9); /* line 2239 */
   CMPGEU(reg_b0_1, reg_r0_10, (unsigned int) 32); /* line 2240 */
} /* line 2240 */
  sim_icache_fetch(1307 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   OR(reg_r0_4, reg_r0_4, reg_r0_5); /* line 2242 */
   CMPGEU(reg_b0_2, reg_r0_11, (unsigned int) 32); /* line 2243 */
   CMPGEU(reg_b0_3, reg_r0_12, (unsigned int) 32); /* line 2244 */
   CMPGEU(reg_b0_4, reg_r0_13, (unsigned int) 32); /* line 2245 */
} /* line 2245 */
  sim_icache_fetch(1311 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_0, reg_r0_14, (unsigned int) 32); /* line 2247 */
   CMPGEU(reg_b0_5, reg_r0_15, (unsigned int) 32); /* line 2248 */
   ADD(reg_r0_11, reg_r0_11, (unsigned int) -224); /* line 2249 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L68X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2250 */
  sim_icache_fetch(1315 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_15, reg_r0_15, (unsigned int) -224); /* line 2252 */
   ADD(reg_r0_14, reg_r0_14, (unsigned int) -224); /* line 2253 */
   ADD(reg_r0_13, reg_r0_13, (unsigned int) -224); /* line 2254 */
   ADD(reg_r0_12, reg_r0_12, (unsigned int) -224); /* line 2255 */
} /* line 2255 */
  sim_icache_fetch(1319 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_4); /* line 2257 */
   ADD(reg_r0_10, reg_r0_10, (unsigned int) -224); /* line 2258 */
} /* line 2258 */
  sim_icache_fetch(1321 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld(reg_r0_8,0,4)); /* line 2260 */
   if (!reg_b0_1) {    BRANCHF(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L69X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2261 */
  sim_icache_fetch(1323 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2263 */
   ADD_CYCLES(1);
} /* line 2263 */
  sim_icache_fetch(1324 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_16, reg_r0_4, reg_r0_3); /* line 2265 */
   SHL(reg_r0_4, reg_r0_4, reg_r0_9); /* line 2266 */
} /* line 2266 */
  sim_icache_fetch(1326 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_2, reg_r0_2, reg_r0_16); /* line 2268 */
} /* line 2268 */
  sim_icache_fetch(1327 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 4),0,4), reg_r0_2); /* line 2270 */
} /* line 2270 */
  sim_icache_fetch(1328 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_16, mem_trace_ld((reg_r0_8 + (unsigned int) 4),0,4)); /* line 2272 */
   if (!reg_b0_2) {    BRANCHF(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L70X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2273 */
  sim_icache_fetch(1330 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2275 */
   ADD_CYCLES(1);
} /* line 2275 */
  sim_icache_fetch(1331 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_17, reg_r0_16, reg_r0_3); /* line 2277 */
   SHL(reg_r0_16, reg_r0_16, reg_r0_9); /* line 2278 */
} /* line 2278 */
  sim_icache_fetch(1333 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_4, reg_r0_4, reg_r0_17); /* line 2280 */
} /* line 2280 */
  sim_icache_fetch(1334 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 8),0,4), reg_r0_4); /* line 2282 */
} /* line 2282 */
  sim_icache_fetch(1335 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_8 + (unsigned int) 8),0,4)); /* line 2284 */
   if (!reg_b0_3) {    BRANCHF(reg_b0_3);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L71X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2285 */
  sim_icache_fetch(1337 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2287 */
   ADD_CYCLES(1);
} /* line 2287 */
  sim_icache_fetch(1338 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_17, reg_r0_4, reg_r0_3); /* line 2289 */
   SHL(reg_r0_4, reg_r0_4, reg_r0_9); /* line 2290 */
} /* line 2290 */
  sim_icache_fetch(1340 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_16, reg_r0_16, reg_r0_17); /* line 2292 */
} /* line 2292 */
  sim_icache_fetch(1341 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 12),0,4), reg_r0_16); /* line 2294 */
} /* line 2294 */
  sim_icache_fetch(1342 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_16, mem_trace_ld((reg_r0_8 + (unsigned int) 12),0,4)); /* line 2296 */
   if (!reg_b0_4) {    BRANCHF(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L72X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2297 */
  sim_icache_fetch(1344 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2299 */
   ADD_CYCLES(1);
} /* line 2299 */
  sim_icache_fetch(1345 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_17, reg_r0_16, reg_r0_3); /* line 2301 */
   SHL(reg_r0_16, reg_r0_16, reg_r0_9); /* line 2302 */
} /* line 2302 */
  sim_icache_fetch(1347 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_4, reg_r0_4, reg_r0_17); /* line 2304 */
} /* line 2304 */
  sim_icache_fetch(1348 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 16),0,4), reg_r0_4); /* line 2306 */
} /* line 2306 */
  sim_icache_fetch(1349 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld((reg_r0_8 + (unsigned int) 16),0,4)); /* line 2308 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L73X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2309 */
  sim_icache_fetch(1351 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(0);
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2311 */
   ADD_CYCLES(1);
} /* line 2311 */
  sim_icache_fetch(1352 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_17, reg_r0_4, reg_r0_3); /* line 2313 */
   SHL(reg_r0_4, reg_r0_4, reg_r0_9); /* line 2314 */
} /* line 2314 */
  sim_icache_fetch(1354 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_16, reg_r0_16, reg_r0_17); /* line 2316 */
} /* line 2316 */
  sim_icache_fetch(1355 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 20),0,4), reg_r0_16); /* line 2318 */
} /* line 2318 */
  sim_icache_fetch(1356 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_16, mem_trace_ld((reg_r0_8 + (unsigned int) 20),0,4)); /* line 2320 */
   if (!reg_b0_5) {    BRANCHF(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L74X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2321 */
  sim_icache_fetch(1358 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -224); /* line 2323 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2324 */
   ADD_CYCLES(1);
} /* line 2324 */
  sim_icache_fetch(1360 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SHRU(reg_r0_17, reg_r0_16, reg_r0_3); /* line 2326 */
   SHL(reg_r0_5, reg_r0_16, reg_r0_9); /* line 2327 */
} /* line 2327 */
  sim_icache_fetch(1362 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_4, reg_r0_4, reg_r0_17); /* line 2329 */
} /* line 2329 */
  sim_icache_fetch(1363 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 24),0,4), reg_r0_4); /* line 2331 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 28); /* line 2332 */
} /* line 2332 */
  sim_icache_fetch(1365 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_2, mem_trace_ld((reg_r0_8 + (unsigned int) 24),0,4)); /* line 2334 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) 28); /* line 2335 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2336 */
   ADD_CYCLES(1);
} /* line 2336 */
  sim_icache_fetch(1368 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L67X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L67X3;
} /* line 2338 */
l_L74X3: ;/* line 2341 */
LABEL(l_L74X3);
  sim_icache_fetch(1369 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -192); /* line 2342 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 24); /* line 2343 */
   MOV(reg_r0_5, reg_r0_4); /* line 2344 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2345 */
} /* line 2345 */
  sim_icache_fetch(1373 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2347 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2348 */
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2349 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2350 */
l_L73X3: ;/* line 2353 */
LABEL(l_L73X3);
  sim_icache_fetch(1377 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -160); /* line 2354 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 20); /* line 2355 */
   MOV(reg_r0_5, reg_r0_16); /* line 2356 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2357 */
} /* line 2357 */
  sim_icache_fetch(1381 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2359 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2360 */
} /* line 2360 */
  sim_icache_fetch(1383 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2362 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2363 */
l_L72X3: ;/* line 2366 */
LABEL(l_L72X3);
  sim_icache_fetch(1385 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -128); /* line 2367 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 16); /* line 2368 */
   MOV(reg_r0_5, reg_r0_4); /* line 2369 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2370 */
} /* line 2370 */
  sim_icache_fetch(1389 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2372 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2373 */
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2374 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2375 */
l_L71X3: ;/* line 2378 */
LABEL(l_L71X3);
  sim_icache_fetch(1393 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -96); /* line 2379 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 12); /* line 2380 */
   MOV(reg_r0_5, reg_r0_16); /* line 2381 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2382 */
} /* line 2382 */
  sim_icache_fetch(1397 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2384 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2385 */
} /* line 2385 */
  sim_icache_fetch(1399 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2387 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2388 */
l_L70X3: ;/* line 2391 */
LABEL(l_L70X3);
  sim_icache_fetch(1401 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -64); /* line 2392 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 2393 */
   MOV(reg_r0_5, reg_r0_4); /* line 2394 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2395 */
} /* line 2395 */
  sim_icache_fetch(1405 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2397 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2398 */
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2399 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2400 */
l_L69X3: ;/* line 2403 */
LABEL(l_L69X3);
  sim_icache_fetch(1409 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -32); /* line 2404 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 4); /* line 2405 */
   MOV(reg_r0_5, reg_r0_2); /* line 2406 */
   ADD(reg_r0_8, reg_r0_3, (unsigned int) 32); /* line 2407 */
} /* line 2407 */
  sim_icache_fetch(1413 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_2, reg_r0_8, reg_r0_6); /* line 2409 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2410 */
} /* line 2410 */
  sim_icache_fetch(1415 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2412 */
   GOTO(l_L75X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L75X3;
} /* line 2413 */
l_L68X3: ;/* line 2418 */
LABEL(l_L68X3);
  sim_icache_fetch(1417 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   ADD(reg_r0_2, reg_r0_3, (unsigned int) 32); /* line 2419 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2420 */
} /* line 2420 */
  sim_icache_fetch(1419 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_2, reg_r0_2, reg_r0_6); /* line 2423 */
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2424 */
} /* line 2424 */
l_L75X3: ;/* line 2426 */
LABEL(l_L75X3);
  sim_icache_fetch(1421 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   SHL(reg_r0_19, reg_r0_19, reg_r0_2); /* line 2427 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2428 */
   ADD_CYCLES(1);
} /* line 2428 */
  sim_icache_fetch(1423 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   AND(reg_r0_19, reg_r0_19, reg_r0_4); /* line 2430 */
} /* line 2430 */
  sim_icache_fetch(1424 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   SHRU(reg_r0_19, reg_r0_19, reg_r0_3); /* line 2432 */
} /* line 2432 */
  sim_icache_fetch(1425 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_19, reg_r0_19, reg_r0_5); /* line 2434 */
} /* line 2434 */
  sim_icache_fetch(1426 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_19); /* line 2437 */
   RETURN(blit);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2438 */
l_L66X3: ;/* line 2441 */
LABEL(l_L66X3);
  sim_icache_fetch(1428 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPNE(reg_b0_0, reg_r0_3, 0); /* line 2442 */
   ADD(reg_r0_12, reg_r0_5, (unsigned int) -224); /* line 2443 */
   ADD(reg_r0_11, reg_r0_5, (unsigned int) -192); /* line 2444 */
   ADD(reg_r0_10, reg_r0_5, (unsigned int) -160); /* line 2445 */
} /* line 2445 */
  sim_icache_fetch(1432 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_9, reg_r0_5, (unsigned int) -128); /* line 2447 */
   ADD(reg_r0_8, reg_r0_5, (unsigned int) -96); /* line 2448 */
   ADD(reg_r0_13, reg_r0_5, (unsigned int) -64); /* line 2449 */
   MOV(reg_r0_6, reg_r0_5); /* line 2450 */
} /* line 2450 */
  sim_icache_fetch(1436 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_2, reg_r0_17); /* line 2452 */
   MOV(reg_r0_14, reg_r0_4); /* line 2453 */
   if (reg_b0_0) {    BRANCH(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L76X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2454 */
l_L77X3: ;/* line 2456 */
LABEL(l_L77X3);
  sim_icache_fetch(1439 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ADD(reg_r0_4, reg_r0_5, (unsigned int) -32); /* line 2457 */
} /* line 2457 */
  sim_icache_fetch(1440 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_5, reg_r0_13); /* line 2459 */
} /* line 2459 */
  sim_icache_fetch(1441 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_13, reg_r0_14); /* line 2461 */
} /* line 2461 */
  sim_icache_fetch(1442 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   MOV(reg_r0_14, reg_r0_3); /* line 2463 */
} /* line 2463 */
l_L78X3: ;/* line 2466 */
LABEL(l_L78X3);
  sim_icache_fetch(1443 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_0, reg_r0_6, (unsigned int) 32); /* line 2467 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_2,0,4)); /* line 2468 */
   CMPGEU(reg_b0_1, reg_r0_4, (unsigned int) 32); /* line 2469 */
   CMPGEU(reg_b0_2, reg_r0_5, (unsigned int) 32); /* line 2470 */
} /* line 2470 */
  sim_icache_fetch(1447 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_3, reg_r0_8, (unsigned int) 32); /* line 2472 */
   CMPGEU(reg_b0_4, reg_r0_9, (unsigned int) 32); /* line 2473 */
   CMPGEU(reg_b0_5, reg_r0_10, (unsigned int) 32); /* line 2474 */
   CMPGEU(reg_b0_6, reg_r0_11, (unsigned int) 32); /* line 2475 */
} /* line 2475 */
  sim_icache_fetch(1451 + t_thisfile.offset, 4);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   CMPGEU(reg_b0_0, reg_r0_12, (unsigned int) 32); /* line 2477 */
   ADD(reg_r0_8, reg_r0_8, (unsigned int) -256); /* line 2478 */
   ADD(reg_r0_5, reg_r0_5, (unsigned int) -256); /* line 2479 */
   if (!t__i32_0) {    BRANCHF(t__i32_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L79X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2480 */
  sim_icache_fetch(1455 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_12, reg_r0_12, (unsigned int) -256); /* line 2482 */
   ADD(reg_r0_11, reg_r0_11, (unsigned int) -256); /* line 2483 */
   ADD(reg_r0_10, reg_r0_10, (unsigned int) -256); /* line 2484 */
   ADD(reg_r0_9, reg_r0_9, (unsigned int) -256); /* line 2485 */
} /* line 2485 */
  sim_icache_fetch(1459 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_3); /* line 2487 */
   ADD(reg_r0_4, reg_r0_4, (unsigned int) -256); /* line 2488 */
   if (!reg_b0_1) {    BRANCHF(reg_b0_1);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L80X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2489 */
  sim_icache_fetch(1462 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 4),0,4)); /* line 2491 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2492 */
   ADD_CYCLES(2);
} /* line 2492 */
  sim_icache_fetch(1464 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 4),0,4), reg_r0_3); /* line 2494 */
   if (!reg_b0_2) {    BRANCHF(reg_b0_2);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L81X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2495 */
  sim_icache_fetch(1466 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 8),0,4)); /* line 2497 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2498 */
   ADD_CYCLES(2);
} /* line 2498 */
  sim_icache_fetch(1468 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 8),0,4), reg_r0_3); /* line 2500 */
   if (!reg_b0_3) {    BRANCHF(reg_b0_3);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L82X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2501 */
  sim_icache_fetch(1470 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 12),0,4)); /* line 2503 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2504 */
   ADD_CYCLES(2);
} /* line 2504 */
  sim_icache_fetch(1472 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 12),0,4), reg_r0_3); /* line 2506 */
   if (!reg_b0_4) {    BRANCHF(reg_b0_4);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L83X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2507 */
  sim_icache_fetch(1474 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 16),0,4)); /* line 2509 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2510 */
   ADD_CYCLES(2);
} /* line 2510 */
  sim_icache_fetch(1476 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 16),0,4), reg_r0_3); /* line 2512 */
   if (!reg_b0_5) {    BRANCHF(reg_b0_5);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L84X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2513 */
  sim_icache_fetch(1478 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 20),0,4)); /* line 2515 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2516 */
   ADD_CYCLES(2);
} /* line 2516 */
  sim_icache_fetch(1480 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 20),0,4), reg_r0_3); /* line 2518 */
   if (!reg_b0_6) {    BRANCHF(reg_b0_6);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L85X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2519 */
  sim_icache_fetch(1482 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 24),0,4)); /* line 2521 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2522 */
   ADD_CYCLES(2);
} /* line 2522 */
  sim_icache_fetch(1484 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 24),0,4), reg_r0_3); /* line 2524 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2525 */
  sim_icache_fetch(1486 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   LDW(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 28),0,4)); /* line 2527 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 32); /* line 2528 */
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -256); /* line 2529 */
   INC_NOP_CNT((unsigned int) 2);
   XNOP((unsigned int) 2); /* line 2530 */
   ADD_CYCLES(2);
} /* line 2530 */
  sim_icache_fetch(1490 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st((reg_r0_7 + (unsigned int) 28),0,4), reg_r0_3); /* line 2532 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 32); /* line 2533 */
   GOTO(l_L78X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L78X3;
} /* line 2534 */
l_L86X3: ;/* line 2537 */
LABEL(l_L86X3);
  sim_icache_fetch(1493 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 28); /* line 2538 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 28); /* line 2539 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2540 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2541 */
} /* line 2541 */
  sim_icache_fetch(1497 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -224); /* line 2543 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2544 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2545 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2547 */
} /* line 2547 */
  sim_icache_fetch(1501 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2549 */
l_L88X3: ;/* line 2552 */
LABEL(l_L88X3);
  sim_icache_fetch(1502 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(blit);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2554 */
l_L85X3: ;/* line 2557 */
LABEL(l_L85X3);
  sim_icache_fetch(1503 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 24); /* line 2558 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 24); /* line 2559 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2560 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2561 */
} /* line 2561 */
  sim_icache_fetch(1507 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -192); /* line 2563 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2564 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2565 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2567 */
} /* line 2567 */
  sim_icache_fetch(1511 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2569 */
l_L84X3: ;/* line 2572 */
LABEL(l_L84X3);
  sim_icache_fetch(1512 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 20); /* line 2573 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 20); /* line 2574 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2575 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2576 */
} /* line 2576 */
  sim_icache_fetch(1516 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -160); /* line 2578 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2579 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2580 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2582 */
} /* line 2582 */
  sim_icache_fetch(1520 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2584 */
l_L83X3: ;/* line 2587 */
LABEL(l_L83X3);
  sim_icache_fetch(1521 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 16); /* line 2588 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 16); /* line 2589 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2590 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2591 */
} /* line 2591 */
  sim_icache_fetch(1525 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -128); /* line 2593 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2594 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2595 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2597 */
} /* line 2597 */
  sim_icache_fetch(1529 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2599 */
l_L82X3: ;/* line 2602 */
LABEL(l_L82X3);
  sim_icache_fetch(1530 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 12); /* line 2603 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 12); /* line 2604 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2605 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2606 */
} /* line 2606 */
  sim_icache_fetch(1534 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -96); /* line 2608 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2609 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2610 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2612 */
} /* line 2612 */
  sim_icache_fetch(1538 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2614 */
l_L81X3: ;/* line 2617 */
LABEL(l_L81X3);
  sim_icache_fetch(1539 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 2618 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 8); /* line 2619 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2620 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2621 */
} /* line 2621 */
  sim_icache_fetch(1543 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -64); /* line 2623 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2624 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2625 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2627 */
} /* line 2627 */
  sim_icache_fetch(1547 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2629 */
l_L80X3: ;/* line 2632 */
LABEL(l_L80X3);
  sim_icache_fetch(1548 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 4); /* line 2633 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 4); /* line 2634 */
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2635 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2636 */
} /* line 2636 */
  sim_icache_fetch(1552 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_6, reg_r0_6, (unsigned int) -32); /* line 2638 */
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2639 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2640 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2642 */
} /* line 2642 */
  sim_icache_fetch(1556 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L87X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L87X3;
} /* line 2644 */
l_L79X3: ;/* line 2649 */
LABEL(l_L79X3);
  sim_icache_fetch(1557 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   SUB(reg_r0_14, (unsigned int) 32, reg_r0_14); /* line 2650 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2651 */
} /* line 2651 */
  sim_icache_fetch(1559 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   SHRU(reg_r0_13, reg_r0_19, reg_r0_13); /* line 2654 */
   LDWs(reg_r0_3, mem_trace_ld(reg_r0_7,0,4)); /* line 2655 */
   SHL(reg_r0_14, reg_r0_19, reg_r0_14); /* line 2656 */
} /* line 2656 */
l_L87X3: ;/* line 2658 */
LABEL(l_L87X3);
  sim_icache_fetch(1562 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPNE(reg_b0_0, reg_r0_6, 0); /* line 2659 */
   LDWs(reg_r0_2, mem_trace_ld(reg_r0_2,0,4)); /* line 2660 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2661 */
   ADD_CYCLES(1);
} /* line 2661 */
  sim_icache_fetch(1565 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   AND(reg_r0_13, reg_r0_13, reg_r0_3); /* line 2663 */
   if (!reg_b0_0) {    BRANCHF(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L88X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2664 */
  sim_icache_fetch(1567 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   AND(reg_r0_14, reg_r0_14, reg_r0_2); /* line 2666 */
} /* line 2666 */
  sim_icache_fetch(1568 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_13, reg_r0_13, reg_r0_14); /* line 2668 */
} /* line 2668 */
  sim_icache_fetch(1569 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_13); /* line 2671 */
   RETURN(blit);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2672 */
l_L76X3: ;/* line 2675 */
LABEL(l_L76X3);
  sim_icache_fetch(1571 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SUB(reg_r0_15, (unsigned int) 32, reg_r0_14); /* line 2676 */
   LDW(reg_r0_4, mem_trace_ld(reg_r0_7,0,4)); /* line 2677 */
   ADD(reg_r0_16, reg_r0_3, (unsigned int) -32); /* line 2678 */
   MOV(reg_r0_19, (unsigned int) -1); /* line 2679 */
} /* line 2679 */
  sim_icache_fetch(1575 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   SHL(reg_r0_15, reg_r0_19, reg_r0_15); /* line 2681 */
   SHRU(reg_r0_19, reg_r0_19, reg_r0_3); /* line 2682 */
   LDW(reg_r0_17, mem_trace_ld(reg_r0_2,0,4)); /* line 2683 */
   ADD(reg_r0_5, reg_r0_16, reg_r0_5); /* line 2684 */
} /* line 2684 */
  sim_icache_fetch(1579 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   ADD(reg_r0_12, reg_r0_5, (unsigned int) -224); /* line 2686 */
   ADD(reg_r0_11, reg_r0_5, (unsigned int) -192); /* line 2687 */
   ADD(reg_r0_10, reg_r0_5, (unsigned int) -160); /* line 2688 */
   ADD(reg_r0_9, reg_r0_5, (unsigned int) -128); /* line 2689 */
} /* line 2689 */
  sim_icache_fetch(1583 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(4);
   AND(reg_r0_15, reg_r0_15, reg_r0_4); /* line 2691 */
   ADD(reg_r0_2, reg_r0_2, (unsigned int) 4); /* line 2692 */
   ADD(reg_r0_8, reg_r0_5, (unsigned int) -96); /* line 2693 */
   ADD(reg_r0_13, reg_r0_5, (unsigned int) -64); /* line 2694 */
} /* line 2694 */
  sim_icache_fetch(1587 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   AND(reg_r0_19, reg_r0_19, reg_r0_17); /* line 2696 */
   MOV(reg_r0_6, reg_r0_5); /* line 2697 */
} /* line 2697 */
  sim_icache_fetch(1589 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   OR(reg_r0_15, reg_r0_15, reg_r0_19); /* line 2699 */
} /* line 2699 */
  sim_icache_fetch(1590 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st(reg_r0_7,0,4), reg_r0_15); /* line 2701 */
   ADD(reg_r0_7, reg_r0_7, (unsigned int) 4); /* line 2702 */
   GOTO(l_L77X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L77X3;
} /* line 2703 */
  reg_l0_0 = t_client_rpc;
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 362: goto l_L57X3;
    case 363: goto l_L64X3;
    case 364: goto l_L63X3;
    case 365: goto l_L62X3;
    case 366: goto l_L61X3;
    case 367: goto l_L60X3;
    case 368: goto l_L59X3;
    case 369: goto l_L58X3;
    case 370: goto l_L65X3;
    case 371: goto l_L56X3;
    case 372: goto l_L67X3;
    case 373: goto l_L74X3;
    case 374: goto l_L73X3;
    case 375: goto l_L72X3;
    case 376: goto l_L71X3;
    case 377: goto l_L70X3;
    case 378: goto l_L69X3;
    case 379: goto l_L68X3;
    case 380: goto l_L75X3;
    case 381: goto l_L66X3;
    case 382: goto l_L77X3;
    case 383: goto l_L78X3;
    case 384: goto l_L86X3;
    case 385: goto l_L88X3;
    case 386: goto l_L85X3;
    case 387: goto l_L84X3;
    case 388: goto l_L83X3;
    case 389: goto l_L82X3;
    case 390: goto l_L81X3;
    case 391: goto l_L80X3;
    case 392: goto l_L79X3;
    case 393: goto l_L87X3;
    case 394: goto l_L76X3;
    case 395:
      reg_l0_0 = t_client_rpc;
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int __vex_main(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   ENTRY(__vex_main);
  sim_ta_init(1); /* enable cache simulation */
  reg_r0_1 = sim_create_stack(1048576,reg_r0_1); 

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (406 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(1593 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 2718 */
   MOV(reg_r0_4, (unsigned int) 29); /* line 2719 */
   MOV(reg_r0_3, (unsigned int) 17); /* line 2720 */
} /* line 2720 */
		 /* line 2721 */
  sim_icache_fetch(1596 + t_thisfile.offset, 5);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 2724 */
   MOV(reg_r0_5, (unsigned int) 32000); /* line 2725 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(blit);
   reg_l0_0 = (406 << 5);
   {
    typedef void t_FT (unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) blit;
    (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5);
   }
} /* line 2725 */
l_lr_296: ;/* line 2725 */
LABEL(l_lr_296);
  sim_icache_fetch(1601 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(3);
   MOV(reg_r0_3, (unsigned int) 29); /* line 2727 */
   MOV(reg_r0_4, (unsigned int) 17); /* line 2728 */
   MOV(reg_r0_5, (unsigned int) 32000); /* line 2729 */
} /* line 2729 */
		 /* line 2730 */
  sim_icache_fetch(1605 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(blit);
   reg_l0_0 = (406 << 5);
   {
    typedef void t_FT (unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) blit;
    (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5);
   }
} /* line 2732 */
l_lr_298: ;/* line 2732 */
LABEL(l_lr_298);
  sim_icache_fetch(1607 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   LDW(reg_r0_2, mem_trace_ld((unsigned int) dst,0,4)); /* line 2734 */
   MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX1); /* line 2735 */
} /* line 2735 */
  sim_icache_fetch(1611 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDWs(reg_r0_4, mem_trace_ld(((unsigned int) dst + (unsigned int) 40),0,4)); /* line 2737 */
} /* line 2737 */
  sim_icache_fetch(1613 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   LDWs(reg_r0_5, mem_trace_ld(((unsigned int) dst + (unsigned int) 16),0,4)); /* line 2739 */
} /* line 2739 */
  sim_icache_fetch(1615 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   CMPNE(reg_r0_2, reg_r0_2, (unsigned int) 291); /* line 2741 */
} /* line 2741 */
  sim_icache_fetch(1617 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   CMPNE(reg_r0_4, reg_r0_4, (unsigned int) 1080066048); /* line 2743 */
} /* line 2743 */
  sim_icache_fetch(1619 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   CMPEQ(reg_r0_5, reg_r0_5, (unsigned int) 1164411171); /* line 2745 */
   NORL(reg_r0_2, reg_r0_2, reg_r0_4); /* line 2746 */
} /* line 2746 */
  sim_icache_fetch(1622 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   ANDL(reg_b0_0, reg_r0_2, reg_r0_5); /* line 2748 */
   INC_NOP_CNT((unsigned int) 1);
   XNOP((unsigned int) 1); /* line 2749 */
   ADD_CYCLES(1);
} /* line 2749 */
  sim_icache_fetch(1624 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    BRANCH(reg_b0_0);
      INC_BTC_CNT();
      INC_STALL_CNT();
      goto l_L89X3; 
   } else {
      INC_BNT_CNT();
   }
} /* line 2751 */
		 /* line 2752 */
  sim_icache_fetch(1625 + t_thisfile.offset, 2);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(puts);
   reg_l0_0 = (406 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
} /* line 2754 */
l_lr_300: ;/* line 2754 */
LABEL(l_lr_300);
l_L90X3: ;/* line 2756 */
LABEL(l_L90X3);
  sim_icache_fetch(1627 + t_thisfile.offset, 3);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, 0); /* line 2757 */
   LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 2758 */
   INC_NOP_CNT((unsigned int) 3);
   XNOP((unsigned int) 3); /* line 2759 */
   ADD_CYCLES(3);
} /* line 2759 */
  sim_icache_fetch(1630 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   RETURN(__vex_main);   INC_BTU_CNT();
   INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2762 */
l_L89X3: ;/* line 2765 */
LABEL(l_L89X3);
		 /* line 2765 */
  sim_icache_fetch(1631 + t_thisfile.offset, 4);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(2);
   MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX2); /* line 2769 */
   INC_BTU_CNT();
   INC_STALL_CNT();
   CALL(puts);
   reg_l0_0 = (406 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
} /* line 2769 */
l_lr_304: ;/* line 2769 */
LABEL(l_lr_304);
  sim_icache_fetch(1635 + t_thisfile.offset, 1);
{
   ADD_CYCLES(1);
   INC_BUNDLE_CNT(1);
   GOTO(l_L90X3);   INC_BTU_CNT();
   INC_STALL_CNT();
   goto l_L90X3;
} /* line 2771 */
  reg_l0_0 = t_client_rpc;
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 397: goto l_lr_296;
    case 399: goto l_lr_298;
    case 401: goto l_lr_300;
    case 402: goto l_L90X3;
    case 403: goto l_L89X3;
    case 405: goto l_lr_304;
    case 406:
      reg_l0_0 = t_client_rpc;
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}


static sim_fileinfo_t t_thisfile = {"blit.s", 1648, 0, 0, 0, 2};

