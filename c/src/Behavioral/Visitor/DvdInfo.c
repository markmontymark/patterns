

//DvdInfo - one of three concrete Visitees

#include "TitleInfo.h"
#include "DvdInfo.h"

#include "stdlib.h"

void DvdInfo_accept( void *  this, TitleBlurbVisitor_t * tbv) 
{
	tbv->visit(tbv,this);
}

    
TitleInfo_t * DvdInfo_new(char * titleName, char * star, char encodingRegion) 
{
	TitleInfo_t * bi = TitleInfo_new( DvdInfo_accept, titleName );
	bi->type = DvdInfoType;
	bi->dvd = malloc( DvdInfo_s );
	bi->dvd->star = star;
	bi->dvd->encodingRegion = encodingRegion;
	return bi;
}    

void DvdInfo_free(TitleInfo_t * d)
{
	if(d == NULL)
		return;
	free( d->dvd );
	free(d);	
}

   
