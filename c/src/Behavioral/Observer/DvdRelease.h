

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
#define DvdRelease_s sizeof(DvdRelease_t)

typedef struct DvdRelease_list DvdRelease_list_t;
struct DvdRelease_list
{
	DvdRelease_t * this;
	DvdRelease_list_t * next;
};
#define DvdRelease_list_s sizeof(DvdRelease_list_t)

DvdRelease_list_t * DvdRelease_list_new();
void DvdRelease_list_add(DvdRelease_list_t * l, DvdRelease_t * d);
void DvdRelease_list_free(DvdRelease_list_t * l);
DvdRelease_t * DvdRelease_new(
	char * serialNumber, char * dvdName, int dvdReleaseYear, int dvdReleaseMonth, int dvdReleaseDay
) ;
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
