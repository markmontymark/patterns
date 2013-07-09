

#include "common_str.h"

#include "string.h"

#include "stdio.h"


char * common_str_replace( char * str, char  from, char to )
{
	int bufSize = strlen(str) + 1;
	char * retval = malloc( strlen(str) + 1 );
	strncpy(retval, str, bufSize);
	*(retval+bufSize-1)= '\0';
	char * tmp = retval;
	while( *tmp )
	{
		if( *tmp == from )
			*tmp = to;
		tmp++;
	}
	return retval;
}


int    common_str_startsWith( char * str, char  * test ) 
{
	while( *str == *test)
	{
		str++;
		test++;
		if( *str == '\0' && *test != '\0')
			return 0;
		if( *test == '\0')
			return 1;
	}
	return *str == *test;
}

int    common_str_endsWith( char * str, char  * test ) 
{
	char *tmp_str = *str;
	size_t strl = strlen(str);
	tmp_str = tmp_str + (strl - 1);

	char *tmp_test = *test;
	size_t testl = strlen(test);
	tmp_test = tmp_test + (testl - 1);
	printf("tmp_str %s\n", tmp_str );
	while( *tmp_str == *tmp_test)
	{
		tmp_str--;
		tmp_test--;
		testl--;
		strl--;
		if(testl < 1 || strl < 1)
			return 1;
	}
	return *tmp_str == *tmp_test;
}

