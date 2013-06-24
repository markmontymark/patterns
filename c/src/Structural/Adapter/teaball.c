
//TeaBall - the adapter

#include "teaball.h"
#include "looseleaftea.h"

#include "stdlib.h"

teaball_t * teaball_new(looseleaftea_t * llt)
{
   teaball_t * t = malloc(teaball_s);
	t->llt = llt;
	t->teaIsSteeped = llt->teaIsSteeped;
	return t;
}

void teaball_free(teaball_t * t)
{
	if(t == NULL )
		return;
	if( t->llt != NULL )
		looseleaftea_free(t->llt);
	free(t);
}

void teaball_steepTeaInCup(teaball_t * t)
{
   looseleaftea_steep_tea( t->llt);
	t->teaIsSteeped = 1;
}


