

#ifndef INTERPRETER_DVDEXPR_H_
#define INTERPRETER_DVDEXPR_H_

//DvdAbstractExpression - The Abstract Expression

#include "DvdInterpreterContext.h"
#include "../../common/arraylist_string.h"

typedef struct DvdExpression DvdExpression_t;
struct DvdExpression
{
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * );
	void * pdata;
};

DvdExpression_t * DvdExpression_new( 
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * )
);

DvdExpression_t * DvdExpression_new_w_pdata( 
	char * ( * interpret )( DvdExpression_t * , DvdInterpreterContext_t * ),
	void * pdata
);

void DvdExpression_free( DvdExpression_t * d ) ;

#endif
