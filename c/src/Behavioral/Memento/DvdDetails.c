
//Memento (aka Token) Overview
//One object stores another objects state.
//DvdDetails- the Originator
//(the class to be backed up)

#include "../../common/arraylist_string.h"
#include "DvdDetails.h"

#include "stdlib.h"
#include "string.h"
#include "mem.h"
#include "assert.h"

DvdDetails_t * DvdDetails_new( 
	char * titleName, 
	char encodingRegion
) {
	DvdDetails_t * d;
	NEW(d);

	d->titleName = titleName;
	d->stars = NULL;
	d->encodingRegion = encodingRegion;
	return d;
}

DvdDetails_t * DvdDetails_new_w_stars( 
	char * titleName, 
	arraylist_string_t * stars, 
	char encodingRegion
) {
	DvdDetails_t * d = DvdDetails_new(titleName,encodingRegion);
	d->stars = arraylist_string_new();
	int i, size = arraylist_string_size( stars );
	for( i = 0; i < size; i++)
		arraylist_string_add( d->stars, arraylist_string_get( stars, i ) );
	return d;
}

void DvdDetails_free( DvdDetails_t * d)
{
	assert( d );
	if( d->stars != NULL )
		arraylist_string_free( d->stars );
	FREE( d );
}
	
void DvdDetails_addStar(DvdDetails_t *d, char * starIn) 
{
	if( d->stars == NULL )
		d->stars = arraylist_string_new();
	arraylist_string_add( d->stars,starIn);
}

char * DvdDetails_to_string( DvdDetails_t * d) 
{
	char * retval;
	char * starsString = arraylist_string_to_string( d->stars );
	int size = 5 + strlen( d->titleName ) + 12 + strlen(starsString) + 20 + 1 + 1;
	retval = malloc(size);

	snprintf( retval, size, "DVD: %s, starring: %s, encoding region: %c", d->titleName, starsString, d->encodingRegion );
	free( starsString );
	return retval;
}   
   
//sets current state to what DvdMemento has
void DvdDetails_reset(DvdDetails_t * d, DvdDetails_t * memento) 
{
	d->titleName = memento->titleName;
	if( d->stars != NULL )
		arraylist_string_free( d->stars );
	d->stars = arraylist_string_new();
	int i, size = arraylist_string_size( memento->stars );
	for( i = 0; i < size; i++)
		arraylist_string_add( d->stars, arraylist_string_get( memento->stars, i ) );
	d->encodingRegion = memento->encodingRegion;
}

//save current state of DvdDetails in a DvdMemento
DvdDetails_t * DvdDetails_createMemento( DvdDetails_t * d) 
{
	return DvdDetails_new_w_stars( d->titleName, d->stars, d->encodingRegion);
}
   
