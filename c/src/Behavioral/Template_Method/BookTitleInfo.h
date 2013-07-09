
#ifndef TEMPLATE_METHOD_BOOK_H_
#define TEMPLATE_METHOD_BOOK_H_

//BookTitleInfo - two of three concrete templates

#include "TitleInfo.h"

typedef struct BookTitleInfo_pdata BookTitleInfo_pdata_t;
struct BookTitleInfo_pdata
{
   char * author;
};
#define BookTitleInfo_pdata_s sizeof(BookTitleInfo_pdata_t)
BookTitleInfo_pdata_t * BookTitleInfo_pdata_new( char * author ) ;
TitleInfo_t * BookTitleInfo_new( char * titleName, char * author ) ;
void BookTitleInfo_free( TitleInfo_t * );
void BookTitleInfo_setAuthor( TitleInfo_t * this, char * authorIn)  ;
char * BookTitleInfo_getAuthor( TitleInfo_t * this)  ;
char * BookTitleInfo_getTitleBlurb( TitleInfo_t * this )  ;

#endif
