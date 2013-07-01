/* $Id: assert.h 6 2007-01-22 00:45:22Z drhanson $ */
#undef assert
#ifdef NDEBUG
#define assert(e) ((void)0)
#else
#include "except.h"
extern void assert(int e);
#define assert(e) ((void)((e)||(RAISE(Assert_Failed),0)))
#endif
