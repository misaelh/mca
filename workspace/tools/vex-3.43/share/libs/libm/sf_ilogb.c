/*
** static char sccs_id[] = "$Id: sf_ilogb.c,v 1.1.1.1 2001/11/21 20:34:46 frb Exp $ ";
*/

/* sf_ilogb.c -- float version of s_ilogb.c.
 * Conversion to float by Ian Lance Taylor, Cygnus Support, ian@cygnus.com.
 */

/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice 
 * is preserved.
 * ====================================================
 */

#include "fdlibm.h"
#include <limits.h>

#ifdef __STDC__
	int ilogbf(float x)
#else
	int ilogbf(x)
	float x;
#endif
{
	__int32_t hx,ix;

	GET_FLOAT_WORD(hx,x);
	hx &= 0x7fffffff;
	if(hx<0x00800000) {
	    if(hx==0) 
		return - INT_MAX;	/* ilogb(0) = 0x80000001 */
	    else			/* subnormal x */
	        for (ix = -126,hx<<=8; hx>0; hx<<=1) ix -=1;
	    return ix;
	}
	else if (hx<0x7f800000) return (hx>>23)-127;
	else return INT_MAX;
}

#ifdef _DOUBLE_IS_32BITS

#ifdef __STDC__
	int ilogb(double x)
#else
	int ilogb(x)
	double x;
#endif
{
	return ilogbf((float) x);
}

#endif /* defined(_DOUBLE_IS_32BITS) */
