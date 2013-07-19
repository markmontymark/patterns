//DvdNameStrategy - the abstract strategy

#include "../../common/arraylist_string.h"
#include "DvdNameStrategy.h"

#include "stdlib.h"
#include "mem.h"


DvdNameStrategy_t * DvdNameStrategy_new() 
{
	DvdNameStrategy_t * s;
	NEW(s);
	return s;
}



void DvdNameStrategy_free( DvdNameStrategy_t * s) 
{
	FREE(s);
}


arraylist_string_t * DvdNameStrategy_formatDvdNames( DvdNameContext_t *, DvdNameStrategy_t *, char ) ;

