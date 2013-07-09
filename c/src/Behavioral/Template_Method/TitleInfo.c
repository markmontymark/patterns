
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//TitleInfo - the abstract Template

#include "../../common/arraylist_string.h"
#include "TitleInfo.h"

#include "stdlib.h"


//this is a "hook operation", which may be overridden, 
//hook operations usually do nothing if not overridden 
char * TitleInfo_getDvdEncodingRegion( TitleInfo_t * this) 
{
	char * retval = malloc( 2 );
	snprintf(retval,1," ");
	return retval;
}

TitleInfo_t * TitleInfo_new( char * titleName, char * ( * getTitleBlurb)( TitleInfo_t * ), char * ( * getDvdEncodingRegion)( TitleInfo_t * ) )
{
	TitleInfo_t * d = malloc(TitleInfo_s);
	d->getTitleBlurb = getTitleBlurb;
	d->getDvdEncodingRegion = (getDvdEncodingRegion != NULL ) ? getDvdEncodingRegion : TitleInfo_getDvdEncodingRegion;
	d->titleName = titleName;
	d->pdata = NULL;
	return d;
}
   
//the "template method" - 
//  calls the concrete class methods, is not overridden
char * TitleInfo_ProcessTitleInfo( TitleInfo_t * this) 
{
	arraylist_string_t * result = arraylist_string_new();
	char * titleBlurb = this->getTitleBlurb( this );
	char * der = this->getDvdEncodingRegion(this);
	arraylist_string_add( result, titleBlurb );
	arraylist_string_add( result, der );
	char * retval = arraylist_string_to_string( result);
	arraylist_string_free( result );
	free(titleBlurb);
	free(der);
	return retval;
}  
   
//this is a "primitive operation", 
//  and must be overridden in the concrete templates
// abstract String getTitleBlurb();
   
