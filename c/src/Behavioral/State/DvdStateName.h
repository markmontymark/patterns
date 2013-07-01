
//DvdStateName - the State interface

#ifndef STATE_DVDSTATENAME_H_
#define STATE_DVDSTATENAME_H_


typedef struct DvdStateName DvdStateName_t;

#include "DvdStateContext.h"

struct DvdStateName 
{  
   void ( * showName)(DvdStateName_t * , DvdStateContext_t *, char * ) ;  
};

#endif


