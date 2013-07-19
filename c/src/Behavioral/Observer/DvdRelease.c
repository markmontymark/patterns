

//DvdRelease - a helper class

#include "DvdRelease.h"
#include "stdlib.h"
#include "mem.h"
#include "assert.h"


DvdRelease_t * DvdRelease_new(
	char * serialNumber, char * dvdName, int dvdReleaseYear, int dvdReleaseMonth, int dvdReleaseDay
) 
{
	DvdRelease_t * d;
	NEW(d);
	d->serialNumber = serialNumber;
	d->dvdName = dvdName;
	d->dvdReleaseYear = dvdReleaseYear;
	d->dvdReleaseMonth = dvdReleaseMonth;
	d->dvdReleaseDay = dvdReleaseDay;       
	return d;
}

void DvdRelease_free( DvdRelease_t * d )
{
	FREE(d);
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


