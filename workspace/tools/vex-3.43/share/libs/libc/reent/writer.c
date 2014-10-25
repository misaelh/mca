/* 
** static char sccs_id[] = "$Id: writer.c,v 1.2 2005/01/19 15:57:17 frb Exp $ ";
*/
/* Reentrant versions of write system call. */

#include <reent.h>
#include <unistd.h>
#include <_syslist.h>

/* Some targets provides their own versions of this functions.  Those
   targets should define REENTRANT_SYSCALLS_PROVIDED in TARGET_CFLAGS.  */

#ifdef _REENT_ONLY
#ifndef REENTRANT_SYSCALLS_PROVIDED
#define REENTRANT_SYSCALLS_PROVIDED
#endif
#endif

#ifndef REENTRANT_SYSCALLS_PROVIDED

#include "errno_r.h"

/*
FUNCTION
	<<_write_r>>---Reentrant version of write
	
INDEX
	_write_r

ANSI_SYNOPSIS
	#include <reent.h>
	long _write_r(struct _reent *<[ptr]>,
		      int <[fd]>, const void *<[buf]>, size_t <[cnt]>);

TRAD_SYNOPSIS
	#include <reent.h>
	long _write_r(<[ptr]>, <[fd]>, <[buf]>, <[cnt]>)
	struct _reent *<[ptr]>;
	int <[fd]>;
	char *<[buf]>;
	size_t <[cnt]>;

DESCRIPTION
	This is a reentrant version of <<write>>.  It
	takes a pointer to the global data block, which holds
	<<errno>>.
*/

long
_write_r (ptr, fd, buf, cnt)
     struct _reent *ptr;
     int fd;
     _CONST _PTR buf;
     size_t cnt;
{
  long ret;

  errno = 0;
  if ((ret = _write (fd, buf, cnt)) == -1 && errno != 0)
    ptr->_errno = errno;
  return ret;
}

#endif /* ! defined (REENTRANT_SYSCALLS_PROVIDED) */
