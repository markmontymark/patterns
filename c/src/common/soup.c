//Soup.java - A helper class

#include "soup.h"
#include "arraylist_string.h"
#include "stdlib.h"

soup_t * soup_new()
{
   soup_t * s = malloc (soup_s);
	s->ingredients = arraylist_string_new();
   return s;
}

void soup_free(soup_t * soup)
{
   if(soup == NULL)
      return;
	arraylist_string_free( soup->ingredients );
   free(soup);
}

char * soup_get_name (soup_t * soup)
{
	return soup->name;
}

char * soup_to_string(soup_t * soup)
{
	int i;
	arraylist_string_t * buffer = arraylist_string_new();
	arraylist_string_add(buffer, soup_get_name(soup));
	arraylist_string_add(buffer, "Ingredients: ");
	int len = arraylist_string_size( soup->ingredients );
	for( i = 0; i < len; i++ )
		arraylist_string_add(buffer, arraylist_string_get( soup->ingredients, i ) );
	return arraylist_string_to_string( buffer );
}
