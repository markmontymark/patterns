

//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

#include "../../common/arraylist_string.h"
#include "DvdList.h"
#include "stdlib.h"
#include "mem.h"
#include "assert.h"


DvdList_t * DvdList_new()
{
	DvdList_t * d;
	NEW(d);

	d->titles = NULL;
	d->titleCount = 0;
	return d;
}

void DvdList_free( DvdList_t * d )
{
	assert( d );
	if( d->titles != NULL )
		arraylist_string_free( d->titles );
	FREE( d );
}
    
void DvdList_append( DvdList_t * d, char * titleIn) 
{
	if( d->titles == NULL )
		d->titles = arraylist_string_new();
	arraylist_string_add( d->titles, titleIn );
	d->titleCount ++;
}

void DvdList_delete( DvdList_t * d, char * titleIn) 
{
	int found = 0;
	int i;
	char * tmp;
	for (i = 0; i < d->titleCount; i++) 
	{
		tmp = arraylist_string_get( d->titles, i );
		if( tmp != NULL && strcmp(tmp,titleIn) == 0 )
		{
			found = 1;
			break;
		}
	}
	if( found == 0 )
		return;

	arraylist_string_t * newtitles = arraylist_string_new();
	for (i = 0; i < d->titleCount; i++) 
	{
		tmp = arraylist_string_get( d->titles, i );
		if( strcmp(tmp,titleIn) != 0 )
			arraylist_string_add( newtitles, tmp );
	}
	arraylist_string_free( d->titles );
	d->titles = newtitles;	
	d->titleCount = arraylist_string_size( newtitles );
}



void DvdList_first( Iterator_t * iter) 
{
	iter->currentPosition = 0;
}

void DvdList_next(Iterator_t * iter) 
{
	if(iter->currentPosition < ((DvdList_t * )(iter->pdata))->titleCount)
		iter->currentPosition ++;
}

int DvdList_isDone(Iterator_t * iter) 
{
	return (iter->currentPosition >= ( (DvdList_t *) (iter->pdata))->titleCount);
}

void * DvdList_currentItem( Iterator_t * iter) 
{
	return arraylist_string_get( ((DvdList_t *)(iter->pdata))->titles, iter->currentPosition);
}

Iterator_t * DvdList_createIterator( DvdList_t * list) 
{
	return Iterator_new(
		DvdList_first,
		DvdList_next,
		DvdList_isDone,	
		DvdList_currentItem,
		list
	);
}

