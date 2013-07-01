
//DvdNameContext - the context

#include "../../common/arraylist_string.h"
#include "DvdNameContext.h"
#include "DvdNameStrategy.h"
#include "DvdNameAllCapStrategy.h"
#include "DvdNameTheAtEndStrategy.h"
#include "DvdNameReplaceSpacesStrategy.h"

#include "stdlib.h"


void DvdNameContext_free( DvdNameContext_t * ctx) 
{
	if(ctx == NULL)
		return;
	free(ctx);
}

DvdNameContext_t * DvdNameContext_new(char strategyTypeIn) 
{
	DvdNameContext_t * ctx = malloc( DvdNameContext_s );
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
