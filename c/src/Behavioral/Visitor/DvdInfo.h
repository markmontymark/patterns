

//DvdInfo - one of three concrete Visitees

#ifndef VISITOR_DVDINFO_H_
#define VISITOR_DVDINFO_H_

typedef struct DvdInfo DvdInfo_t;

#include "TitleInfo.h"
#include "TitleBlurbVisitor.h"

struct DvdInfo 
{
	char encodingRegion;
	char * star;
};
#define DvdInfo_s sizeof(DvdInfo_t)
    
TitleInfo_t * DvdInfo_new(char * titleName, char * star, char encodingRegion) ;
void DvdInfo_free(TitleInfo_t *);
void DvdInfo_accept(void * this, TitleBlurbVisitor_t * titleBlurbVisitor) ;

#endif
