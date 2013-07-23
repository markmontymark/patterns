

//DvdActorTitleExpression - Four Of Four Terminal Expressions

#include "list.h"


#include "DvdExpression.h"
#include "DvdActorTitleExpression.h"
#include "DvdInterpreterContext.h"

char * DvdActorTitleExpression_interpret(DvdExpression_t * d, DvdInterpreterContext_t * ctx) 
{
	List_T titlesAndActors = DvdInterpreterContext_getActorsForTitle(ctx, (char *)(d->pdata) );
	char * retval = List_csv_str( titlesAndActors );
	List_free( &titlesAndActors );
	return retval;
}

DvdExpression_t * DvdActorTitleExpression_new( char * title )
{
	return DvdExpression_new_w_pdata( DvdActorTitleExpression_interpret, title );
}
   
