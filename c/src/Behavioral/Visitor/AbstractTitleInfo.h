

//AbstractTitleInfo - the abstract Visitee

#ifndef VISITOR_ABSTRACTTITLEINFO_H_
#define VISITOR_ABSTRACTTITLEINFO_H_

#define AbstractInfoType 0
#define GameInfoType 1
#define BookInfoType 2
#define DvdInfoType 3

typedef struct AbstractTitleInfo AbstractTitleInfo_t;
typedef struct AbstractTitleInfoBase AbstractTitleInfoBase_t;

#include "TitleBlurbVisitor.h"

struct AbstractTitleInfo 
{  
	int titleInfoType;
   void ( * accept)( void * info, TitleBlurbVisitor_t * );
   char * titleName;    
};
#define AbstractTitleInfo_s sizeof(AbstractTitleInfo_t)

struct AbstractTitleInfoBase
{  
	int titleInfoType;
	AbstractTitleInfo_t * ati;
};

AbstractTitleInfo_t * AbstractTitleInfo_new( char * titleName );

#endif

