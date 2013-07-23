
//DvdTitleExpression - Three Of Four Terminal Expressions

#include "DvdExpression.h"

char * DvdTitleExpression_interpret( DvdExpression_t * d, DvdInterpreterContext_t *  ctx) 
{
	return List_csv_str( DvdInterpreterContext_getAllTitles( ctx ) );
}

DvdExpression_t * DvdTitleExpression_new()
{
	return DvdExpression_new( DvdTitleExpression_interpret );
}

