
//DvdStateNameExclaim - one of two Concrete States

#ifndef STATE_DVDSTATENAMEEXCLAIM_H_
#define STATE_DVDSTATENAMEEXCLAIM_H_


#include "assert.h"
#include "DvdStateName.h"
#include "DvdStateNameExclaim.h"
#include "DvdStateContext.h"

#include "../../common/common_str.h"

typedef struct DvdStateNameExclaim DvdStateNameExclaim_t;
struct DvdStateNameExclaim
{
	void ( * showName )(DvdStateName_t * d, DvdStateContext_t * ,  char * );
};


DvdStateName_t * DvdStateNameExclaim_new() ;
void DvdStateNameExclaim_free(DvdStateName_t * ) ;
void DvdStateNameExclaim_showName(DvdStateName_t * , DvdStateContext_t * , char * ) ;



#endif

