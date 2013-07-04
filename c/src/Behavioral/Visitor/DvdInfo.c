

//DvdInfo - one of three concrete Visitees

#include "AbstractTitleInfo.h"
#include "DvdInfo.h"

#include "stdlib.h"

void DvdInfo_accept( DvdInfo_t * this, TitleBlurbVisitor_t * tbv) 
{
	tbv->visit(tbv,this);
}

    
DvdInfo_t * DvdInfo_new(char * titleName, char * star, char encodingRegion) 
{
	DvdInfo_t * bi = malloc( DvdInfo_s );
	bi->ati = AbstractTitleInfo_new( titleName );	
   bi->ati->titleInfoType = DvdInfoType;
	bi->star = star;
	bi->encodingRegion = encodingRegion;
	bi->ati->accept = DvdInfo_accept;
	return bi;
}    
   
