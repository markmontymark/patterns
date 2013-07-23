
//DvdInterpreterContext - The Context

#include "../../common/arraylist_string.h"
#include "TitleAndActor.h"
#include "DvdInterpreterContext.h"

#include "stdlib.h"
#include "mem.h"
#include "assert.h"
#include "list.h"


DvdInterpreterContext_t * DvdInterpreterContext_new()
{
	DvdInterpreterContext_t * ctx;
	NEW(ctx);

	ctx->titles = NULL;
	ctx->actors = NULL;
	ctx->titlesAndActors = NULL;
	return ctx;
}

void DvdInterpreterContext_free( DvdInterpreterContext_t * ctx )
{
	assert( ctx );
	List_free( &(ctx->titles) );
	List_free( &(ctx->actors) );
	List_free( &(ctx->titlesAndActors) );
	FREE( ctx  );
}


void DvdInterpreterContext_addTitle(DvdInterpreterContext_t * ctx, char * title) 
{
	ctx->titles = List_push( ctx->titles, title );
}

void DvdInterpreterContext_addActor( DvdInterpreterContext_t * ctx,char * actor) 
{
	ctx->actors = List_push( ctx->actors, actor );
}

void DvdInterpreterContext_addTitleAndActor(DvdInterpreterContext_t * ctx, TitleAndActor_t * titleAndActor) 
{
	ctx->titlesAndActors = List_push( ctx->titlesAndActors, titleAndActor );
}

List_T DvdInterpreterContext_getAllTitles( DvdInterpreterContext_t * ctx) 
{
	return ctx->titles;
}

List_T DvdInterpreterContext_getAllActors( DvdInterpreterContext_t * ctx) 
{
	return ctx->actors;
}

List_T DvdInterpreterContext_getActorsForTitle( DvdInterpreterContext_t * ctx, char * titleIn) 
{
	List_T actorsForTitle = List_list(NULL);
	List_T ta = ctx->titlesAndActors;
	while( ta->first )
	{
		if( strcmp( titleIn, ((TitleAndActor_t*)ta->first)->title ) == 0 ) 
			actorsForTitle = List_push( actorsForTitle, ((TitleAndActor_t *)ta->first)->actor );
		if(ta->rest == NULL)
			break;
		ta = ta->rest;
	}
	return actorsForTitle;
}

List_T DvdInterpreterContext_getTitlesForActor( DvdInterpreterContext_t * ctx, char * actorIn) 
{
	List_T titlesForActor = List_list(NULL);
	List_T ta = ctx->titlesAndActors;
	while( ta->first)
	{
		if( strcmp( actorIn, ((TitleAndActor_t*)ta->first)->actor ) == 0 ) 
			titlesForActor = List_push( titlesForActor, ((TitleAndActor_t*)ta->first)->title );
		if(ta->rest == NULL)
			break;
		ta = ta->rest;
	}
	return titlesForActor;
}
