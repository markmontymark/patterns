//TitleShortBlurbVisitor - two of two concrete Visitors

#include "AbstractTitleInfo.h"
#include "DvdInfo.h"
#include "BookInfo.h"
#include "GameInfo.h"
#include "TitleBlurbVisitor.h"
#include "TitleShortBlurbVisitor.h"

#include  "stdio.h"
#include  "stdlib.h"
#include  "string.h"


void TitleShortBlurbVisitor_visit( TitleBlurbVisitor_t * this, void * info )
{

   BookInfo_t * bi;
   DvdInfo_t * di;
   GameInfo_t * gi;

	switch( ((AbstractTitleInfo_t *)info)->titleInfoType )
	{
		case BookInfoType :
			bi = (BookInfo_t *)info;
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(9 + strlen(bi->ati->titleName) + 1);
			sprintf(this->titleBlurb,"SB-Book: %s" , bi->ati->titleName);
			break;

		case DvdInfoType:
			di = (DvdInfo_t *)info;
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(8 + strlen(di->ati->titleName) + 1);
			sprintf(this->titleBlurb,"SB-DVD: %s" , di->ati->titleName);
			break;

		case GameInfoType:
			gi = (GameInfo_t *)info;
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(9 + strlen(gi->ati->titleName) + 1);
			sprintf(this->titleBlurb,"SB-Game: %s" , gi->ati->titleName );
			break;
	
		default:
			printf("titleInfoType %d\n",((AbstractTitleInfo_t *)info)->titleInfoType );
	}
}


TitleBlurbVisitor_t * TitleShortBlurbVisitor_new()
{
	TitleBlurbVisitor_t * t = TitleBlurbVisitor_new( TitleShortBlurbVisitor_visit );
	return t;
}

