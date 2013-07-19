//TitleBlurbVisitor - the abstract Visitor

#include "TitleBlurbVisitor.h"

#include "stdlib.h"
#include "mem.h"
#include "assert.h"

TitleBlurbVisitor_t * TitleBlurbVisitor_new( void (* visit)( TitleBlurbVisitor_t *, TitleInfo_t * info) )
{
	TitleBlurbVisitor_t * t;
	NEW(t);

	t->visit = visit;	
	t->titleBlurb = NULL;
	return t;
}

void TitleBlurbVisitor_free( TitleBlurbVisitor_t * t) 
{
	assert( t );
	if( t->titleBlurb != NULL)
		free(t->titleBlurb);
	FREE(t);
}

