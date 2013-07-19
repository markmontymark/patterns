

//AbstractTitleInfo - the abstract Visitee
#include "TitleInfo.h"
#include "stdlib.h"

#include "mem.h"

TitleInfo_t * TitleInfo_new(
   void ( * accept)( void * info, TitleBlurbVisitor_t * ),
	char * titleName
)
{
	TitleInfo_t * ti;
	NEW(ti);

	ti->titleName = titleName;	
   ti->accept = accept;
	return ti;
}

