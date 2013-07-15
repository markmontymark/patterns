
//GameInfo - three of three concrete Visitees

#ifndef VISITOR_GMAEINFO_H_
#define VISITOR_GMAEINFO_H_

typedef struct GameInfo GameInfo_t;

#include "TitleInfo.h"


struct GameInfo 
{
};
#define GameInfo_s sizeof(GameInfo_t)
    
TitleInfo_t * GameInfo_new(char * titleName) ;
void GameInfo_free(TitleInfo_t * ) ;
void GameInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor)  ;
#endif
