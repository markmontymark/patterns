

//DvdSubscriber - the observer

#ifndef OBSERVER_DVDSUBSCRIBER_H_
#define OBSERVER_DVDSUBSCRIBER_H_

#include "DvdRelease.h"

typedef struct DvdSubscriber DvdSubscriber_t;
struct DvdSubscriber
{
   char * subscriberName; 
};
#define DvdSubscriber_s sizeof(DvdSubscriber_t)

typedef struct DvdSubscriber_list DvdSubscriber_list_t;
struct DvdSubscriber_list
{
   DvdSubscriber_t * this;
   DvdSubscriber_list_t * next;
};
#define DvdSubscriber_list_s sizeof(DvdSubscriber_list_t)

DvdSubscriber_list_t * DvdSubscriber_list_new();
int DvdSubscriber_list_add(DvdSubscriber_list_t * l, DvdSubscriber_t * d);
void DvdSubscriber_list_dump(DvdSubscriber_list_t * l);

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
