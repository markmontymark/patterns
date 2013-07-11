

#include "DvdUpcaseTitle.h"
#include "DvdMediator.h"

#include "string.h"
#include "stdlib.h"
#include "ctype.h"

//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees


DvdUpcaseTitle_t * DvdUpcaseTitle_new(char * title, DvdMediator_t * dvdMediator) 
{
	DvdUpcaseTitle_t * d = malloc( DvdUpcaseTitle_s );
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
	if( d == NULL)
		return;
	if( d->need_free && d->upcaseTitle != NULL )
		free( d->upcaseTitle );
	free( d );
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
		int i = 0;
      for( ; *title; *title++, i++)
         d->title[i] = *title;

		//d->title = title;
		DvdUpcaseTitle_resetTitle(d, NULL);
	}
}    

void DvdUpcaseTitle_setSuperTitleUpcase( DvdUpcaseTitle_t * d ) 
{
	int i = 0;
   char * title = d->upcaseTitle;
   for( ; *title; *title++, i++)
      d->title[i] = *title;

	//d->title = d->upcaseTitle;
	DvdMediator_changeTitle_w_up( d->dvdMediator,d);
}

void DvdUpcaseTitle_setUpcaseTitle(DvdUpcaseTitle_t * d, char * upcaseTitle) 
{
	if( d->need_free && d->upcaseTitle != NULL )
		free( d->upcaseTitle );
	//d->need_free = 0;
	d->upcaseTitle = upcaseTitle;
}