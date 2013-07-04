

//DvdRelease - a helper class

#include "DvdRelease.h"
#include "stdlib.h"


DvdRelease_list_t * DvdRelease_list_new()
{
	DvdRelease_list_t * l = malloc(DvdRelease_list_s);
	l->this = NULL;
	l->next = NULL;
	return l;
}
void DvdRelease_list_add(DvdRelease_list_t * l, DvdRelease_t * d)
{
	DvdRelease_list_t * ll;
	if( l->this = NULL )
	{
		l->this = d;
		return;
	}
	ll = l;
	while( ll->next != NULL )
		ll = ll->next;
	ll->next = DvdRelease_list_new();
	ll = ll->next;
	ll->this = d;
}

void DvdRelease_list_free(DvdRelease_list_t * l)
{
}

DvdRelease_t * DvdRelease_new(
	char * serialNumber, char * dvdName, int dvdReleaseYear, int dvdReleaseMonth, int dvdReleaseDay
) 
{
	DvdRelease_t * d = malloc(DvdRelease_s);
	d->serialNumber = serialNumber;
	d->dvdName = dvdName;
	d->dvdReleaseYear = dvdReleaseYear;
	d->dvdReleaseMonth = dvdReleaseMonth;
	d->dvdReleaseDay = dvdReleaseDay;       
	return d;
}

void DvdRelease_updateDvdRelease(
	DvdRelease_t * d,
	char * serialNumber, 
	char * dvdName, 
	int dvdReleaseYear, 
	int dvdReleaseMonth, 
	int dvdReleaseDay
)
{
	d->serialNumber = serialNumber;
	d->dvdName = dvdName;
	d->dvdReleaseYear = dvdReleaseYear;
	d->dvdReleaseMonth = dvdReleaseMonth;
	d->dvdReleaseDay = dvdReleaseDay;
}   

void DvdRelease_updateDvdReleaseDate(
	DvdRelease_t * d,
	int dvdReleaseYear, 
	int dvdReleaseMonth, 
	int dvdReleaseDay
) {
	d->dvdReleaseYear = dvdReleaseYear;
	d->dvdReleaseMonth = dvdReleaseMonth;
	d->dvdReleaseDay = dvdReleaseDay;        
}   

void DvdRelease_update( DvdRelease_t * from, DvdRelease_t * to)
{
	from->serialNumber = to->serialNumber;
	from->dvdName = to->dvdName;
	from->dvdReleaseYear = to->dvdReleaseYear;
	from->dvdReleaseMonth = to->dvdReleaseMonth;
	from->dvdReleaseDay = to->dvdReleaseDay;
}


