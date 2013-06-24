
#ifndef C_PATTERNS_DECORATOR_CHAI_H_
#define C_PATTERNS_DECORATOR_CHAI_H_

#include "../../common/arraylist_string.h"
#include "tea.h"
#include "chai.h"

typedef struct chai chai_t;
struct chai
{
   void (* steep_tea )( tea_t *);
   int teaIsSteeped;
	tea_t * teaToMakeChai;
	arraylist_string_t * ingredients;
};
#define chai_s sizeof(chai_t)

chai_t * chai_new( tea_t * teaToMakeChai ) ;
void chai_free( chai_t * ) ;
void chai_steep_tea( chai_t * t) ;
void chai_steep_chai( chai_t * t ) ;
void steep_chai_ingredients(chai_t * t)  ;


#endif
