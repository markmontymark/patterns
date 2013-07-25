
#ifndef C_PATTERNS_teaFlavor_H_
#define C_PATTERNS_teaFlavor_H_

#include "teaOrderContext.h"

typedef struct teaFlavor teaFlavor_t;
struct teaFlavor
{
	char * teaFlavor;
};

teaFlavor_t * teaFlavor_new() ;
void teaFlavor_free() ;
void teaFlavor_serveTea( teaFlavor_t * obj, teaOrderContext_t * ctx );


#endif
