
//DvdSubCategory - the Middle Class in the Chain

#ifndef COR_DVDSUB_H_
#define COR_DVDSUB_H_

#include "TopTitle.h"
#include "DvdCategory.h"

typedef struct DvdSubCategory DvdSubCategory_t;
struct DvdSubCategory
{   
	TopTitle_t * topTitle;
   DvdCategory_t * parent;
   char * subCategory; 
   char * topSubCategoryTitle;
};
#define DvdSubCategory_s sizeof(DvdSubCategory_t)


DvdSubCategory_t * DvdSubCategory_new(DvdCategory_t * dvdCategory, char *subCategory) ;
void DvdSubCategory_free( DvdSubCategory_t * ) ;
void DvdSubCategory_setSubCategory(DvdSubCategory_t * d, char * subCategoryIn) ;
char * DvdSubCategory_getSubCategory(DvdSubCategory_t * d) ;
void DvdSubCategory_setCategory(DvdSubCategory_t * d, char * categoryIn) ;
char * DvdSubCategory_getCategory(DvdSubCategory_t * d) ;
void DvdSubCategory_setTopSubCategoryTitle(DvdSubCategory_t * d,char * topSubCategoryTitleIn) ;
char * DvdSubCategory_getTopSubCategoryTitle(DvdSubCategory_t * d) ;
void DvdSubCategory_setTopCategoryTitle(DvdSubCategory_t * d,char * topCategoryTitleIn) ;
char * DvdSubCategory_getTopCategoryTitle(DvdSubCategory_t * d) ;
char * DvdSubCategory_getAllCategories( void * d, char * dest ) ;
char * DvdSubCategory_getTopTitle( void * d )  ;

#endif
