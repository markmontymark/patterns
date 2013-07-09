

//DvdTitleInfo - one of three concrete templates

#include "TitleInfo.h"
#include "DvdTitleInfo.h"

#include "stdlib.h"
#include "string.h"
#include "stdio.h"


DvdTitleInfo_pdata_t * DvdTitleInfo_pdata_new( char * star, char encodingRegion )
{
	DvdTitleInfo_pdata_t * p = malloc( DvdTitleInfo_pdata_s );
	p->star = star;
	p->encodingRegion = encodingRegion;
	return p;
}
void DvdTitleInfo_pdata_free( DvdTitleInfo_pdata_t * t )
{
	if( t == NULL)
		return;
	free(t);
}

char * DvdTitleInfo_getTitleBlurb( TitleInfo_t * this ) 
{
	char * retval;
	char * star = DvdTitleInfo_getStar( this);
	int size = 5 + strlen( this->titleName ) + 12 + strlen(star) + 1;
   retval = malloc( size );
	snprintf(retval,size,"Dvd: %s, Starring: %s", this->titleName , star );
	return retval;
}

char * DvdTitleInfo_getDvdEncodingRegion( TitleInfo_t * this ) 
{
	char er = DvdTitleInfo_getEncodingRegion( this);
	char * retval = malloc( 2 );
	snprintf(retval,1,"%c",er);
	return retval;
}

TitleInfo_t * DvdTitleInfo_new( char * titleName, char * star, char encodingRegion )
{
	TitleInfo_t * t = TitleInfo_new( titleName, DvdTitleInfo_getTitleBlurb, DvdTitleInfo_getDvdEncodingRegion );
	t->pdata = DvdTitleInfo_pdata_new( star, encodingRegion );
	return t;
}

void DvdTitleInfo_free( TitleInfo_t * t )
{
   if( t == NULL )
      return;
   if( t->pdata != NULL )
      DvdTitleInfo_pdata_free((DvdTitleInfo_pdata_t *)t->pdata );
   free( t );
}

    
char * DvdTitleInfo_getStar( TitleInfo_t * this) 
{
	return ((DvdTitleInfo_pdata_t *)(this->pdata))->star;
}
   
char DvdTitleInfo_getEncodingRegion( TitleInfo_t * this) 
{
	return ((DvdTitleInfo_pdata_t *)(this->pdata))->encodingRegion;
}
   
