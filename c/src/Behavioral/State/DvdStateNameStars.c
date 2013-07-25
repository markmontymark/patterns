
//DvdStateNameStars - two of two Concrete States


#include "assert.h"
#include "DvdStateName.h"
#include "DvdStateNameStars.h"
#include "DvdStateNameExclaim.h"

#include "../../common/common_str.h"

#include "mem.h"
#include "stdio.h"
#include "stdlib.h"

void DvdStateNameStars_showName(DvdStateName_t * d, DvdStateContext_t * ctx, char * nameIn) 
{
	char * nameChanged = common_str_replace( nameIn, ' ', '*' );
	printf("%s\n", nameChanged);
	free(nameChanged);
	
	// show stars twice, switch to exclamation point
   d->stars->starCount++;
   if (d->stars->starCount > 1) 
		DvdStateContext_setDvdStateName( ctx, (DvdStateName_t *)DvdStateNameExclaim_new());
}

DvdStateName_t * DvdStateNameStars_new() 
{
	DvdStateName_t * d;
	NEW(d);
	d->type = DvdStateNameStarsType;
	d->showName = DvdStateNameStars_showName;
	NEW(d->stars);
	d->stars->starCount = 0;
	return d;
}

void DvdStateNameStars_free(DvdStateName_t * d)
{
	FREE( d->stars );
	FREE( d );
}
    
