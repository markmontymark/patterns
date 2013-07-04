
//BookInfo - one of three concrete Visitees

#include "AbstractTitleInfo.h"
#include "BookInfo.h"

#include "stdlib.h"

 
BookInfo_t * BookInfo_new(char * titleName, char * author) 
{
	BookInfo_t * bi = malloc( BookInfo_s );
	bi->ati = AbstractTitleInfo_new( titleName );	
   bi->ati->titleInfoType = BookInfoType;
	bi->author = author;
	bi->ati->accept = BookInfo_accept;
	return bi;
}    
   
void BookInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor) 
{
	titleBlurbVisitor->visit(titleBlurbVisitor, this);
}
