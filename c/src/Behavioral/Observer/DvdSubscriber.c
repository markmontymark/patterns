

//DvdSubscriber - the observer

#include "DvdSubscriber.h"

#include "stdlib.h"
#include "stdio.h"

DvdSubscriber_list_t * DvdSubscriber_list_new()
{
   DvdSubscriber_list_t * l = malloc(DvdSubscriber_list_s);
   l->this = NULL;
   l->next = NULL;
   return l;
}

int DvdSubscriber_list_add(DvdSubscriber_list_t * l, DvdSubscriber_t * d)
{
   DvdSubscriber_list_t * ll;
   if( l->this = NULL )
   {
      l->this = d;
      return 1;
   }
   ll = l;
   while( ll->next != NULL )
      ll = ll->next;
   ll->next = DvdSubscriber_list_new();
   ll->next->this = d;
	return 1;
}

void DvdSubscriber_list_free(DvdSubscriber_list_t * l)
{
   if( l == NULL )
      return;
   if( l->next != NULL )
      DvdSubscriber_list_free( l->next );
   free( l );
}


void DvdSubscriber_list_dump(DvdSubscriber_list_t * l)
{
	DvdSubscriber_list_t * ll = l;
	do
	{
		printf("sub list dump: %p\n",ll->this);//->this->subscriberName);
	} while( (ll = ll->next));
}


void DvdSubscriber_free( DvdSubscriber_t * d )
{
	if( d == NULL )
		return;
	free( d );
}


DvdSubscriber_t * DvdSubscriber_new(char * subscriberNameIn) 
{
	DvdSubscriber_t * s = malloc(DvdSubscriber_s);
	s->subscriberName = subscriberNameIn;
	return s;
}
   
void DvdSubscriber_newDvdRelease(
	DvdSubscriber_t * s, 
	DvdRelease_t * newDvdRelease, 
	char * subscriptionListName
) 
{
	printf("Hello %s, subscriber to the %s DVD release list.\n",
		s->subscriberName , 
      subscriptionListName 
	);
   printf("The new Dvd %s will be released on %d/%d/%d.\n"  ,
		newDvdRelease->dvdName , 
		newDvdRelease->dvdReleaseMonth,
		newDvdRelease->dvdReleaseDay,
		newDvdRelease->dvdReleaseYear
	);
}
   
void DvdSubscriber_updateDvdRelease(
	DvdSubscriber_t * s, 
	DvdRelease_t * newDvdRelease, 
	char * subscriptionListName) 
{
	printf("Hello %s, subscriber to the %s DVD release list.\n",
		s->subscriberName,
		subscriptionListName );
	printf( "The following DVDs release has been revised: %s  will be released on %d/%d/%d.\n", 
		newDvdRelease->dvdName,
		newDvdRelease->dvdReleaseMonth ,
		newDvdRelease->dvdReleaseDay,
		newDvdRelease->dvdReleaseYear );
}   
