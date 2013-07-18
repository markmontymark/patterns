
//DvdStateNameStars - two of two Concrete States


#include "assert.h"
#include "DvdStateName.h"
#include "DvdStateNameStars.h"
#include "DvdStateNameExclaim.h"

#include "../../common/common_str.h"

#include "mem.h"
#include "stdio.h"

void DvdStateNameStars_showName(DvdStateNameStars_t * d, DvdStateContext_t * ctx, char * nameIn) 
{
	char * nameChanged = common_str_replace( nameIn, ' ', '*' );
	printf("%s\n", nameChanged);
	FREE(nameChanged);
	
	// show stars twice, switch to exclamation point
   d->starCount++;
   if (d->starCount > 1) 
		DvdStateContext_setDvdStateName( ctx, (DvdStateName_t *)DvdStateNameExclaim_new());
}

DvdStateName_t * DvdStateNameStars_new() 
{
	DvdStateNameStars_t * d;
	NEW(d);// = malloc( DvdStateNameStars_s );
	d->starCount = 0;
	d->showName = DvdStateNameStars_showName;
	return d;
}

void DvdStateNameStars_free(DvdStateNameStars_t * d)
{
	//assert(d != NULL);
	FREE( d );
}
    
