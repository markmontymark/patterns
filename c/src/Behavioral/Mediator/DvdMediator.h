

#ifndef MEDIATOR_DVD_MEDIATOR_H_
#define MEDIATOR_DVD_MEDIATOR_H_

//DvdMediator - The Mediator


typedef struct DvdMediator DvdMediator_t;

#include "DvdLowercaseTitle.h"
#include "DvdUpcaseTitle.h"

struct DvdMediator
{
	DvdUpcaseTitle_t * dvdUpcaseTitle; 
	DvdLowercaseTitle_t * dvdLowercaseTitle;
};

#define DvdMediator_s sizeof(DvdMediator_t)

DvdMediator_t * DvdMediator_new();
void DvdMediator_free( DvdMediator_t * );
void DvdMediator_setUpcase( DvdMediator_t * d, DvdUpcaseTitle_t * dvdUpcaseTitle)  ;
void DvdMediator_setLowercase( DvdMediator_t * d, DvdLowercaseTitle_t * dvdLowercaseTitle)  ;
void DvdMediator_changeTitle_w_up( DvdMediator_t * d, DvdUpcaseTitle_t * dvdUpcaseTitle)  ;
void DvdMediator_changeTitle_w_lower( DvdMediator_t * d, DvdLowercaseTitle_t * dvdLowercaseTitle)  ;

#endif
