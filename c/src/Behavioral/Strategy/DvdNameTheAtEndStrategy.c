
//DvdNameTheAtEndStrategy.java - two of three concrete strategies

#include "DvdNameStrategy.h"
#include "../../common/common_str.h"

#include "stdlib.h"
#include "string.h"


char * DvdNameTheAtEndStrategy_formatDvdName(char *src, char charIn) 
{
	int src_len = strlen(src) + 1; //1 for \0 and 1 for the comma we add
	int dest_len = src_len + 1; //1 for \0 and 1 for the comma we add

	if (common_str_startsWith( src, "The ") )
	{
		char * dest = malloc( dest_len );
		strncpy(dest, src + 4, (src_len - 1 - 4) );
		strncpy(dest + (src_len - 1 - 4), ", The", 5);
		*(dest + dest_len - 1) = '\0';
		return dest;
	}

	else if (common_str_startsWith( src, "THE ") )
	{
		char * dest = malloc( dest_len );
		strncpy(dest, src + 4, (src_len - 1 - 4) );
		strncpy(dest + (src_len - 1 - 4), ", THE", 5);
		*(dest + dest_len - 1) = '\0';
		return dest;
	}

	else if (common_str_startsWith( src, "the ") )
	{
		char * dest = malloc( dest_len );
		strncpy(dest, src + 4, (src_len - 1 - 4) );
		strncpy(dest + (src_len - 1 - 4), ", the", 5);
		*(dest + dest_len - 1) = '\0';
		return dest;
	}
	else
	{
		return src;
	}
}


DvdNameStrategy_t * DvdNameTheAtEndStrategy_new()
{
	DvdNameStrategy_t * s = DvdNameStrategy_new();
	s->formatDvdName = DvdNameTheAtEndStrategy_formatDvdName;
	return s;
}
