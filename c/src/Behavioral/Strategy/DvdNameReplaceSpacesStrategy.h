
//DvdNameReplaceSpacesStrategy - three of three concrete strategies

#ifndef STRATEGY_REPLACE_STRAT_H_
#define STRATEGY_REPLACE_STRAT_H_

#include "DvdNameStrategy.h"

char * DvdNameReplaceSpacesStrategy_formatDvdName(char * src,char charIn) ;
DvdNameStrategy_t * DvdNameReplaceSpacesStrategy_new() ;

#endif
