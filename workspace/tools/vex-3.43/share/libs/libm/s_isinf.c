/*
** static char sccs_id[] = "$Id: s_isinf.c,v 1.1.1.1 2001/11/21 20:34:46 frb Exp $ ";
*/

/*
 * isinf(x) returns 1 if x is infinity, else 0;
 * no branching!
 * Added by Cygnus Support.
 */

#include "fdlibm.h"

#ifndef _DOUBLE_IS_32BITS

#ifdef __STDC__
	int isinf(double x)
#else
	int isinf(x)
	double x;
#endif
{
	__int32_t hx,lx;
	EXTRACT_WORDS(hx,lx,x);
	hx &= 0x7fffffff;
	hx |= (__uint32_t)(lx|(-lx))>>31;	
	hx = 0x7ff00000 - hx;
	return 1 - (int)((__uint32_t)(hx|(-hx))>>31);
}

#endif /* _DOUBLE_IS_32BITS */
