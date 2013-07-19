

//OneTeaBag - one composite extension - the "leaf"

#include "TeaBags.h"
#include "OneTeaBag.h"

#include "list.h"
#include "mem.h"
#include "stdlib.h"

void OneTeaBag_free( TeaBags_t * this) 
{
	FREE(this);
}

int OneTeaBag_countTeaBags( TeaBags_t * this) 
{
	return 1;
}
   
int OneTeaBag_add(TeaBags_t * this, TeaBags_t * teaBagsToAdd) 
{
	return 0;
}

int OneTeaBag_remove(TeaBags_t * this, TeaBags_t * teaBagsToRemove) 
{
	return 0;
}

List_T OneTeaBag_createListIterator( TeaBags_t * this) 
{
	return List_list(NULL);
}

TeaBags_t * OneTeaBag_new( char * name )
{
	TeaBags_t * t;
	NEW(t);
	t->name = name;
	t->free = OneTeaBag_free;
	t->countTeaBags = OneTeaBag_countTeaBags;
	t->add = OneTeaBag_add;
	t->remove = OneTeaBag_remove;
	t->createListIterator  = OneTeaBag_createListIterator;
	return t;
}
    
