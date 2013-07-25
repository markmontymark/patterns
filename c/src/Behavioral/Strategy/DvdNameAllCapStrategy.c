
//DvdNameAllCapStrategy - one of three concrete strategies

#include "DvdNameStrategy.h"

#include "ctype.h"
#include "string.h"


char * DvdNameAllCapStrategy_formatDvdName(char * src, char charIn) 
{
	char * dest = strdup(src);//malloc(strlen(src)+1);
	char * tmp = dest;
	while( *tmp) // = *src )
	{
		*tmp = toupper(*tmp);
		tmp++;
		//src++;
	}
	return dest;
}


DvdNameStrategy_t * DvdNameAllCapStrategy_new()
{
	DvdNameStrategy_t * s = DvdNameStrategy_new();
	s->formatDvdName = DvdNameAllCapStrategy_formatDvdName;
	return s;
}
