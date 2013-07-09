

//DvdActorTitleExpression - Four Of Four Terminal Expressions

#include "../../common/arraylist_string.h"


#include "DvdExpression.h"
#include "DvdActorTitleExpression.h"
#include "DvdInterpreterContext.h"

char * DvdActorTitleExpression_interpret(DvdExpression_t * d, DvdInterpreterContext_t * ctx) 
{
	arraylist_string_t * titlesAndActors = DvdInterpreterContext_getActorsForTitle(ctx, (char *)(d->pdata) );
	char * retval = arraylist_string_to_string( titlesAndActors );
	arraylist_string_free( titlesAndActors );
	return retval;
}

DvdExpression_t * DvdActorTitleExpression_new( char * title )
{
	return DvdExpression_new_w_pdata( DvdActorTitleExpression_interpret, title );
}
   
