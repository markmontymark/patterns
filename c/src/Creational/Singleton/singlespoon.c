
//SingleSpoon- a Singleton

#include "../../common/soup.h"
#include "singlespoon.h"

#include "stdlib.h"


static int theSpoonIsAvailable = 1;
static spoon_t * theSpoon;
static soup_t * soupLastUsedWith;


static void spoon_new()
{
	theSpoon = malloc(spoon_s);
}

spoon_t * spoon_get_the_spoon()
{
	if(theSpoonIsAvailable) 
	{
		if(theSpoon == NULL) 
			spoon_new();
		if(theSpoon != NULL)
			theSpoonIsAvailable = 0;
		return theSpoon;
	} 
	return NULL;
}


char * spoon_to_string(spoon_t * spoon)
{
	if( spoon == NULL )
		return "";
	return "Behold the glorious single spoon!";
}

void spoon_return_the_spoon(spoon_t * spoon)
{
	if( spoon == NULL )
		return;
	spoon_clean_spoon(spoon);
	theSpoonIsAvailable = 1;
}

soup_t * spoon_get_soupLastUsedWith(spoon_t * spoon)
{
	if( spoon == NULL )
		return NULL;
	return soupLastUsedWith;
}

void spoon_set_soupLastUsedWith(spoon_t * spoon, soup_t * soup)
{
	if( spoon == NULL )
		return;
	 soupLastUsedWith = soup;
}

void spoon_clean_spoon(spoon_t * spoon)
{
	if( spoon == NULL )
		return;
	 spoon_set_soupLastUsedWith(spoon,NULL);
}   

void spoon_free()
{
	if( theSpoon != NULL )
		free( theSpoon );
}

