/* 
** static char sccs_id[] = "$Id: atol.c,v 1.1.1.1 2001/11/21 20:34:40 frb Exp $ ";
*/
/*
 * Andy Wilson, 2-Oct-89.
 */

#include <stdlib.h>
#include <_ansi.h>

long
_DEFUN (atol, (s), _CONST char *s)
{
  return strtol (s, NULL, 10);
}
