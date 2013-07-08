

//DvdCategory - the Highest Class in the Chain

#ifndef COR_DVDCATEGORY_H_
#define COR_DVDCATEGORY_H_

#include "TopTitle.h"

typedef struct DvdCategory DvdCategory_t;
struct DvdCategory
{
	TopTitle_t * topTitle;
   char * category; 
   char * topCategoryTitle;
};
#define DvdCategory_s sizeof(DvdCategory_t)

DvdCategory_t * DvdCategory_new( char * category ) ;
void DvdCategory_free( DvdCategory_t * d) ;
void DvdCategory_setCategory(DvdCategory_t * d, char  * categoryIn) ;
char * DvdCategory_getCategory( DvdCategory_t * d) ;
char * DvdCategory_getAllCategories( void * d, char *) ;
void DvdCategory_setTopCategoryTitle(DvdCategory_t *  d, char * topCategoryTitleIn) ;
char * DvdCategory_getTopCategoryTitle( DvdCategory_t * d) ;
char * DvdCategory_getTopTitle( void * d) ;

#endif
