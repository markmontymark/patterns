
//DvdStateName - the State interface

#ifndef STATE_DVDSTATENAME_H_
#define STATE_DVDSTATENAME_H_


typedef struct DvdStateName DvdStateName_t;

#include "DvdStateContext.h"
#include "DvdStateNameExclaim.h"
#include "DvdStateNameStars.h"

enum DvdStateNameType { DvdStateNameExclaimType, DvdStateNameStarsType };
struct DvdStateName
{
   enum DvdStateNameType type;
   union
   {
      DvdStateNameStars_t * stars;
      DvdStateNameExclaim_t * exclaim;
   };
   void ( * showName)(DvdStateName_t * , DvdStateContext_t *, char * ) ;  
};


#endif


