
//Template (aka "Don't call us, we'll call you") Overview
//An abstract class defines various methods, and has one non-overridden method which calls the various methods.
//TitleInfo - the abstract Template


#ifndef TEMPLATE_METHOD_TITLE_H_
#define TEMPLATE_METHOD_TITLE_H_


typedef struct mTitleInfo TitleInfo_t;
struct mTitleInfo
{
   char * ( * getTitleBlurb)( TitleInfo_t * );
   char * ( * getDvdEncodingRegion)( TitleInfo_t * );
   char * titleName;
	void * pdata;
};
#define TitleInfo_s sizeof(TitleInfo_t)

TitleInfo_t * TitleInfo_new( char * titleName, char * ( * getTitleBlurb)( TitleInfo_t * ), char * ( * getDvdEncodingRegion)( TitleInfo_t * )) ;

   
//the "template method" - 
//  calls the concrete class methods, is not overridden
char * TitleInfo_ProcessTitleInfo( TitleInfo_t * this)  ;


//this is a "primitive operation", 
//  and must be overridden in the concrete templates
// abstract String getTitleBlurb();
   
//this is a "hook operation", which may be overridden, 
//hook operations usually do nothing if not overridden 
char * TitleInfo_getDvdEncodingRegion( TitleInfo_t * this)  ;

#endif
