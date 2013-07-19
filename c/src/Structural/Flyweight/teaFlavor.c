

#include "stdlib.h"
#include "stdio.h"
#include "teaFlavor.h"
#include "teaOrderContext.h"

#include "mem.h"

teaFlavor_t * teaFlavor_new( char * flavor ) 
{
	teaFlavor_t * obj;
	NEW(obj);
	obj->teaFlavor = flavor;
	return obj;
}


void teaFlavor_free(teaFlavor_t * obj) 
{
	FREE(obj);
}

char * teaFlavor_getflavor(teaFlavor_t * obj) 
{
	return obj->teaFlavor;
}

void teaFlavor_serveTea( teaFlavor_t * obj, teaOrderContext_t * ctx )
{
	printf("Serving tea flavor %s to table number %d\n", 
		obj->teaFlavor,
		ctx->tableNumber);
}

