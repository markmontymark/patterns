

#include "DvdUpcaseTitle.h"
#include "DvdMediator.h"

#include "stdlib.h"
#include "ctype.h"

//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees


DvdUpcaseTitle_t * DvdUpcaseTitle_new(char * title, DvdMediator_t * dvdMediator) 
{
	DvdUpcaseTitle_t * d = malloc( DvdUpcaseTitle_s );
	d->title = title;
	DvdUpcaseTitle_resetTitle(d, NULL);
	d->dvdMediator = dvdMediator;
	DvdMediator_setUpcase( dvdMediator, d );
	return d;
}    

void DvdUpcaseTitle_free ( DvdUpcaseTitle_t * d)
{
	if( d == NULL)
		return;
	free( d );
}

void DvdUpcaseTitle_resetTitle( DvdUpcaseTitle_t * d, char * title) 
{
	if( title == NULL )
	{
		char * start_t = strdup(d->title);
		char * t = start_t;
		for(; *t; t++ )
			*t = toupper(*t);
		DvdUpcaseTitle_setUpcaseTitle(d, start_t );
	}
	else
	{
		d->title = title;
		DvdUpcaseTitle_resetTitle(d, NULL);
	}
}    

void DvdUpcaseTitle_setSuperTitleUpcase( DvdUpcaseTitle_t * d ) 
{
	 d->title = d->upcaseTitle;
	 DvdMediator_changeTitle_w_up( d->dvdMediator,d);
}

void DvdUpcaseTitle_setUpcaseTitle(DvdUpcaseTitle_t * d, char * upcaseTitle) 
{
	 d->upcaseTitle = upcaseTitle;
}
