

//DvdSubscriber - the observer

#ifndef OBSERVER_DVDSUBSCRIBER_H_
#define OBSERVER_DVDSUBSCRIBER_H_

#include "DvdRelease.h"

typedef struct DvdSubscriber DvdSubscriber_t;
struct DvdSubscriber
{
   char * subscriberName; 
};

DvdSubscriber_t * DvdSubscriber_new(char * subscriberNameIn) ;
void DvdSubscriber_free (DvdSubscriber_t * );
void DvdSubscriber_newDvdRelease(
	DvdSubscriber_t * s, 
	DvdRelease_t * newDvdRelease, 
	char * subscriptionListName
) ;

void DvdSubscriber_updateDvdRelease(
	DvdSubscriber_t * s, 
	DvdRelease_t * newDvdRelease, 
	char * subscriptionListName
) ;

#endif
