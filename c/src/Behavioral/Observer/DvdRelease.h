

//DvdRelease - a helper class

#ifndef OBSERVER_DVDRELEASE_H_
#define OBSERVER_DVDRELEASE_H_

typedef struct DvdRelease DvdRelease_t;
struct DvdRelease
{
	int dvdReleaseYear;
	int dvdReleaseMonth;
	int dvdReleaseDay;
	char * serialNumber;
	char * dvdName; 
};

DvdRelease_t * DvdRelease_new(
	char * serialNumber, 
	char * dvdName, 
	int dvdReleaseYear, 
	int dvdReleaseMonth, 
	int dvdReleaseDay
) ;

void DvdRelease_free( DvdRelease_t * );

void DvdRelease_updateDvdRelease(
	DvdRelease_t * d,
	char * serialNumber, 
	char * dvdName, 
	int dvdReleaseYear, 
	int dvdReleaseMonth, 
	int dvdReleaseDay
) ;

void DvdRelease_updateDvdReleaseDate(
	DvdRelease_t * d,
	int dvdReleaseYear, 
	int dvdReleaseMonth, 
	int dvdReleaseDay
) ;

void DvdRelease_update( DvdRelease_t * from, DvdRelease_t * to);

#endif
