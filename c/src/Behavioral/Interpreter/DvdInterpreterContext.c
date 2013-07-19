
//DvdInterpreterContext - The Context

#include "../../common/arraylist_string.h"
#include "TitleAndActor.h"
#include "DvdInterpreterContext.h"

#include "stdlib.h"
#include "mem.h"
#include "assert.h"


DvdInterpreterContext_t * DvdInterpreterContext_new()
{
	DvdInterpreterContext_t * ctx;
	NEW(ctx);

	ctx->titles = arraylist_string_new();
	ctx->actors = arraylist_string_new();
	ctx->titlesAndActors = TitleAndActor_list_new();
	return ctx;
}

void DvdInterpreterContext_free( DvdInterpreterContext_t * ctx )
{
	assert( ctx );
	arraylist_string_free( ctx->titles );
	arraylist_string_free( ctx->actors );
	TitleAndActor_list_free( ctx->titlesAndActors );
	FREE( ctx  );
}


void DvdInterpreterContext_addTitle(DvdInterpreterContext_t * ctx, char * title) 
{
	arraylist_string_add( ctx->titles, title);
}

void DvdInterpreterContext_addActor( DvdInterpreterContext_t * ctx,char * actor) 
{
	arraylist_string_add( ctx->actors, actor);
}

void DvdInterpreterContext_addTitleAndActor(DvdInterpreterContext_t * ctx, TitleAndActor_t * titleAndActor) 
{
	TitleAndActor_list_add( ctx->titlesAndActors, titleAndActor);
}

arraylist_string_t * DvdInterpreterContext_getAllTitles( DvdInterpreterContext_t * ctx) 
{
	return ctx->titles;
}

arraylist_string_t * DvdInterpreterContext_getAllActors( DvdInterpreterContext_t * ctx) 
{
	return ctx->actors;
}

arraylist_string_t * DvdInterpreterContext_getActorsForTitle( DvdInterpreterContext_t * ctx, char * titleIn) 
{
	arraylist_string_t * actorsForTitle = arraylist_string_new();
	TitleAndActor_list_t * ta = ctx->titlesAndActors;
	while( ta->this || ta->next )
	{
		if( ta->this )
		{
			if( strcmp( titleIn, ta->this->title ) == 0 ) 
				arraylist_string_add( actorsForTitle, ta->this->actor );
		}
		if(ta->next == NULL)
			break;
		ta = ta->next;
	}
	return actorsForTitle;
}


arraylist_string_t * DvdInterpreterContext_getTitlesForActor( DvdInterpreterContext_t * ctx, char * actorIn) 
{
	arraylist_string_t * titlesForActor = arraylist_string_new();
	TitleAndActor_list_t * ta = ctx->titlesAndActors;
	while( ta->this || ta->next )
	{
		if( ta->this )
		{
			if( strcmp( actorIn, ta->this->actor ) == 0 ) 
				arraylist_string_add( titlesForActor, ta->this->title );
		}
		if(ta->next == NULL)
			break;
		ta = ta->next;
	}
	return titlesForActor;
}
