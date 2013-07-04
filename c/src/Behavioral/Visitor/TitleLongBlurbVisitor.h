
//TitleLongBlurbVisitor - two of two concrete Visitors

#ifndef VISITOR_TITLELLONGBLURB_H_
#define VISITOR_TITLELLONGBLURB_H_

#include "TitleBlurbVisitor.h"


TitleBlurbVisitor_t * TitleLongBlurbVisitor_new() ;
void TitleLongBlurbVisitor_visit( TitleBlurbVisitor_t * this, void * info ) ;

#endif
