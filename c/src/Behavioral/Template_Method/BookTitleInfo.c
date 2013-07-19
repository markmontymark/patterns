
//BookTitleInfo - two of three concrete templates

#include "TitleInfo.h"
#include "BookTitleInfo.h"

#include "stdlib.h"
#include "string.h"
#include "stdio.h"

#include "mem.h"
#include "assert.h"


BookTitleInfo_pdata_t * BookTitleInfo_pdata_new( char * author )
{
	BookTitleInfo_pdata_t * p;
	NEW(p);

	p->author = author;
	return p;
}
void BookTitleInfo_pdata_free( BookTitleInfo_pdata_t * t )
{
	free(t);
}

TitleInfo_t * BookTitleInfo_new( char * titleName, char * author )
{
	TitleInfo_t * t = TitleInfo_new( titleName, BookTitleInfo_getTitleBlurb, NULL );
	t->pdata  = BookTitleInfo_pdata_new(  author );
	return t;
}

void BookTitleInfo_free( TitleInfo_t * t )
{
	assert( t );
	if( t->pdata != NULL )
		BookTitleInfo_pdata_free( (BookTitleInfo_pdata_t *)t->pdata );
	FREE( t );
}
    
void BookTitleInfo_setAuthor( TitleInfo_t * this, char * authorIn) 
{
	this->pdata  = BookTitleInfo_pdata_new(  authorIn );
}

char * BookTitleInfo_getAuthor( TitleInfo_t * this) 
{
	return ((BookTitleInfo_pdata_t *)(this->pdata))->author;
}
   
char * BookTitleInfo_getTitleBlurb( TitleInfo_t * this ) 
{
	char * retval;
	char * author = BookTitleInfo_getAuthor( this);
	int size = 6 + strlen( this->titleName ) + 10 + strlen(author) + 1;
   retval = malloc( size );
	snprintf(retval,size,"Book: %s, Author: %s", this->titleName , author );
	return retval;
}
