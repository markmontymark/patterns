
#include "DvdMediator.h"

#include "mem.h"

//DvdMediator - The Mediator

DvdMediator_t * DvdMediator_new()
{
	DvdMediator_t * d;
	NEW(d);

	return d;
}
void DvdMediator_free( DvdMediator_t * d)
{
	FREE( d );
}
   
void DvdMediator_setUpcase( DvdMediator_t * d, DvdUpcaseTitle_t * dvdUpcaseTitle) 
{
	d->dvdUpcaseTitle = dvdUpcaseTitle;
} 
   
void DvdMediator_setLowercase( DvdMediator_t * d, DvdLowercaseTitle_t * dvdLowercaseTitle) 
{
	d->dvdLowercaseTitle = dvdLowercaseTitle;
}   
   
void DvdMediator_changeTitle_w_up( DvdMediator_t * d, DvdUpcaseTitle_t * dvdUpcaseTitle) 
{
	DvdLowercaseTitle_resetTitle( d->dvdLowercaseTitle, d->dvdUpcaseTitle->title);
}
   
void DvdMediator_changeTitle_w_lower( DvdMediator_t * d, DvdLowercaseTitle_t * dvdLowercaseTitle) 
{
	DvdUpcaseTitle_resetTitle( d->dvdUpcaseTitle, d->dvdLowercaseTitle->title);
}
