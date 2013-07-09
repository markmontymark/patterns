
//GameTitleInfo - three of three concrete templates


#ifndef TEMPLATE_METHOD_GAME_H_
#define TEMPLATE_METHOD_GAME_H_

#include "TitleInfo.h"

char * GameTitleInfo_getTitleBlurb( TitleInfo_t * this ) ;
TitleInfo_t * GameTitleInfo_new( char * titleName ) ;
void GameTitleInfo_free( TitleInfo_t * );

#endif    
