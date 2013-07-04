
//GameInfo - three of three concrete Visitees

#include "AbstractTitleInfo.h"
#include "GameInfo.h"

#include "stdlib.h"


GameInfo_t * GameInfo_new(char * titleName)
{
	GameInfo_t * bi = malloc( GameInfo_s );
	bi->ati = AbstractTitleInfo_new( titleName );	
	bi->ati->titleInfoType = GameInfoType;
	bi->ati->accept = GameInfo_accept;
	return bi;
}    
   
void GameInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor) 
{
	titleBlurbVisitor->visit(titleBlurbVisitor,this);
}
