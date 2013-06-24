
//TeaCup - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

#ifndef C_PATTERNS_ADAPTER_TEACUP_H_
#define C_PATTERNS_ADAPTER_TEACUP_H_

#include "teabag.h"

typedef struct teacup teacup_t;
struct teacup
{
};
#define teacup_s sizeof(teacup_t)

teacup_t * teacup_new()  ;
void teacup_free(teacup_t * t)  ;
void teacup_steep_teabag( teacup_t * , teabag_t * )  ;

#endif
