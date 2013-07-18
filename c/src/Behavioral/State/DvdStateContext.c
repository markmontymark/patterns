//DvdStateContext - the Context


#include "DvdStateContext.h"

#include "DvdStateName.h"
#include "DvdStateNameStars.h"

#include "assert.h"
#include "stdlib.h"
#include "mem.h"

void DvdStateContext_setDvdStateName(DvdStateContext_t * ctx, DvdStateName_t * dvdStateNameIn) 
{
	if( ctx->dvdStateName != NULL )
		FREE( ctx->dvdStateName );
	ctx->dvdStateName = dvdStateNameIn;
}

DvdStateContext_t * DvdStateContext_new() 
{
	//DvdStateContext_t * ctx = malloc( DvdStateContext_s );
	DvdStateContext_t * ctx;
	NEW(ctx);
	DvdStateContext_setDvdStateName( ctx, DvdStateNameStars_new() );  
	return ctx;
}

void DvdStateContext_free( DvdStateContext_t *  ctx)
{
	//assert(ctx );
	assert( ctx->dvdStateName );
	FREE( ctx->dvdStateName );
	FREE( ctx );
}

void DvdStateContext_showName(DvdStateContext_t * ctx, char * name) 
{
	ctx->dvdStateName->showName(ctx->dvdStateName, ctx, name);
}
