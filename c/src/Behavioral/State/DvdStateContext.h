

//DvdStateContext - the Context

#ifndef STATE_DVDSTATECONTEXT_H_
#define STATE_DVDSTATECONTEXT_H_


typedef struct DvdStateContext DvdStateContext_t;

#include "DvdStateName.h"

struct DvdStateContext 
{  
   DvdStateName_t * dvdStateName; 
};
#define DvdStateContext_s sizeof(DvdStateContext_t)

DvdStateContext_t * DvdStateContext_new()  ;
void DvdStateContext_free( DvdStateContext_t * ) ;
void DvdStateContext_setDvdStateName(DvdStateContext_t * , DvdStateName_t * ) ;
void DvdStateContext_showName(DvdStateContext_t * , char * )  ;

#endif
