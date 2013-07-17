
#ifndef C_PATTERNS_DECORATOR_CHAI_H_
#define C_PATTERNS_DECORATOR_CHAI_H_

#include "../../common/arraylist_string.h"
#include "tea.h"
#include "tealeaves.h"
#include "chai.h"

typedef struct chai chai_t;
struct chai
{
	tea_t * teaToMakeChai;
	arraylist_string_t * ingredients;
};
#define chai_s sizeof(chai_t)

tea_t * chai_new( tea_t * teaToMakeChai ) ;
void chai_free( tea_t * ) ;
void chai_steep_tea( tea_t * t) ;
void chai_steep_chai( tea_t * t ) ;
void steep_chai_ingredients(tea_t * t)  ;


#endif
