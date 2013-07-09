

//DvdAbstractExpression - The Abstract Expression

#include "DvdExpression.h"
#include "stdlib.h"

DvdExpression_t * DvdExpression_new( 
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * )
)
{
	DvdExpression_t * d = malloc( DvdExpression_s );
	d->interpret = interpret;
	return d;
}

DvdExpression_t * DvdExpression_new_w_pdata( 
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * ),
	void * pdata
)
{
	DvdExpression_t * d = DvdExpression_new( interpret );
	d->pdata = pdata;
	return d;
}


void DvdExpression_free( DvdExpression_t * d )
{
	if( d == NULL )
		return;
	free( d );
}

