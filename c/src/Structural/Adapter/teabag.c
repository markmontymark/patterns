//teabag - the class which the adapter will make the adaptee adapt to

#include "teabag.h"

#include "mem.h"
#include "stdio.h"

teabag_t * teabag_new() 
{
	teabag_t * t;
	NEW(t);
	t->teaIsSteeped = 0;
	return t;
}

void teabag_free(teabag_t * tb) 
{
	FREE(tb);
}

void teabag_steepTeaInCup(teabag_t * tb) 
{
	tb->teaIsSteeped = 1;
	printf("tea bag is steeping in cup\n");
}

