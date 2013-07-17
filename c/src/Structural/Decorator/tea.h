
#ifndef C_PATTERNS_DECORATOR_TEA_H_
#define C_PATTERNS_DECORATOR_TEA_H_

typedef struct tea tea_t;

#include "tealeaves.h"
#include "chai.h"

enum TeaTypes { TeaLeavesType, ChaiType };
struct tea
{
   enum TeaTypes type;
	union
   {
      chai_t * chai;
      tealeaves_t * tealeaves;
   };
	//void (* steep_tea )( tea_t *);
	int teaIsSteeped;
};
#define tea_s sizeof(tea_t)

tea_t * tea_new( );


#endif
