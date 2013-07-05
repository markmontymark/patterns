
//TitleLongBlurbVisitor - two of two concrete Visitors

#include "AbstractTitleInfo.h"
#include "TitleBlurbVisitor.h"
#include "TitleLongBlurbVisitor.h"

#include "DvdInfo.h"
#include "BookInfo.h"
#include "GameInfo.h"

#include "stdlib.h"
#include "stdio.h"
#include "string.h"

TitleBlurbVisitor_t * TitleLongBlurbVisitor_new()
{
	TitleBlurbVisitor_t * t = TitleBlurbVisitor_new( TitleLongBlurbVisitor_visit );
	return t;
}

void TitleLongBlurbVisitor_visit( TitleBlurbVisitor_t * this, void * info )
{
	BookInfo_t * bi;
	DvdInfo_t * di;
	GameInfo_t * gi;

	AbstractTitleInfoBase_t * ati = (AbstractTitleInfoBase_t *)info;
	switch( ati->titleInfoType )
	{
		case BookInfoType:
			bi = (BookInfo_t *)info;
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc(20 + strlen(bi->ati->titleName) + strlen(bi->author) + 1);
			sprintf(this->titleBlurb , "LB-Book:  %s, Author: %s" , bi->ati->titleName , bi->author);
			break;

		case DvdInfoType:
			di = (DvdInfo_t *)info;
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc(38 + strlen(di->ati->titleName) + strlen(di->star) + 1 + 1);
			sprintf(this->titleBlurb , "LB-DVD: %s, starring %s, encoding region: %c" , di->ati->titleName , di->star , di->encodingRegion);
			break;

		case GameInfoType:
			gi = (GameInfo_t *)info;
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc( 9 + strlen(gi->ati->titleName) + 1);
			sprintf(this->titleBlurb, "LB-Game: %s" , gi->ati->titleName);
			break;
	}
}


