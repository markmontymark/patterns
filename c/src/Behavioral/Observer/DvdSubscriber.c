

//DvdSubscriber - the observer

#include "DvdSubscriber.h"

#include "stdio.h"
#include "mem.h"

void DvdSubscriber_free( DvdSubscriber_t * d )
{
	FREE( d );
}

DvdSubscriber_t * DvdSubscriber_new(char * subscriberNameIn) 
{
	DvdSubscriber_t * s;
	NEW( s );
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
