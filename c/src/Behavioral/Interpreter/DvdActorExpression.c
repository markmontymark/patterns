
//DvdActorExpression - One Of Four Terminal Expressions

#include "DvdExpression.h"

char * DvdActorExpression_interpret( DvdExpression_t * d, DvdInterpreterContext_t *  ctx) 
{
	arraylist_string_t * actors = DvdInterpreterContext_getAllActors( ctx );
	return arraylist_string_to_string( actors );
}

DvdExpression_t * DvdActorExpression_new()
{
	return DvdExpression_new( DvdActorExpression_interpret );
}

