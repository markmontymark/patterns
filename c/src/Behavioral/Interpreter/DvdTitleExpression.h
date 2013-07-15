
//DvdTitleExpression - Three Of Four Terminal Expressions

#ifndef INTERPRETER_DVDTITLE_H_
#define INTERPRETER_DVDTITLE_H_

#include "DvdExpression.h"

DvdExpression_t * DvdTitleExpression_new() ;
char * DvdTitleExpression_interpret( DvdExpression_t * , DvdInterpreterContext_t *  ctx) ;

#endif
