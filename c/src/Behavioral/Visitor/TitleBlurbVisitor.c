//TitleBlurbVisitor - the abstract Visitor

#include "TitleBlurbVisitor.h"

#include "stdlib.h"

TitleBlurbVisitor_t * TitleBlurbVisitor_new( void (* visit)( TitleBlurbVisitor_t *, void * info) )
{
	TitleBlurbVisitor_t * t = malloc(TitleBlurbVisitor_s);
	t->visit = visit;	
	return t;
}


