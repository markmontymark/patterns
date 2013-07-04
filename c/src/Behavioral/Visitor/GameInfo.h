
//GameInfo - three of three concrete Visitees

#ifndef VISITOR_GMAEINFO_H_
#define VISITOR_GMAEINFO_H_

typedef struct GameInfo GameInfo_t;
struct GameInfo 
{
	int titleType;
	AbstractTitleInfo_t * ati;
};
#define GameInfo_s sizeof(GameInfo_t)
    
GameInfo_t * GameInfo_new(char * titleName) ;
void GameInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor)  ;
#endif
