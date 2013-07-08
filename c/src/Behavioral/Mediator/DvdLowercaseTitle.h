
#ifndef MEDIATOR_DVDLOWER_H_
#define MEDIATOR_DVDLOWER_H_

// One of Two Concrete Colleagues or Mediatees

typedef struct DvdLowercaseTitle DvdLowercaseTitle_t;

#include "DvdMediator.h"

struct DvdLowercaseTitle
{
	char * title;
   char * LowercaseTitle;
   DvdMediator_t * dvdMediator;
};
#define DvdLowercaseTitle_s sizeof(DvdLowercaseTitle_t)

DvdLowercaseTitle_t * DvdLowercaseTitle_new(char * title, DvdMediator_t * dvdMediator) ;
void DvdLowercaseTitle( DvdLowercaseTitle_t * ) ; 
void DvdLowercaseTitle_resetTitle(DvdLowercaseTitle_t * d, char * title)  ;
void DvdLowercaseTitle_setSuperTitleLowercase(DvdLowercaseTitle_t * d)  ;
void DvdLowercaseTitle_setLowercaseTitle(DvdLowercaseTitle_t * d, char * LowercaseTitle)  ;

#endif
