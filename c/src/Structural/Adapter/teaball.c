
//TeaBall - the adapter

#include "teaball.h"
#include "looseleaftea.h"

#include "mem.h"
#include "assert.h"

#include "stdlib.h"

teaball_t * teaball_new(looseleaftea_t * llt)
{
   teaball_t * t;
	NEW(t);
	t->llt = llt;
	t->teaIsSteeped = llt->teaIsSteeped;
	return t;
}

void teaball_free(teaball_t * t)
{
	assert( t );
	if( t->llt != NULL )
		looseleaftea_free(t->llt);
	FREE(t);
}

void teaball_steepTeaInCup(teaball_t * t)
{
   looseleaftea_steep_tea( t->llt);
	t->teaIsSteeped = 1;
}


