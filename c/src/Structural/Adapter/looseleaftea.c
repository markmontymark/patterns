//looseleaftea - the adaptee

#include "looseleaftea.h"

#include "stdio.h"
#include "stdlib.h"


looseleaftea_t * looseleaftea_new()
{
	looseleaftea_t * t = malloc( looseleaftea_s );
	t->teaIsSteeped = 0;
	return t;
}

void looseleaftea_free(looseleaftea_t * llt)
{
	if ( llt == NULL )
		return;
	free(llt);
}

void looseleaftea_steep_tea( looseleaftea_t * t)
{
	t->teaIsSteeped = 1;
	printf("tea is steeping\n");
}

