

#include "mem.h"
#include "teaOrderContext.h"

teaOrderContext_t * teaOrderContext_new( int tableNumber ) 
{
	teaOrderContext_t * obj;
	NEW(obj);
	obj->tableNumber = tableNumber;
	return obj;
}

int teaOrderContext_gettable( teaOrderContext_t * obj )
{
	return obj->tableNumber;
}

void teaOrderContext_free(teaOrderContext_t * obj) 
{
	FREE(obj);
}

