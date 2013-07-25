
//DvdInterpreterContext - The Context

#ifndef INTERPRETER_CTX_H_
#define INTERPRETER_CTX_H_

#include "TitleAndActor.h"
#include "list.h"


typedef struct DvdInterpreterContext DvdInterpreterContext_t;
struct DvdInterpreterContext
{
	List_T titles;
	List_T actors;
	List_T titlesAndActors;
};


DvdInterpreterContext_t * DvdInterpreterContext_new() ;
void DvdInterpreterContext_free( DvdInterpreterContext_t * ) ;
void DvdInterpreterContext_addTitle(DvdInterpreterContext_t * ctx, char * title)  ;
void DvdInterpreterContext_addActor(DvdInterpreterContext_t * ctx, char * actor)  ;
void DvdInterpreterContext_addTitleAndActor(DvdInterpreterContext_t * ctx, TitleAndActor_t * titleAndActor)  ;
List_T DvdInterpreterContext_getAllTitles( DvdInterpreterContext_t * ctx)  ;
List_T DvdInterpreterContext_getAllActors( DvdInterpreterContext_t * ctx)  ;
List_T DvdInterpreterContext_getActorsForTitle( DvdInterpreterContext_t * ctx, char * titleIn)  ;
List_T DvdInterpreterContext_getTitlesForActor( DvdInterpreterContext_t * ctx, char * actorIn)  ;

#endif
