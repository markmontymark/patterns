/* $Id: arrayrep.h 6 2007-01-22 00:45:22Z drhanson $ */
#ifndef ARRAYREP_INCLUDED
#define ARRAYREP_INCLUDED
#define T Array_T
struct T {
	int length;
	int size;
	char *array;
};
extern void ArrayRep_init(T array, int length,
	int size, void *ary);
#undef T
#endif
