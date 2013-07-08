
//Iterator (aka Cursor) Overview
//One object can traverse all of the elements of another object.
//DvdListIterator - the Iterator Interface

#ifndef ITERATOR_ITERATOR_H_
#define ITERATOR_ITERATOR_H_

typedef struct Iterator Iterator_t;
struct Iterator
{
	int currentPosition;
   void ( * first)  ( Iterator_t *);
   void ( * next)   ( Iterator_t *);  
   int  ( * isDone) ( Iterator_t *);
   void * (* currentItem) ( Iterator_t *);
	void * pdata;
};
#define Iterator_s sizeof(Iterator_t)

Iterator_t * Iterator_new(
   void ( * first)  (),
   void ( * next)   (),  
   int  ( * isDone) (),
   void * (* currentItem) (),
	void * pdata
) ;
void Iterator_free( Iterator_t * iter ) ;

#endif
