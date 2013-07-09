
//DvdActorExpression - One Of Four Terminal Expressions

#ifndef  INTERPRETER_DVDACTOR_H_
#define  INTERPRETER_DVDACTOR_H_

#include "DvdExpression.h"

DvdExpression_t * DvdActorExpression_new() ;
char * DvdActorExpression_interpret( DvdExpression_t *, DvdInterpreterContext_t *  ctx)  ;

#endif
