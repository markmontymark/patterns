
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
	void ( * showName )(DvdStateContext_t * ,  char * );
};
#define DvdStateNameExclaim_s sizeof(DvdStateNameExclaim_t)

DvdStateNameExclaim_t * DvdStateNameExclaim_new() ;
void DvdStateNameExclaim_free(DvdStateNameExclaim_t * ) ;
void showName(DvdStateName_t * , DvdStateContext_t * , char * ) ;



#endif

