
#include "DvdLowercaseTitle.h"
#include "DvdMediator.h"

#include "stdlib.h"
#include "ctype.h"

#include "stdio.h"
#include "string.h"

// One of Two Concrete Colleagues or Mediatees

DvdLowercaseTitle_t * DvdLowercaseTitle_new(char * title, DvdMediator_t * dvdMediator)
{
	DvdLowercaseTitle_t * d = malloc( DvdLowercaseTitle_s );
	d->title = title;
	DvdLowercaseTitle_resetTitle( d , NULL );
	d->dvdMediator = dvdMediator;
	DvdMediator_setLowercase( d->dvdMediator,d);
	return d;
}


void DvdLowercaseTitle_free( DvdLowercaseTitle_t * d )
{
	if( d == NULL )
		return;
	free( d );
}
    
void DvdLowercaseTitle_resetTitle(DvdLowercaseTitle_t * d, char * title) 
{
	if( title == NULL )
	{
		char * start_t = strdup(d->title);
		char * t = start_t;
		//printf("start reset with %s\n", t);
		for( ; *t; t++ )
		{
			*t = tolower(*t);
		}
		//printf("after loopstart reset with %s\n", start_t);
		DvdLowercaseTitle_setLowercaseTitle( d, start_t );
	}
	else
	{
		d->title = title;
		DvdLowercaseTitle_resetTitle( d, NULL );
	}
}
   
void DvdLowercaseTitle_setSuperTitleLowercase(DvdLowercaseTitle_t * d) 
{
	d->title = d->LowercaseTitle;
	DvdMediator_changeTitle_w_lower( d->dvdMediator, d);
}
   
void DvdLowercaseTitle_setLowercaseTitle(DvdLowercaseTitle_t * d, char * LowercaseTitle) 
{
	d->LowercaseTitle = LowercaseTitle;
}
