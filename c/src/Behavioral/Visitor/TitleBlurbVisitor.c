//TitleBlurbVisitor - the abstract Visitor

#include "TitleBlurbVisitor.h"

#include "stdlib.h"

TitleBlurbVisitor_t * TitleBlurbVisitor_new( void (* visit)( TitleBlurbVisitor_t *, TitleInfo_t * info) )
{
	TitleBlurbVisitor_t * t = malloc(TitleBlurbVisitor_s);
	t->visit = visit;	
	t->titleBlurb = NULL;
	return t;
}

void TitleBlurbVisitor_free( TitleBlurbVisitor_t * t) 
{
	if( t == NULL)
		return;
	if( t->titleBlurb != NULL)
		free(t->titleBlurb);
	free(t);
}

