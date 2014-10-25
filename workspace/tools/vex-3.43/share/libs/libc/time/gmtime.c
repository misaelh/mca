/* 
** static char sccs_id[] = "$Id: gmtime.c,v 1.1.1.1 2001/11/21 20:34:41 frb Exp $ ";
*/
/*
 * gmtime.c
 * Original Author:	G. Haley
 *
 * Converts the calendar time pointed to by tim_p into a broken-down time
 * expressed as Greenwich Mean Time (GMT). Returns a pointer to a structure
 * containing the broken-down time, or a null pointer if GMT is not
 * available.
 */

/*
FUNCTION
<<gmtime>>---convert time to UTC traditional form

INDEX
	gmtime

ANSI_SYNOPSIS
	#include <time.h>
	struct tm *gmtime(const time_t *<[clock]>);
	struct tm *gmtime_r(const time_t *<[clock]>, struct tm *<[res]>);

TRAD_SYNOPSIS
	#include <time.h>
	struct tm *gmtime(<[clock]>)
	const time_t *<[clock]>;
	struct tm *gmtime_r(<[clock]>, <[res]>)
	const time_t *<[clock]>;
	struct tm *<[res]>;

DESCRIPTION
<<gmtime>> assumes the time at <[clock]> represents a local time.
<<gmtime>> converts it to UTC (Universal Coordinated Time, also known in some
countries as GMT, Greenwich Mean time), then converts the
representation from the arithmetic representation to
the traditional representation defined by <<struct tm>>.

<<gmtime>> constructs the traditional time representation in static
storage; each call to <<gmtime>> or <<localtime>> will overwrite the
information generated by previous calls to either function.

RETURNS
A pointer to the traditional time representation (<<struct tm>>).

PORTABILITY
ANSI C requires <<gmtime>>.

<<gmtime>> requires no supporting OS subroutines.
*/

#include <stdlib.h>
#include <time.h>

#define _GMT_OFFSET 0

#ifndef _REENT_ONLY

struct tm *
_DEFUN (gmtime, (tim_p),
	_CONST time_t * tim_p)
{
  time_t tim = *tim_p + _GMT_OFFSET;

  return (localtime (&tim));
}

#endif
