/* 
** static char sccs_id[] = "$Id: putenv.c,v 1.1.1.1 2001/11/21 20:34:40 frb Exp $ ";
*/
/* This file may have been modified by DJ Delorie (Jan 1991).  If so,
** these modifications are Coyright (C) 1991 DJ Delorie, 24 Kirsten Ave,
** Rochester NH, 03867-2954, USA.
*/

/*-
 * Copyright (c) 1988 The Regents of the University of California.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms are permitted
 * provided that: (1) source distributions retain this entire copyright
 * notice and comment, and (2) distributions including binaries display
 * the following acknowledgement:  ``This product includes software
 * developed by the University of California, Berkeley and its contributors''
 * in the documentation or other materials provided with the distribution
 * and in all advertising materials mentioning features or use of this
 * software. Neither the name of the University nor the names of its
 * contributors may be used to endorse or promote products derived
 * from this software without specific prior written permission.
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 */

#include <stdlib.h>
#include <string.h>

int
_DEFUN (putenv, (str),
	_CONST char *str)
{
  register char *p, *equal;
  int rval;

  if (!(p = strdup (str)))
    return 1;
  if (!(equal = index (p, '=')))
    {
      (void) free (p);
      return 1;
    }
  *equal = '\0';
  rval = setenv (p, equal + 1, 1);
  (void) free (p);
  return rval;
}
