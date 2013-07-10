
//DvdSubCategory - the Middle Class in the Chain

#include "TopTitle.h"
#include "DvdCategory.h"
#include "DvdSubCategory.h"

#include "stdlib.h"
#include "stdio.h"
#include "string.h"


DvdSubCategory_t * DvdSubCategory_new(DvdCategory_t * dvdCategory, char * subCategory) 
{
	DvdSubCategory_t * d = malloc( DvdSubCategory_s );
   d->topTitle = TopTitle_new( DvdSubCategory_getTopTitle, DvdSubCategory_getAllCategories );
	d->subCategory = subCategory; 
	d->parent = dvdCategory;
	d->topSubCategoryTitle = NULL;
	return d;
}    
void DvdSubCategory_free( DvdSubCategory_t * d )
{
	if( d == NULL )
		return;
	TopTitle_free( d->topTitle );
	free( d );
}

void DvdSubCategory_setSubCategory(DvdSubCategory_t * d, char * subCategoryIn) 
{
	d->subCategory = subCategoryIn;
}
char * DvdSubCategory_getSubCategory(DvdSubCategory_t * d) {
	return d->subCategory;
}
void DvdSubCategory_setCategory(DvdSubCategory_t * d, char * categoryIn) 
{
	DvdCategory_setCategory( d->parent, categoryIn);
}
char * DvdSubCategory_getCategory(DvdSubCategory_t * d) 
{
	return DvdCategory_getCategory( d->parent );
}

void DvdSubCategory_setTopSubCategoryTitle(DvdSubCategory_t * d,char * topSubCategoryTitleIn) 
{
	d->topSubCategoryTitle = topSubCategoryTitleIn;
}
char * DvdSubCategory_getTopSubCategoryTitle(DvdSubCategory_t * d) 
{
	return d->topSubCategoryTitle;
}
void DvdSubCategory_setTopCategoryTitle(DvdSubCategory_t * d,char * topCategoryTitleIn) 
{
	DvdCategory_setTopCategoryTitle( d->parent,topCategoryTitleIn);
}
char * DvdSubCategory_getTopCategoryTitle(DvdSubCategory_t * d) 
{
	return DvdCategory_getTopCategoryTitle(d->parent);
}

char * DvdSubCategory_getAllCategories(void * d, char * destt ) 
{
	char * c = DvdSubCategory_getCategory(d);
	char * s = DvdSubCategory_getSubCategory(d);
	int size = strlen(c) + 1 + strlen(s) + 1;
	char * dest = malloc( size );
	snprintf(dest,size,"%s/%s",c,s);
	return dest;
}


char * DvdSubCategory_getTopTitle( void * d ) 
{
	DvdSubCategory_t * dcasted = (DvdSubCategory_t *)d;	
	char * tt = DvdSubCategory_getTopSubCategoryTitle( dcasted );
	if (tt != NULL)
		return tt;

	char * gac = DvdSubCategory_getAllCategories(dcasted, NULL);
	printf("no top title in Category/SubCategory %s\n", gac);
	free(gac);
	return DvdCategory_getTopTitle( dcasted->parent );
}
