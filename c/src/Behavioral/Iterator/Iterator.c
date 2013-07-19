
//Iterator (aka Cursor) Overview
//One object can traverse all of the elements of another object.
//DvdListIterator - the Iterator Interface

#include "Iterator.h"
#include "mem.h"


Iterator_t * Iterator_new(
   void ( * first)  (),
   void ( * next)   (),  
   int  ( * isDone) (),
   void * (* currentItem) (),
	void * pdata
)
{
	Iterator_t * iter;
	NEW(iter);

	iter->currentPosition = 0;
	iter->first = first;
	iter->next = next ;
	iter->isDone = isDone ;
	iter->currentItem = currentItem;
	iter->pdata = pdata;
	return iter;
}

void Iterator_free( Iterator_t * iter )
{
	FREE( iter );
}

