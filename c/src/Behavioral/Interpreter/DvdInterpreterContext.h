
//DvdInterpreterContext - The Context

#ifndef INTERPRETER_CTX_H_
#define INTERPRETER_CTX_H_

#include "../../common/arraylist_string.h"
#include "TitleAndActor.h"


typedef struct DvdInterpreterContext DvdInterpreterContext_t;
struct DvdInterpreterContext
{
	arraylist_string_t * titles;
	arraylist_string_t * actors;
	TitleAndActor_list_t * titlesAndActors;
};
#define DvdInterpreterContext_s sizeof(DvdInterpreterContext_t)

DvdInterpreterContext_t * DvdInterpreterContext_new() ;
void DvdInterpreterContext_free( DvdInterpreterContext_t * ) ;
void DvdInterpreterContext_addTitle(DvdInterpreterContext_t * ctx, char * title)  ;
void DvdInterpreterContext_addActor(DvdInterpreterContext_t * ctx, char * actor)  ;
void DvdInterpreterContext_addTitleAndActor(DvdInterpreterContext_t * ctx, TitleAndActor_t * titleAndActor)  ;
arraylist_string_t * DvdInterpreterContext_getAllTitles( DvdInterpreterContext_t * ctx)  ;
arraylist_string_t * DvdInterpreterContext_getAllActors( DvdInterpreterContext_t * ctx)  ;
arraylist_string_t * DvdInterpreterContext_getActorsForTitle( DvdInterpreterContext_t * ctx, char * titleIn)  ;
arraylist_string_t * DvdInterpreterContext_getTitlesForActor( DvdInterpreterContext_t * ctx, char * actorIn)  ;

#endif
