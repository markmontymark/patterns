
//DvdTitleActorExpression - Four Of Four Terminal Expressions

#ifndef INTERPRETER_DVDTITLEACTOR_EXPRE_H_
#define INTERPRETER_DVDTITLEACTOR_EXPRE_H_

#include "DvdExpression.h"
#include "DvdInterpreterContext.h"

DvdExpression_t * DvdTitleActorExpression_new( char * title ) ;
char * DvdTitleActorExpression_interpret(DvdExpression_t * d, DvdInterpreterContext_t * ctx)  ;

#endif
