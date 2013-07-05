

//DvdInfo - one of three concrete Visitees

#ifndef VISITOR_DVDINFO_H_
#define VISITOR_DVDINFO_H_

#include "AbstractTitleInfo.h"
#include "TitleBlurbVisitor.h"

typedef struct DvdInfo DvdInfo_t;
struct DvdInfo 
{
	int titleType;
	AbstractTitleInfo_t * ati;
	char encodingRegion;
	char * star;
};
#define DvdInfo_s sizeof(DvdInfo_t)
    
DvdInfo_t * DvdInfo_new(char * titleName, char * star, char encodingRegion) ;
void DvdInfo_free(DvdInfo_t *);
void DvdInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor) ;

#endif
