
//TinOfTeaBags - one composite extension - the "node"

#include "TeaBags.h"
#include "TinOfTeaBags.h"
#include "stdlib.h"
#include "mem.h"
#include "list.h"

void TinOfTeaBags_free(TeaBags_t * this)
{
	List_free( &(this->teaBagList) );
	FREE(this);
}

int TinOfTeaBags_countTeaBags( TeaBags_t * this) 
{
	int totalTeaBags = 0;
	List_T list = this->createListIterator( this );

	while( list )
	{
		if( list->first )
			totalTeaBags += ((TeaBags_t*)(list->first))->countTeaBags( (TeaBags_t*)list->first );
		list = list->rest;
	}
	return totalTeaBags;
}

int TinOfTeaBags_add(TeaBags_t * this, TeaBags_t * teaBagsToAdd) 
{
	teaBagsToAdd->parent = this;
	//this->teaBagList = List_append( this->teaBagList, List_list(teaBagsToAdd) );
	this->teaBagList = List_push( this->teaBagList, teaBagsToAdd );
	return 1;
}

int TinOfTeaBags_remove(TeaBags_t * this, TeaBags_t * teaBagsToRemove) 
{
	this->teaBagList = List_remove( this->teaBagList, teaBagsToRemove );
	return 1;
}

List_T TinOfTeaBags_createListIterator(TeaBags_t * this ) 
{
	return this->teaBagList;
}

TeaBags_t * TinOfTeaBags_new( char * name )
{
	TeaBags_t * t;
	NEW( t );
	t->name = name;
	t->teaBagList = List_new();
	t->free  = TinOfTeaBags_free;
	t->countTeaBags = TinOfTeaBags_countTeaBags;
	t->add = TinOfTeaBags_add;
	t->remove = TinOfTeaBags_remove;
	t->createListIterator = TinOfTeaBags_createListIterator;
	return t;
}
   
