//TitleShortBlurbVisitor - two of two concrete Visitors

#include "TitleInfo.h"
#include "DvdInfo.h"
#include "BookInfo.h"
#include "GameInfo.h"
#include "TitleBlurbVisitor.h"
#include "TitleShortBlurbVisitor.h"

#include  "stdio.h"
#include  "stdlib.h"
#include  "string.h"


void TitleShortBlurbVisitor_visit( TitleBlurbVisitor_t * this, TitleInfo_t * info )
{

	switch( info->type )
	{
		case BookInfoType :
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(9 + strlen(info->titleName) + 1);
			sprintf(this->titleBlurb,"SB-Book: %s" , info->titleName);
			break;

		case DvdInfoType:
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(8 + strlen(info->titleName) + 1);
			sprintf(this->titleBlurb,"SB-DVD: %s" , info->titleName);
			break;

		case GameInfoType:
			if( this->titleBlurb != NULL )
				free( this->titleBlurb);
			this->titleBlurb = malloc(9 + strlen(info->titleName) + 1);
			sprintf(this->titleBlurb,"SB-Game: %s" , info->titleName );
			break;
	
		default:
			printf("titleInfoType %d\n",info->type );
	}
}


TitleBlurbVisitor_t * TitleShortBlurbVisitor_new()
{
	TitleBlurbVisitor_t * t = TitleBlurbVisitor_new( TitleShortBlurbVisitor_visit );
	return t;
}

