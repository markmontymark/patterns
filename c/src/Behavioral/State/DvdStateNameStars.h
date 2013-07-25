
//DvdStateNameStars - two of two Concrete States

#ifndef STATE_DVDSTATENAMESTARS_H_
#define STATE_DVDSTATENAMESTARS_H_

#include "assert.h"
#include "DvdStateName.h"
#include "DvdStateNameStars.h"
#include "DvdStateContext.h"


typedef struct DvdStateNameStars DvdStateNameStars_t;
struct DvdStateNameStars
{
	void ( * showName )(DvdStateName_t *, DvdStateContext_t * ,  char * );
	int starCount;
};


DvdStateName_t * DvdStateNameStars_new()  ;
void DvdStateNameStars_free(DvdStateName_t * ) ;
void DvdStateNameStars_showName(DvdStateName_t * , DvdStateContext_t * , char * )  ;

#endif
