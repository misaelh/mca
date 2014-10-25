/* 
** static char sccs_id[] = "$Id: bcmp.c,v 1.2 2003/05/21 12:25:29 frb Exp $ ";
*/
/*
FUNCTION
	<<bcmp>>---compare two memory areas

INDEX
	bcmp

ANSI_SYNOPSIS
	#include <string.h>
	int bcmp(const char *<[s1]>, const char *<[s2]>, size_t <[n]>);

TRAD_SYNOPSIS
	#include <string.h>
	int bcmp(<[s1]>, <[s2]>, <[n]>)
	char *<[s1]>;
	char *<[s2]>;
	size_t <[n]>;

DESCRIPTION
	This function compares not more than <[n]> characters of the
	object pointed to by <[s1]> with the object pointed to by <[s2]>.

	This function is identical to <<memcmp>>.
	


RETURNS
	The function returns an integer greater than, equal to or
	less than zero 	according to whether the object pointed to by
	<[s1]> is greater than, equal to or less than the object
	pointed to by <[s2]>.

PORTABILITY
<<bcmp>> requires no supporting OS subroutines.

QUICKREF
	bcmp ansi pure
*/

#include <string.h>

int
_DEFUN_WRAP (bcmp, (m1, m2, n),
	_CONST char *m1 _AND
	_CONST char *m2 _AND
	size_t n)

{
  return memcmp (m1, m2, n);
}
