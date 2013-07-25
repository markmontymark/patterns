

//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

#ifndef ITERATOR_DVDLIST_H_
#define ITERATOR_DVDLIST_H_

#include "../../common/arraylist_string.h"

#include "Iterator.h"


typedef struct DvdList DvdList_t;
struct DvdList
{  
	int titleCount;
   arraylist_string_t * titles;  
};


DvdList_t * DvdList_new();
void DvdList_free( DvdList_t * );
void DvdList_append( DvdList_t * d, char * titleIn) ;
void DvdList_delete( DvdList_t * d, char * titleIn) ;
void DvdList_first( Iterator_t * iter) ;
void DvdList_next(Iterator_t * iter) ;
int DvdList_isDone(Iterator_t * iter) ;
void * DvdList_currentItem( Iterator_t * iter) ;
Iterator_t * DvdList_createIterator( DvdList_t * list) ;

#endif
