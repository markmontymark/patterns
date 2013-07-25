
// testing the strategy

#include "../../common/arraylist_string.h"

#include "DvdNameContext.h"
#include "DvdNameStrategy.h"

#include "stdlib.h"
#include "stdio.h"


int main( int argc, char ** argv )
{
	DvdNameContext_t * allCapContext = DvdNameContext_new('C');
	DvdNameContext_t * theEndContext = DvdNameContext_new('E');
	DvdNameContext_t * spacesContext = DvdNameContext_new('S');

	arraylist_string_t * dvdNames = arraylist_string_new();
	arraylist_string_add(dvdNames, "Jay and Silent Bob Strike Back");
	arraylist_string_add(dvdNames, "The Fast and the Furious");
	arraylist_string_add(dvdNames, "The Others");

	char replaceChar = '*';

	printf("Testing formatting with all caps\n");
	arraylist_string_t * dvdCapNames = DvdNameContext_formatDvdNames( allCapContext,dvdNames,'\0');
	char * str = arraylist_string_to_string(dvdCapNames);	
	printf("%s\n",str);
	free(str);
	arraylist_string_free_items(dvdCapNames);
	arraylist_string_free(dvdCapNames);

	printf( "Testing formatting with beginning the at end\n");
	arraylist_string_t * dvdEndNames = DvdNameContext_formatDvdNames( theEndContext, dvdNames,'\0');
	str = arraylist_string_to_string(dvdEndNames);	
	printf("%s\n",str);
	free(str);
	arraylist_string_free_items(dvdEndNames);
	arraylist_string_free(dvdEndNames);

	printf(" Testing formatting with all spaces replaced with %c\n", replaceChar);
	arraylist_string_t *  dvdSpcNames = DvdNameContext_formatDvdNames( spacesContext, dvdNames, replaceChar);
	str = arraylist_string_to_string(dvdSpcNames);	
	printf("%s\n",str);
	free(str);
	arraylist_string_free_items(dvdSpcNames);
	arraylist_string_free(dvdSpcNames);

	DvdNameContext_free( allCapContext );
	DvdNameContext_free( theEndContext );
	DvdNameContext_free( spacesContext );
	arraylist_string_free( dvdNames);

	return 0;
}
