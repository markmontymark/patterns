
//DvdReleaseByCategory - the subject
//(the class which is observed)

#include "DvdRelease.h"
#include "DvdSubscriber.h"
#include "DvdReleaseByCategory.h"

#include "stdlib.h"
#include "stdio.h"


DvdReleaseByCategory_t * DvdReleaseByCategory_new(char * categoryNameIn) 
{
	DvdReleaseByCategory_t * d = malloc(DvdReleaseByCategory_s);
	d->categoryName = categoryNameIn;
	d->subscriberList = DvdSubscriber_list_new();
	d->dvdReleaseList = DvdRelease_list_new();
	return d;
}

void  DvdReleaseByCategory_free(DvdReleaseByCategory_t * d)
{
	if( d == NULL )
		return;
	DvdSubscriber_list_free( d->subscriberList );
	DvdRelease_list_free( d->dvdReleaseList );
	free(d);
}

   
int DvdReleaseByCategory_addSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) 
{
	return DvdSubscriber_list_add( d->subscriberList, dvdSubscriber);
}
   
int DvdReleaseByCategory_removeSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) 
{
	DvdSubscriber_list_t * tmp = d->subscriberList;
	DvdSubscriber_list_t * prevtmp = NULL;
	while(tmp->next)
	{
		if(dvdSubscriber == tmp->this) 
		{
			if(tmp == d->subscriberList)
				d->subscriberList = tmp->next;
			else
				prevtmp->next = tmp->next;
			free(tmp->this);
			free(tmp);
			return 1;
		}
		prevtmp = tmp;
		tmp = tmp->next;
	}
	if(tmp->this && dvdSubscriber == tmp->this)
	{
		if(tmp == d->subscriberList)
			d->subscriberList = tmp->next;
		else
			prevtmp->next = tmp->next;
		free(tmp->this);
		free(tmp);
		return 1;
	}
	return 0;
}
   
static void notifySubscribersOfNewDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	DvdSubscriber_list_t * tmp = d->subscriberList;
	while(tmp->next != NULL)
	{
		if(tmp->this)
			DvdSubscriber_newDvdRelease(tmp->this, dvdRelease, d->categoryName);
		tmp = tmp->next;
	}
	if(tmp->this)
		DvdSubscriber_newDvdRelease(tmp->this, dvdRelease, d->categoryName);
}

static void notifySubscribersOfUpdate(DvdReleaseByCategory_t * d,DvdRelease_t * dvdRelease) 
{
	DvdSubscriber_list_t * tmp = d->subscriberList;
	while(tmp->next != NULL)
	{
		if(tmp->this)
			DvdSubscriber_updateDvdRelease(tmp->this,dvdRelease, d->categoryName );
		tmp = tmp->next;
	}
	if(tmp->this)
		DvdSubscriber_updateDvdRelease(tmp->this,dvdRelease, d->categoryName );
}

void DvdReleaseByCategory_newDvdRelease(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	DvdRelease_list_add( d->dvdReleaseList, dvdRelease );
	notifySubscribersOfNewDvd( d, dvdRelease);
}
   
void DvdReleaseByCategory_updateDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	int dvdUpdated = 0;
	DvdRelease_list_t * tmp = d->dvdReleaseList;
	while(tmp->next != NULL)
	{
		if(tmp->this)
		{
			if (dvdRelease->serialNumber == tmp->this->serialNumber )
			{
				DvdRelease_update( tmp->this, dvdRelease );
				dvdUpdated = 1;
				break;
			}
		}
		tmp = tmp->next;
	}
	if (dvdUpdated) 
	{
		notifySubscribersOfUpdate(d, dvdRelease);
	} 
	else
	{ 
		DvdReleaseByCategory_newDvdRelease(d,dvdRelease);
	}
}

