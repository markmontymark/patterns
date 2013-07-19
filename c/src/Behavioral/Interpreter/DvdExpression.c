

//DvdAbstractExpression - The Abstract Expression

#include "DvdExpression.h"
#include "mem.h"
#include "assert.h"

DvdExpression_t * DvdExpression_new( 
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * )
)
{
	DvdExpression_t * d;
	NEW(d);

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
	FREE( d );
}

