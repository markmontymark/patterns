

#ifndef MEDIATOR_DVDUPPER_H_
#define MEDIATOR_DVDUPPER_H_

//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

typedef struct DvdUpcaseTitle DvdUpcaseTitle_t;

#include "DvdMediator.h"


struct DvdUpcaseTitle
{
   DvdMediator_t * dvdMediator;
	int need_free;
	char * title;
   char * upcaseTitle;
};
#define DvdUpcaseTitle_s sizeof(DvdUpcaseTitle_t)


DvdUpcaseTitle_t * DvdUpcaseTitle_new(char * title, DvdMediator_t * dvdMediator)  ;
void DvdUpcaseTitle_free( DvdUpcaseTitle_t * );
void DvdUpcaseTitle_resetTitle( DvdUpcaseTitle_t * d, char * title)  ;
void DvdUpcaseTitle_setSuperTitleUpcase( DvdUpcaseTitle_t * d )  ;
void DvdUpcaseTitle_setUpcaseTitle(DvdUpcaseTitle_t * d, char * upcaseTitle)  ;

#endif
