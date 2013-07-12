

//TitleInfo - the abstract Visitee

#ifndef VISITOR_ABSTRACTTITLEINFO_H_
#define VISITOR_ABSTRACTTITLEINFO_H_

typedef struct TitleInfo TitleInfo_t;

#include "TitleBlurbVisitor.h"
#include "BookInfo.h"
#include "DvdInfo.h"
#include "GameInfo.h"

enum TitleInfoType { BookInfoType, GameInfoType, DvdInfoType };
struct TitleInfo
{
	enum TitleInfoType type;
	union
	{
		BookInfo_t * book;
		GameInfo_t * game;
		DvdInfo_t * dvd;
	};
   void ( * accept)( void * info, TitleBlurbVisitor_t * );
	char * titleName;
};
#define TitleInfo_s sizeof(TitleInfo_t)

TitleInfo_t * TitleInfo_new( 
   void ( * accept)( void * info, TitleBlurbVisitor_t * ),
	char * titleName 
);



#endif

