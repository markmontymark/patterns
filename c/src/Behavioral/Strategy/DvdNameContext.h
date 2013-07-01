
//DvdNameContext - the context

#ifndef STRATEGY_DVDNAMECONTEXT_H_
#define STRATEGY_DVDNAMECONTEXT_H_

#include "../../common/arraylist_string.h"


typedef struct DvdNameContext DvdNameContext_t;

#include "DvdNameStrategy.h"

struct DvdNameContext
{
   DvdNameStrategy_t * dvdNameStrategy; 
};
#define DvdNameContext_s sizeof(DvdNameContext_t)

DvdNameContext_t * DvdNameContext_new(char strategyTypeIn) ;
void DvdNameContext_free(DvdNameContext_t *) ;
   
arraylist_string_t * DvdNameContext_formatDvdNames(DvdNameContext_t * ctx, arraylist_string_t * namesIn, char replacementIn) ;


#endif
