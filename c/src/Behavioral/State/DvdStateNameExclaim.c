
//DvdStateNameExclaim - one of two Concrete States

#include "assert.h"
#include "DvdStateName.h"
#include "DvdStateNameExclaim.h"
#include "DvdStateNameStars.h"
#include "DvdStateContext.h"

#include "mem.h"
#include "stdio.h"
#include "stdlib.h"

#include "../../common/common_str.h"


void DvdStateNameExclaim_showName(DvdStateName_t * d, DvdStateContext_t * ctx, char * nameIn) 
{
	char * nameChanged = common_str_replace(nameIn, ' ','!');
	printf( "%s\n", nameChanged );
	free(nameChanged);
	//show exclaim only once, switch back to stars
	DvdStateContext_setDvdStateName( ctx, DvdStateNameStars_new());
}


DvdStateName_t * DvdStateNameExclaim_new() 
{
	DvdStateName_t * d;
	NEW(d);
	d->type = DvdStateNameExclaimType;
	d->showName = DvdStateNameExclaim_showName;
	return d;
}

void DvdStateNameExclaim_free(DvdStateName_t * d)
{
	FREE( d );
}
    

