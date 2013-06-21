//Soup.java - A helper class

#include "soup.h"
#include "arraylist_str.h"

char * soup_get_name (soup_t * soup);
{
	return soup->name;
}

char * soup_to_string(soup_t * soup)
{
	arraylist_string_t * buffer = arraylist_string_new();
	arraylist_string_add(buffer, soup_get_name(soup));
	arraylist_string_add(buffer, "Ingredients: ");
	int len = arraylist_string_size( soup->ingredients );
	for( int i = 0; i < len; i++ )
		arraylist_string_add(buffer, arraylist_string_get( soup->ingredients, i ) );
	return arraylist_string_to_string( buffer );
}
