
//GameInfo - three of three concrete Visitees

#include "AbstractTitleInfo.h"
#include "GameInfo.h"

#include "stdlib.h"

void GameInfo_accept(void * this, TitleBlurbVisitor_t * tbv) 
{
	tbv->visit(tbv,this);
}

GameInfo_t * GameInfo_new(char * titleName)
{
	GameInfo_t * bi = malloc( GameInfo_s );
	bi->ati = AbstractTitleInfo_new( titleName );	
	bi->ati->titleInfoType = GameInfoType;
	bi->titleType = GameInfoType;
	bi->ati->accept = GameInfo_accept;
	return bi;
}    
   
void GameInfo_free(GameInfo_t * d)
{
   if(d == NULL)
      return;
   free(d->ati);
   free(d);
}

