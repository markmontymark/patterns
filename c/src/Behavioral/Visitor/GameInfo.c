
//GameInfo - three of three concrete Visitees

#include "TitleInfo.h"
#include "GameInfo.h"

#include "stdlib.h"

void GameInfo_accept(void * this, TitleBlurbVisitor_t * tbv) 
{
	tbv->visit(tbv,this);
}

TitleInfo_t * GameInfo_new(char * titleName)
{
	TitleInfo_t * bi = TitleInfo_new( GameInfo_accept, titleName );
	bi->type = GameInfoType;
	return bi;
}    
   
void GameInfo_free(TitleInfo_t * d)
{
   if(d == NULL)
      return;
   free(d);
}

