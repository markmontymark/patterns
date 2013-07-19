

//DvdInfo - one of three concrete Visitees

#include "TitleInfo.h"
#include "DvdInfo.h"

#include "stdlib.h"
#include "mem.h"
#include "assert.h"

void DvdInfo_accept( void *  this, TitleBlurbVisitor_t * tbv) 
{
	tbv->visit(tbv,this);
}

    
TitleInfo_t * DvdInfo_new(char * titleName, char * star, char encodingRegion) 
{
	TitleInfo_t * bi = TitleInfo_new( DvdInfo_accept, titleName );
	bi->type = DvdInfoType;
	NEW(bi->dvd);

	bi->dvd->star = star;
	bi->dvd->encodingRegion = encodingRegion;
	return bi;
}    

void DvdInfo_free(TitleInfo_t * d)
{
	assert(d );
	FREE( d->dvd );
	FREE(d);	
}

   
