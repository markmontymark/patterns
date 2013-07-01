//DvdName - the Receiver


#include "stdlib.h"
#include "DvdName.h"

#include "stdio.h"
#include "stdarg.h"
#include "string.h"

#include "../../common/common_str.h"



DvdName_t * DvdName_new(char *titleName) 
{
	DvdName_t * d = malloc( DvdName_s );
	d->do_free = 0;
	d->titleName = titleName;
	return d;
}    
void DvdName_free( DvdName_t * d)
{
	if( d == NULL )
		return;
	if( d->titleName != NULL)
		free( d->titleName );
	free(d);
}

void DvdName_setTitleName(DvdName_t * d, char * titleNameIn) 
{
	if(d->do_free)
		free(d->titleName);
	d->titleName = titleNameIn;
	d->do_free = 1;
}

char * DvdName_getTitleName(DvdName_t * d) 
{
	return d->titleName;
}

void DvdName_setNameStarsOn(DvdName_t * d) 
{
	char * n = DvdName_getTitleName(d);
	DvdName_setTitleName( d, common_str_replace( n,' ','*'));
}

void DvdName_setNameStarsOff(DvdName_t * d) 
{
	char * n = DvdName_getTitleName(d);
	DvdName_setTitleName( d, common_str_replace( n , '*',' '));
}   

char * DvdName_toString(DvdName_t * d) 
{
	char * retval = malloc( strlen(DvdName_getTitleName(d)) + 1 + 5);
	sprintf(retval,"DVD: %s",DvdName_getTitleName(d));
	return retval;
}

