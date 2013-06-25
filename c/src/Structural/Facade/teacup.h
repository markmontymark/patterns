
#ifndef C_PATTERNS_FACADE_TEACUP_H_
#define C_PATTERNS_FACADE_TEACUP_H_

// teacup - one of three classes the facade calls

#include "water.h"
#include "teabag.h"


typedef struct teacup teacup_t;
struct teacup 
{
	int teaBagIsSteeped;
	water_t * water;
	teabag_t * teabag;
};
#define teacup_s sizeof(teacup_t)

teacup_t * teacup_new() ;
void teacup_free(teacup_t *) ;
void teacup_add_teabag(teacup_t * t,teabag_t *) ;
void teacup_add_water(teacup_t * t, water_t *) ;
void teacup_steep_teabag( teacup_t *)  ;
char * teacup_to_string (teacup_t *) ;

#endif
