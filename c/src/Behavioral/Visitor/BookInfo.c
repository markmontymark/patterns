
//BookInfo - one of three concrete Visitees

#include "AbstractTitleInfo.h"
#include "BookInfo.h"

#include "stdlib.h"

 
void BookInfo_accept(void * this, TitleBlurbVisitor_t * tbv)
{
	tbv->visit(tbv, this);
}

BookInfo_t * BookInfo_new(char * titleName, char * author) 
{
	BookInfo_t * bi = malloc( BookInfo_s );
	bi->ati = AbstractTitleInfo_new( titleName );	
   bi->ati->titleInfoType = BookInfoType;
   bi->titleType = BookInfoType;
	bi->author = author;
	bi->ati->accept = BookInfo_accept;
	return bi;
}    

void BookInfo_free(BookInfo_t * d)
{
   if(d == NULL)
      return;
	free(d->ati);
   free(d);
}

   
