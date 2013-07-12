
//BookInfo - one of three concrete Visitees

#include "TitleInfo.h"
#include "BookInfo.h"

#include "stdlib.h"

 
void BookInfo_accept(void * this, TitleBlurbVisitor_t * tbv)
{
	tbv->visit(tbv, this);
}

TitleInfo_t * BookInfo_new(char * titleName, char * author) 
{
	TitleInfo_t * bi = TitleInfo_new( BookInfo_accept,titleName );
	bi->type = BookInfoType;
	bi->book = malloc( BookInfo_s );
	bi->book->author = author;
	return bi;
}    

void BookInfo_free(TitleInfo_t * d)
{
   if(d == NULL)
      return;
	free( d->book );
   free(d);
}

   
