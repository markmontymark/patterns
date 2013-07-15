

#include "stdlib.h"
#include "stdio.h"
#include "teaFlavor.h"
#include "teaOrderContext.h"

teaFlavor_t * teaFlavor_new( char * flavor ) 
{
	teaFlavor_t * obj = malloc( teaFlavor_s );
	obj->teaFlavor = flavor;
	return obj;
}


void teaFlavor_free(teaFlavor_t * obj) 
{
	if( obj == NULL )
		return;
	free(obj);
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

