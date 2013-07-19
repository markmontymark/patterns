
//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

#include "DvdUpcaseTitle.h"
#include "DvdMediator.h"

#include "string.h"
#include "stdlib.h"
#include "ctype.h"
#include "mem.h"
#include "assert.h"



DvdUpcaseTitle_t * DvdUpcaseTitle_new(char * title, DvdMediator_t * dvdMediator) 
{
	DvdUpcaseTitle_t * d;
	NEW(d);

	d->need_free = 0;
	d->upcaseTitle = NULL;
	d->title = title;
	DvdUpcaseTitle_resetTitle(d, NULL);
	d->dvdMediator = dvdMediator;
	DvdMediator_setUpcase( dvdMediator, d );
	return d;
}    

void DvdUpcaseTitle_free ( DvdUpcaseTitle_t * d)
{
	assert( d );
	if( d->need_free && d->upcaseTitle != NULL )
		free( d->upcaseTitle );
	FREE( d );
}

void DvdUpcaseTitle_resetTitle( DvdUpcaseTitle_t * d, char * title) 
{
	if( title == NULL )
	{
		char * ut = strdup(d->title);
		char * t = ut;
		for(; *t; t++ )
			*t = toupper(*t);
		d->need_free = 1;
		DvdUpcaseTitle_setUpcaseTitle(d, ut );
	}
	else
	{
		strcpy(d->title , title);
		DvdUpcaseTitle_resetTitle(d, NULL);
	}
}    

void DvdUpcaseTitle_setSuperTitleUpcase( DvdUpcaseTitle_t * d ) 
{
	strcpy(d->title , d->upcaseTitle);
	DvdMediator_changeTitle_w_up( d->dvdMediator,d);
}

void DvdUpcaseTitle_setUpcaseTitle(DvdUpcaseTitle_t * d, char * upcaseTitle) 
{
	if( d->need_free && d->upcaseTitle != NULL )
		free( d->upcaseTitle );
	d->upcaseTitle = upcaseTitle;
}
