

//DvdActorTitleExpression - Two Of Four Terminal Expressions

#ifndef INTERPRETER_DVDACTTORTITLE_H_
#define INTERPRETER_DVDACTTORTITLE_H_

#include "DvdExpression.h"
#include "DvdInterpreterContext.h"

DvdExpression_t * DvdActorTitleExpression_new( char * title ) ;
char * DvdActorTitleExpression_interpret(DvdExpression_t * d, DvdInterpreterContext_t * ctx)  ;

#endif
