//DvdStateContext - the Context


#include "DvdStateContext.h"

#include "DvdStateName.h"
#include "DvdStateNameStars.h"

#include "assert.h"
#include "stdlib.h"
#include "mem.h"

static void DvdStateContext_freeDvdStateName(DvdStateContext_t * ctx)
{
	if( ctx != NULL && ctx->dvdStateName != NULL )
	{
		switch( ctx->dvdStateName->type)
		{
			case DvdStateNameExclaimType:
				DvdStateNameExclaim_free( ctx->dvdStateName );
				break;
			case DvdStateNameStarsType:
				DvdStateNameStars_free( ctx->dvdStateName );
				break;
		}
	}
}



void DvdStateContext_setDvdStateName(DvdStateContext_t * ctx, DvdStateName_t * dvdStateNameIn) 
{
	DvdStateContext_freeDvdStateName( ctx );
	ctx->dvdStateName = dvdStateNameIn;
}

DvdStateContext_t * DvdStateContext_new() 
{
	DvdStateContext_t * ctx;
	NEW(ctx);
	ctx->dvdStateName = NULL;
	DvdStateContext_setDvdStateName( ctx, DvdStateNameStars_new() );  
	return ctx;
}

void DvdStateContext_free( DvdStateContext_t *  ctx)
{
	//assert(ctx );
	assert( ctx->dvdStateName );
	DvdStateContext_freeDvdStateName( ctx );
	FREE( ctx );
}

void DvdStateContext_showName(DvdStateContext_t * ctx, char * name) 
{
	ctx->dvdStateName->showName(ctx->dvdStateName, ctx, name);
}
