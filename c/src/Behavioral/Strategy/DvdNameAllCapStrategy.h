


//DvdNameAllCapStrategy - one of three concrete strategies


#ifndef STRATEGY_ALLCAPSTRAT_H_
#define STRATEGY_ALLCAPSTRAT_H_

#include "DvdNameStrategy.h"

char * DvdNameAllCapStrategy_formatDvdName(char * src, char charIn) ;
DvdNameStrategy_t * DvdNameAllCapStrategy_new();

#endif
