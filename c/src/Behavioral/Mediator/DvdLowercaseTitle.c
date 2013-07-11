
#include "DvdLowercaseTitle.h"
#include "DvdMediator.h"

#include "string.h"
#include "stdlib.h"
#include "ctype.h"

// One of Two Concrete Colleagues or Mediatees

DvdLowercaseTitle_t * DvdLowercaseTitle_new(char * title, DvdMediator_t * dvdMediator)
{
	DvdLowercaseTitle_t * d = malloc( DvdLowercaseTitle_s );
	d->title = title;
	d->LowercaseTitle = NULL;
	d->need_free = 0;
	DvdLowercaseTitle_resetTitle( d , NULL );
	d->dvdMediator = dvdMediator;
	DvdMediator_setLowercase( d->dvdMediator,d);
	return d;
}


void DvdLowercaseTitle_free( DvdLowercaseTitle_t * d )
{
	if( d == NULL )
		return;
	free( d->LowercaseTitle);
	free( d );
}
    
void DvdLowercaseTitle_resetTitle(DvdLowercaseTitle_t * d, char * title) 
{
	if( title == NULL )
	{
		char * lt = strdup(d->title);
		char * t = lt;
		for( ; *t; t++ )
			*t = tolower(*t);
		d->need_free = 1;
		DvdLowercaseTitle_setLowercaseTitle( d, lt);
	}
	else
	{
		strcpy(d->title,title);
		DvdLowercaseTitle_resetTitle( d, NULL );
	}
}
   
void DvdLowercaseTitle_setSuperTitleLowercase(DvdLowercaseTitle_t * d) 
{
	strcpy(d->title,d->LowercaseTitle);
	DvdMediator_changeTitle_w_lower( d->dvdMediator, d);
}
   
void DvdLowercaseTitle_setLowercaseTitle(DvdLowercaseTitle_t * d, char * LowercaseTitle) 
{
	if( d->need_free && d->LowercaseTitle != NULL )
		free( d->LowercaseTitle );
	d->LowercaseTitle = LowercaseTitle;
}
