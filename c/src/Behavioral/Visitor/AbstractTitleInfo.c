

//AbstractTitleInfo - the abstract Visitee
#include "AbstractTitleInfo.h"
#include "stdlib.h"

AbstractTitleInfo_t * AbstractTitleInfo_new(char * titleName)
{
	AbstractTitleInfo_t * ati = malloc(AbstractTitleInfo_s);
	ati->titleInfoType = AbstractInfoType;
	ati->titleName = titleName;	
	return ati;
}

