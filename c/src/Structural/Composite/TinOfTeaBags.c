
//TinOfTeaBags - one composite extension - the "node"

#include "TeaBags.h"
#include "TinOfTeaBags.h"
#include "stdlib.h"
#include "stdio.h"

void TinOfTeaBags_free(TeaBags_t * this)
{
	if( this->teaBagList != NULL )
		TeaBags_list_free( this->teaBagList );
	free(this);
}

int TinOfTeaBags_countTeaBags( TeaBags_t * this) 
{
	int totalTeaBags = 0;
	TeaBags_list_t * list = this->createListIterator( this );
	if(list == NULL )
		return totalTeaBags;

	while( list && (list->this || (list->next != NULL)) )
	{
		if( list->this )
		{
			totalTeaBags += list->this->countTeaBags( list->this );
			list = list->next;
		}
		else
			list = list->next;
	}
	return totalTeaBags;
}

int TinOfTeaBags_add(TeaBags_t * this, TeaBags_t * teaBagsToAdd) 
{
	teaBagsToAdd->parent = this;
	TeaBags_list_t * list = this->teaBagList;
	if(list == NULL )
		list = (this->teaBagList = TeaBags_list_new());
	while( list->this != NULL )
		list = list->next;
	TeaBags_list_add( this->teaBagList, teaBagsToAdd);
	return 1;
}

int TinOfTeaBags_remove(TeaBags_t * this, TeaBags_t * teaBagsToRemove) 
{
	TeaBags_list_t * list = this->teaBagList;
	TeaBags_list_t * prevlist = NULL;
	while ( list && (list->this || list->next) )
	{
		if (list->this && list->this == teaBagsToRemove) 
		{
			if(prevlist == NULL )	
				this->teaBagList = list->next;
			else
				prevlist->next = list->next;
			free(list);
			return 1;
		}
		prevlist = list;
		list = list->next;
	}
	return 0;
}

TeaBags_list_t * TinOfTeaBags_createListIterator(TeaBags_t * this ) 
{
	return this->teaBagList;
}

TeaBags_t * TinOfTeaBags_new( char * name )
{
	TeaBags_t * t = malloc( TeaBags_s );
	t->name = name;
	t->teaBagList = TeaBags_list_new();
	t->free  = TinOfTeaBags_free;
	t->countTeaBags = TinOfTeaBags_countTeaBags;
	t->add = TinOfTeaBags_add;
	t->remove = TinOfTeaBags_remove;
	t->createListIterator = TinOfTeaBags_createListIterator;
	return t;
}
   
