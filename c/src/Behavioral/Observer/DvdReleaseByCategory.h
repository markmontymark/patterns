
//DvdReleaseByCategory - the subject
//(the class which is observed)

#ifndef OBSERVER_DRC_H_
#define OBSERVER_DRC_H_

#include "DvdRelease.h"
#include "DvdSubscriber.h"

typedef struct DvdReleaseByCategory DvdReleaseByCategory_t;
struct DvdReleaseByCategory
{
   char * categoryName; 
   DvdSubscriber_list_t * subscriberList;
   DvdRelease_list_t * dvdReleaseList;   
};
#define DvdReleaseByCategory_s sizeof(DvdReleaseByCategory_t)

DvdReleaseByCategory_t * DvdReleaseByCategory_new(char * categoryNameIn) ;
void  DvdReleaseByCategory_free(DvdReleaseByCategory_t *) ;
int DvdReleaseByCategory_addSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) ;
int DvdReleaseByCategory_removeSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) ;
void DvdReleaseByCategory_newDvdRelease(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) ;
void DvdReleaseByCategory_updateDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) ;

#endif
