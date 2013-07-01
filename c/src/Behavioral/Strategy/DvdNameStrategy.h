//DvdNameStrategy - the abstract strategy

#ifndef STRATEGY_DVDNAMESTRATEGY_H_
#define STRATEGY_DVDNAMESTRATEGY_H_

#include "../../common/arraylist_string.h"


typedef struct DvdNameStrategy DvdNameStrategy_t;

#include "DvdNameContext.h"

struct DvdNameStrategy 
{
  char * ( * formatDvdName)(char * dvdName, char charIn);
};
#define DvdNameStrategy_s sizeof(DvdNameStrategy_t)

DvdNameStrategy_t * DvdNameStrategy_new() ;
void DvdNameStrategy_free( DvdNameStrategy_t * ) ;

arraylist_string_t * DvdNameStrategy_formatDvdNames( DvdNameContext_t *, DvdNameStrategy_t *, char ) ;


#endif
