
//DvdReleaseByCategory - the subject
//(the class which is observed)

#ifndef OBSERVER_DRC_H_
#define OBSERVER_DRC_H_

#include "DvdRelease.h"
#include "DvdSubscriber.h"

#include "list.h"

typedef struct DvdReleaseByCategory DvdReleaseByCategory_t;
struct DvdReleaseByCategory
{
   char * categoryName; 
   List_T subscriberList;
   List_T dvdReleaseList;   
};

DvdReleaseByCategory_t * DvdReleaseByCategory_new(char * categoryNameIn) ;
void  DvdReleaseByCategory_free(DvdReleaseByCategory_t *) ;
void DvdReleaseByCategory_addSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) ;
int DvdReleaseByCategory_removeSubscriber(DvdReleaseByCategory_t * d, DvdSubscriber_t * dvdSubscriber) ;
void DvdReleaseByCategory_newDvdRelease(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) ;
void DvdReleaseByCategory_updateDvd(DvdReleaseByCategory_t * d, DvdRelease_t * dvdRelease) ;

#endif
