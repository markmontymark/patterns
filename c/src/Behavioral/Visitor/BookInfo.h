
//BookInfo - one of three concrete Visitees

#ifndef VISITOR_BOOKINFO_H_
#define VISITOR_BOOKINFO_H_

typedef struct BookInfo BookInfo_t;
struct BookInfo 
{
	int titleType;
	AbstractTitleInfo_t * ati;
	char * author;
};
#define BookInfo_s sizeof(BookInfo_t)
    
BookInfo_t * BookInfo_new(char * titleName, char * author) ;
void BookInfo_free(BookInfo_t *) ;
void BookInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor) ;

#endif
