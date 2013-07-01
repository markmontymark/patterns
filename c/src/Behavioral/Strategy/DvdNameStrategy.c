//DvdNameStrategy - the abstract strategy

#include "../../common/arraylist_string.h"
#include "DvdNameStrategy.h"

#include "stdlib.h"


DvdNameStrategy_t * DvdNameStrategy_new() 
{
	DvdNameStrategy_t * s = malloc ( DvdNameStrategy_s );
	return s;
}



void DvdNameStrategy_free( DvdNameStrategy_t * s) 
{
	if( s == NULL )
		return;
	free(s);
}


arraylist_string_t * DvdNameStrategy_formatDvdNames( DvdNameContext_t *, DvdNameStrategy_t *, char ) ;

