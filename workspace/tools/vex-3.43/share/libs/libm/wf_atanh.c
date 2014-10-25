/*
** static char sccs_id[] = "$Id: wf_atanh.c,v 1.1.1.1 2001/11/21 20:34:47 frb Exp $ ";
*/

/* wf_atanh.c -- float version of w_atanh.c.
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
/* 
 * wrapper atanhf(x)
 */

#include "fdlibm.h"

#ifdef __STDC__
	float atanhf(float x)		/* wrapper atanhf */
#else
	float atanhf(x)			/* wrapper atanhf */
	float x;
#endif
{
#ifdef _IEEE_LIBM
	return __ieee754_atanhf(x);
#else
	float z,y;
	z = __ieee754_atanhf(x);
	if(_LIB_VERSION == _IEEE_ || isnanf(x)) return z;
	y = fabsf(x);
	if(y>=(float)1.0) {
	    if(y>(float)1.0)
	        /* atanhf(|x|>1) */
	        return (float)__kernel_standard((double)x,(double)x,130);
	    else 
	        /* atanhf(|x|==1) */
	        return (float)__kernel_standard((double)x,(double)x,131);
	} else
	    return z;
#endif
}

#ifdef _DOUBLE_IS_32BITS

#ifdef __STDC__
	double atanh(double x)
#else
	double atanh(x)
	double x;
#endif
{
	return (double) atanhf((float) x);
}

#endif /* defined(_DOUBLE_IS_32BITS) */
