
//DvdTitleActorExpression - Four Of Four Terminal Expressions

#include "../../common/arraylist_string.h"

#include "DvdExpression.h"
#include "DvdTitleActorExpression.h"
#include "DvdInterpreterContext.h"

#include "stdio.h"


char * DvdTitleActorExpression_interpret(DvdExpression_t * d, DvdInterpreterContext_t * ctx) 
{
	arraylist_string_t * titlesAndActors = DvdInterpreterContext_getTitlesForActor(ctx, (char *)(d->pdata) );
	return arraylist_string_to_string( titlesAndActors );
}

DvdExpression_t * DvdTitleActorExpression_new( char * title )
{
	return DvdExpression_new_w_pdata( DvdTitleActorExpression_interpret, title );
}
   
