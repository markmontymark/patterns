
//DvdTitleExpression - Three Of Four Terminal Expressions

#ifndef INTERPRETER_DVDTITLE_H_
#define INTERPRETER_DVDTITLE_H_

DvdExpression_t * DvdTitleExpression_new() ;
char * DvdTitleExpression_interpret( DvdExpression_t * , DvdInterpreterContext_t *  ctx) ;

#endif
