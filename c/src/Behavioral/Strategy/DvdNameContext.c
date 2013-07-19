
//DvdNameContext - the context

#include "../../common/arraylist_string.h"
#include "DvdNameContext.h"
#include "DvdNameStrategy.h"
#include "DvdNameAllCapStrategy.h"
#include "DvdNameTheAtEndStrategy.h"
#include "DvdNameReplaceSpacesStrategy.h"

#include "stdlib.h"
#include "mem.h"
#include "assert.h"


void DvdNameContext_free( DvdNameContext_t * ctx) 
{
	assert(ctx);
	if( ctx->dvdNameStrategy != NULL )
		DvdNameStrategy_free( ctx->dvdNameStrategy );
	FREE(ctx);
}

DvdNameContext_t * DvdNameContext_new(char strategyTypeIn) 
{
	DvdNameContext_t * ctx;
	NEW(ctx);

	switch (strategyTypeIn) 
	{
		case 'C' : 
			ctx->dvdNameStrategy = DvdNameAllCapStrategy_new(); 
			break;

		case 'S' : 
			ctx->dvdNameStrategy = DvdNameReplaceSpacesStrategy_new();
			break;

		case 'E' : 
		default  : 
			ctx->dvdNameStrategy = DvdNameTheAtEndStrategy_new();
			break;
	} 
	return ctx;
}  
   
arraylist_string_t * DvdNameContext_formatDvdNames(DvdNameContext_t * ctx, arraylist_string_t * namesIn, char replacementIn) 
{
	arraylist_string_t * namesOut = arraylist_string_new();
	
	int i,
		sz = arraylist_string_size( namesIn );
	for (i = 0; i < sz; i++) 
		arraylist_string_add( 
			namesOut, 
			ctx->dvdNameStrategy->formatDvdName( 
				arraylist_string_get( namesIn, i) , 
				replacementIn)
		);
	return namesOut;
}
