


#include "TopTitle.h"
#include "DvdSubCategory.h"
#include "DvdSubSubCategory.h"

#include "stdlib.h"
#include "stdio.h"
#include "string.h"

//DvdSubSubCategory - the Lowest Class in the Chain


DvdSubSubCategory_t * DvdSubSubCategory_new(DvdSubCategory_t * dvdSubCategory, char * subCategory) 
{
	DvdSubSubCategory_t * d = malloc( DvdSubSubCategory_s );
	d->topTitle = TopTitle_new( DvdSubSubCategory_getTopTitle, DvdSubSubCategory_getAllCategories );
	DvdSubSubCategory_setSubSubCategory( d, subCategory); 
	d->parent = dvdSubCategory;
	return d;
}    

void DvdSubSubCategory_free( DvdSubSubCategory_t * d )
{
	if( d == NULL )
		return;
	TopTitle_free( d->topTitle );
	free( d );
}

void DvdSubSubCategory_setSubSubCategory( DvdSubSubCategory_t * d, char * subSubCategoryIn) 
{
	d->subSubCategory = subSubCategoryIn;
}
char * DvdSubSubCategory_getSubSubCategory( DvdSubSubCategory_t * d ) 
{
	return d->subSubCategory;
} 
void DvdSubSubCategory_setSubCategory(  DvdSubSubCategory_t * d, char * subCategoryIn) 
{
	DvdSubCategory_setSubCategory( d->parent, subCategoryIn);
}
char * DvdSubSubCategory_getSubCategory(  DvdSubSubCategory_t * d) 
{
	return DvdSubCategory_getSubCategory( d->parent);
}
void DvdSubSubCategory_setCategory(  DvdSubSubCategory_t * d, char * categoryIn) 
{
	DvdSubCategory_setCategory( d->parent, categoryIn );
}
char * DvdSubSubCategory_getCategory(  DvdSubSubCategory_t * d) 
{
	return DvdSubCategory_getCategory( d->parent);
}
char * DvdSubSubCategory_getAllCategories(  void * d, char * dest) 
{
	char * c = DvdSubSubCategory_getCategory(d);
	char * s = DvdSubSubCategory_getSubCategory(d);
	char * ss = DvdSubSubCategory_getSubSubCategory(d);
	int size = strlen(c) + 1 + strlen(s) + 1 + strlen(ss) + 1;
	dest = malloc( size );
	snprintf(  dest, size, "%s/%s/%s", c,s,ss);
	return dest;
}   

void DvdSubSubCategory_setTopSubSubCategoryTitle(   DvdSubSubCategory_t * d, char * topSubSubCategoryTitleIn) 
{
	d->topSubSubCategoryTitle = topSubSubCategoryTitleIn;
}

char * DvdSubSubCategory_getTopSubSubCategoryTitle(  DvdSubSubCategory_t * d) 
{
	return d->topSubSubCategoryTitle;
}
void DvdSubSubCategory_setTopSubCategoryTitle(   DvdSubSubCategory_t * d, char * topSubCategoryTitleIn) 
{
	DvdSubCategory_setTopSubCategoryTitle( d->parent, topSubCategoryTitleIn);
}
char * DvdSubSubCategory_getTopSubCategoryTitle(  DvdSubSubCategory_t * d) 
{
	return DvdSubCategory_getTopSubCategoryTitle( d->parent );
}
void DvdSubSubCategory_setTopCategoryTitle(  DvdSubSubCategory_t * d, char * topCategoryTitleIn) 
{
	DvdSubCategory_setTopCategoryTitle( d->parent, topCategoryTitleIn);
}
char * DvdSubSubCategory_getTopCategoryTitle(  DvdSubSubCategory_t * d) 
{
	return DvdSubCategory_getTopCategoryTitle(d->parent);
}

char * DvdSubSubCategory_getTopTitle(  void * d) 
{
	DvdSubSubCategory_t * dcasted = (DvdSubSubCategory_t*)d;
	char * tt = DvdSubSubCategory_getTopSubSubCategoryTitle(dcasted) ;
	if (NULL != tt )
		return tt;
	DvdSubSubCategory_getAllCategories(dcasted, tt);
	printf( "no top title in Category/SubCategory/SubSubCategory %s\n" , tt);
	return DvdSubCategory_getTopTitle(dcasted->parent);
}
