
//DvdNameReplaceSpacesStrategy - three of three concrete strategies

#include "DvdNameStrategy.h"

#include "../../common/common_str.h"


char * DvdNameReplaceSpacesStrategy_formatDvdName(char * src,char charIn) 
{
	return common_str_replace( src, ' ',charIn);
}


DvdNameStrategy_t * DvdNameReplaceSpacesStrategy_new()
{
	DvdNameStrategy_t * s = DvdNameStrategy_new();
	s->formatDvdName = DvdNameReplaceSpacesStrategy_formatDvdName;
	return s;
}
