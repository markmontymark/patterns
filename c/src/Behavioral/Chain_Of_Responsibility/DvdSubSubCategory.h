

#ifndef COR_DVDSUBSUB_H_
#define COR_DVDSUBSUB_H_

#include "DvdSubCategory.h"

//DvdSubSubCategory - the Lowest Class in the Chain

typedef struct DvdSubSubCategory DvdSubSubCategory_t;
struct DvdSubSubCategory
{
	TopTitle_t * topTitle;
   DvdSubCategory_t * parent;
   char * subSubCategory; 
   char * topSubSubCategoryTitle;
};

#define DvdSubSubCategory_s sizeof(DvdSubSubCategory_t)
   
DvdSubSubCategory_t * DvdSubSubCategory_new(DvdSubCategory_t * dvdSubCategory, char * subCategory) ;
void DvdSubSubCategory_free( DvdSubSubCategory_t * );
void DvdSubSubCategory_setSubSubCategory( DvdSubSubCategory_t * d, char * subSubCategoryIn) ;
char * DvdSubSubCategory_getSubSubCategory( DvdSubSubCategory_t * d ) ;
void DvdSubSubCategory_setSubCategory(  DvdSubSubCategory_t * d, char * subCategoryIn) ;
char * DvdSubSubCategory_getSubCategory(  DvdSubSubCategory_t * d) ;
void DvdSubSubCategory_setCategory(  DvdSubSubCategory_t * d, char * categoryIn) ;
char * DvdSubSubCategory_getCategory(  DvdSubSubCategory_t * d) ;
char * DvdSubSubCategory_getAllCategories(  void * d, char * dest) ;
void DvdSubSubCategory_setTopSubSubCategoryTitle(   DvdSubSubCategory_t * d, char * topSubSubCategoryTitleIn) ;
char * DvdSubSubCategory_getTopSubSubCategoryTitle(  DvdSubSubCategory_t * d) ;
void DvdSubSubCategory_setTopSubCategoryTitle(   DvdSubSubCategory_t * d, char * topSubCategoryTitleIn) ;
char * DvdSubSubCategory_getTopSubCategoryTitle(  DvdSubSubCategory_t * d) ;
void DvdSubSubCategory_setTopCategoryTitle(  DvdSubSubCategory_t * d, char * topCategoryTitleIn) ;
char * DvdSubSubCategory_getTopCategoryTitle(  DvdSubSubCategory_t * d) ;
char * DvdSubSubCategory_getTopTitle(  void * d) ;

#endif
