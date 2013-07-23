
//DvdActorExpression - One Of Four Terminal Expressions

#include "DvdExpression.h"
#include "list.h"

#include "stdio.h"


char * DvdActorExpression_interpret( DvdExpression_t * d, DvdInterpreterContext_t *  ctx) 
{
	return List_csv_str( DvdInterpreterContext_getAllActors( ctx ) );
}

DvdExpression_t * DvdActorExpression_new()
{
	return DvdExpression_new( DvdActorExpression_interpret );
}

