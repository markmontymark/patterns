

//TitleAndActor - A Helper Class

#include "TitleAndActor.h"
#include "mem.h"
#include "assert.h"

TitleAndActor_t * TitleAndActor_new( char * title, char * actor)
{
	assert(title);
	assert(actor);
	TitleAndActor_t * ta;
	NEW(ta);

	ta->title = title;
	ta->actor = actor;
	return ta;
}

void TitleAndActor_free(  TitleAndActor_t * ta )
{
	FREE(ta);
}

