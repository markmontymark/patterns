
//DvdReleaseByCategory - the subject
//(the class which is observed)

#include "DvdRelease.h"
#include "DvdSubscriber.h"
#include "DvdReleaseByCategory.h"

#include "stdlib.h"
#include "stdio.h"
#include "mem.h"
#include "list.h"


DvdReleaseByCategory_t * DvdReleaseByCategory_new(char * categoryNameIn) 
{
	DvdReleaseByCategory_t * d;
	NEW(d);
	d->categoryName = categoryNameIn;
	d->subscriberList = List_list(NULL);
	d->dvdReleaseList = List_list(NULL);
	return d;
}

void  DvdReleaseByCategory_free(DvdReleaseByCategory_t * d)
{
	assert( d );
	List_free( &(d->subscriberList) );
	List_free( &(d->dvdReleaseList) );
	FREE(d);
}

   
void DvdReleaseByCategory_addSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) 
{
	d->subscriberList = List_push( d->subscriberList, dvdSubscriber);
}
   
int DvdReleaseByCategory_removeSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) 
{
	d->subscriberList = List_remove( d->subscriberList, dvdSubscriber);
	return 1;
}


// -------------------------
// context struct for passing data to vendor/cii20/src/List iterators: List_map, List_first
struct notify_ctx
{
	DvdRelease_t * dvdRelease;
	char * categoryName;
};


// -------------------------
static void apply_newdvd(void **subscriber, void *ctx)
{
	struct notify_ctx * cctx = (struct notify_ctx *)(ctx);
	DvdSubscriber_newDvdRelease(
		(DvdSubscriber_t*)(*subscriber), 
		cctx->dvdRelease, 
		cctx->categoryName);
}

static void notifySubscribersOfNewDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	struct notify_ctx ctx = { .dvdRelease = dvdRelease, .categoryName = d->categoryName };
	List_map( d->subscriberList, apply_newdvd, &ctx );
}

// -------------------------

static void apply_update(void **subscriber, void *ctx)
{
	struct notify_ctx * cctx = (struct notify_ctx *)(ctx);
	DvdSubscriber_updateDvdRelease(
		(DvdSubscriber_t*)(*subscriber), 
		cctx->dvdRelease, 
		cctx->categoryName);
}

static void notifySubscribersOfUpdate(DvdReleaseByCategory_t * d,DvdRelease_t * dvdRelease)//, struct notify_ctx * ctx) 
{
	struct notify_ctx ctx = { .dvdRelease = dvdRelease, .categoryName = d->categoryName };
	List_map( d->subscriberList, apply_update, &ctx );
}

// -------------------------


void DvdReleaseByCategory_newDvdRelease(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	d->dvdReleaseList = List_push( d->dvdReleaseList, dvdRelease );
	notifySubscribersOfNewDvd( d, dvdRelease);
}

  
// -------------------------


static int first_updatedvd(void **release, void *ctx)
{
	DvdRelease_t * rel = (DvdRelease_t *)(*release);
	struct notify_ctx * cctx = (struct notify_ctx *)(ctx);
	if ( strcmp(cctx->dvdRelease->serialNumber,rel->serialNumber) == 0 )
	{
		DvdRelease_update( rel, cctx->dvdRelease );
		return 1;
	}
	return 0;
}

void DvdReleaseByCategory_updateDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) 
{
	int dvdUpdated = 0;
	struct notify_ctx ctx = { .dvdRelease = dvdRelease, .categoryName = d->categoryName };
	dvdUpdated = List_first( d->dvdReleaseList, first_updatedvd, &ctx );
	if (dvdUpdated) 
		notifySubscribersOfUpdate(d, dvdRelease);//, &ctx);
	else
		DvdReleaseByCategory_newDvdRelease(d,dvdRelease);
}

