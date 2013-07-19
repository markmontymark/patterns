//looseleaftea - the adaptee

#include "looseleaftea.h"

#include "stdio.h"
#include "mem.h"


looseleaftea_t * looseleaftea_new()
{
	looseleaftea_t * t;
	NEW(t);
	t->teaIsSteeped = 0;
	return t;
}

void looseleaftea_free(looseleaftea_t * llt)
{
	FREE(llt);
}

void looseleaftea_steep_tea( looseleaftea_t * t)
{
	t->teaIsSteeped = 1;
	printf("tea is steeping\n");
}

