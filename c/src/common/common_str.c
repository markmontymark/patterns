

#include "common_str.h"

#include "string.h"


char * common_str_replace( char * str, char  from, char to )
{
	int bufSize = strlen(str) + 1;
	char * retval = malloc( strlen(str) + 1 );
	strncpy(retval, str, bufSize);
	*(retval+bufSize)= '\0';
	char * tmp = retval;
	while( *tmp )
	{
		if( *tmp == from )
			*tmp = to;
		tmp++;
	}
	return retval;
}

