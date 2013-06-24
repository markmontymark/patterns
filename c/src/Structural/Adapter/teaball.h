
#ifndef C_PATTERNS_ADAPTER_TEABALL_H_
#define C_PATTERNS_ADAPTER_TEABALL_H_

//TeaBall - the adapter

#include "looseleaftea.h"

typedef struct teaball teaball_t;
struct teaball
{
   int teaIsSteeped;
   looseleaftea_t * llt;
};
#define teaball_s sizeof(teaball_t)

teaball_t * teaball_new(looseleaftea_t * llt) ;
void teaball_free(teaball_t * tb) ;
void teaball_steepTeaInCup(teaball_t * teaball) ;

#endif
