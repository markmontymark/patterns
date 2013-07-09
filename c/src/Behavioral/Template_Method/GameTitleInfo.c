
//GameTitleInfo - three of three concrete templates

#include "TitleInfo.h"
#include "GameTitleInfo.h"

#include "stdlib.h"
#include "string.h"
#include "stdio.h"

char * GameTitleInfo_getTitleBlurb( TitleInfo_t * this ) 
{
	char * retval;
	int size = 6 + strlen( this->titleName ) + 1;
	retval = malloc( size );
	snprintf(retval,size,"Game: %s", this->titleName );
	return retval;
}

TitleInfo_t * GameTitleInfo_new( char * titleName )
{
	TitleInfo_t * t = TitleInfo_new( titleName, GameTitleInfo_getTitleBlurb, NULL );
	return t;
}
void GameTitleInfo_free( TitleInfo_t * t)
{
	if( t == NULL )
		return;
	free( t );
}
    
