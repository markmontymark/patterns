

//DvdCategory - the Highest Class in the Chain

#include "TopTitle.h"
#include "DvdCategory.h"

#include "mem.h"
#include "assert.h"
#include "stdlib.h"

DvdCategory_t * DvdCategory_new( char * category )
{
	DvdCategory_t *d;
	NEW(d);

	d->topTitle = TopTitle_new( DvdCategory_getTopTitle, DvdCategory_getAllCategories );
	d->category = category;
	d->topCategoryTitle = NULL;
	return d;
}

void DvdCategory_free( DvdCategory_t * d)
{
	assert(d);
	if( d->topTitle != NULL)
		TopTitle_free( d->topTitle );
	FREE( d );
}
   
void DvdCategory_setCategory(DvdCategory_t * d, char  * categoryIn) 
{
	d->category = categoryIn;
}

char * DvdCategory_getCategory( DvdCategory_t * d) 
{
	return d->category;
} 

char * DvdCategory_getAllCategories( void * d, char * c) 
{
	return DvdCategory_getCategory( (DvdCategory_t *)d);
}
   
void DvdCategory_setTopCategoryTitle(DvdCategory_t *  d, char * topCategoryTitleIn) 
{
	d->topCategoryTitle = topCategoryTitleIn;
}
char * DvdCategory_getTopCategoryTitle( DvdCategory_t * d) 
{
	return d->topCategoryTitle;
}

char * DvdCategory_getTopTitle( void * d) 
{
	return DvdCategory_getTopCategoryTitle((DvdCategory_t *)d);
}
