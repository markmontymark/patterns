/* $Id: chan.h 6 2007-01-22 00:45:22Z drhanson $ */
#ifndef CHAN_INCLUDED
#define CHAN_INCLUDED
#define T Chan_T
typedef struct T *T;
extern T   Chan_new    (void);
extern int Chan_send   (T c, const void *ptr, int size);
extern int Chan_receive(T c,       void *ptr, int size);
#undef T
#endif
