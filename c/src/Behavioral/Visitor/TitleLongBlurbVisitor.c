
//TitleLongBlurbVisitor - two of two concrete Visitors

#include "TitleInfo.h"
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

void TitleLongBlurbVisitor_visit( TitleBlurbVisitor_t * this, TitleInfo_t * info )
{
	switch( info->type )
	{
		case BookInfoType:
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc(20 + strlen(info->titleName) + strlen(info->book->author) + 1);
			sprintf(this->titleBlurb , "LB-Book:  %s, Author: %s" , info->titleName , info->book->author);
			break;

		case DvdInfoType:
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc(38 + strlen(info->titleName) + strlen(info->dvd->star) + 1 + 1);
			sprintf(this->titleBlurb , "LB-DVD: %s, starring %s, encoding region: %c" , info->titleName , info->dvd->star , info->dvd->encodingRegion);
			break;

		case GameInfoType:
			if(this->titleBlurb != NULL)
				free(this->titleBlurb);
         this->titleBlurb = malloc( 9 + strlen(info->titleName) + 1);
			sprintf(this->titleBlurb, "LB-Game: %s" , info->titleName);
			break;
	}
}


