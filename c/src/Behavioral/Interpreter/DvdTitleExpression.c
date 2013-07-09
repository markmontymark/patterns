
//DvdTitleExpression - Three Of Four Terminal Expressions

#include "DvdExpression.h"

char * DvdTitleExpression_interpret( DvdExpression_t * d, DvdInterpreterContext_t *  ctx) 
{
	arraylist_string_t * titles = DvdInterpreterContext_getAllTitles( ctx );
	return arraylist_string_to_string( titles );
}

DvdExpression_t * DvdTitleExpression_new()
{
	return DvdExpression_new( DvdTitleExpression_interpret );
}

