//DvdStateContext - the Context


#include "DvdStateContext.h"

#include "DvdStateName.h"
#include "DvdStateNameStars.h"

#include "stdlib.h"

void DvdStateContext_setDvdStateName(DvdStateContext_t * ctx, DvdStateName_t * dvdStateNameIn) 
{
	if( ctx->dvdStateName != NULL )
		free( ctx->dvdStateName );
	ctx->dvdStateName = dvdStateNameIn;
}

DvdStateContext_t * DvdStateContext_new() 
{
	DvdStateContext_t * ctx = malloc( DvdStateContext_s );
	DvdStateContext_setDvdStateName( ctx, DvdStateNameStars_new() );  
	return ctx;
}

void DvdStateContext_free( DvdStateContext_t *  ctx)
{	
	if( ctx == NULL )
		return;
	if( ctx->dvdStateName != NULL )
		free( ctx->dvdStateName );
	free( ctx );
}

void DvdStateContext_showName(DvdStateContext_t * ctx, char * name) 
{
	ctx->dvdStateName->showName(ctx->dvdStateName, ctx, name);
}
