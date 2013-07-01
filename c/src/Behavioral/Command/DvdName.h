//DvdName - the Receiver

#ifndef COMMAND_DVDNAME_H_
#define COMMAND_DVDNAME_H_

#include "stdlib.h"


typedef struct DvdName DvdName_t;
struct DvdName
{
	int do_free;
	char * titleName;
};

#define DvdName_s sizeof(DvdName_t)


DvdName_t * DvdName_new(char *titleName) ;
void DvdName_free( DvdName_t * d);
void DvdName_setTitleName(DvdName_t * d, char * titleNameIn) ;
char * getTitleName(DvdName_t * d) ;
void DvdName_setNameStarsOn(DvdName_t * d) ;
void DvdName_setNameStarsOff(DvdName_t * d) ;
char * DvdName_toString(DvdName_t * d) ;
#endif
