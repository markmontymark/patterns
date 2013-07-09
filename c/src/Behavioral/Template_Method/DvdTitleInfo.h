

//DvdTitleInfo - one of three concrete templates

#ifndef TEMPLATE_METHOD_DVD_H_
#define TEMPLATE_METHOD_DVD_H_

#include "TitleInfo.h"

typedef struct DvdTitleInfo_pdata DvdTitleInfo_pdata_t;
struct DvdTitleInfo_pdata
{
	char encodingRegion;
   char * star;
};
#define DvdTitleInfo_pdata_s sizeof(DvdTitleInfo_pdata_t)
DvdTitleInfo_pdata_t * DvdTitleInfo_pdata_new( char * star, char encodingRegion );
char * DvdTitleInfo_getTitleBlurb( TitleInfo_t * this ) ;
char * DvdTitleInfo_getDvdEncodingRegion( TitleInfo_t * this ) ;
TitleInfo_t * DvdTitleInfo_new( char * titleName, char * star, char encodingRegion );
void DvdTitleInfo_free( TitleInfo_t * );
char * DvdTitleInfo_getStar( TitleInfo_t * this) ;
char DvdTitleInfo_getEncodingRegion( TitleInfo_t * this) ;
  

#endif 
