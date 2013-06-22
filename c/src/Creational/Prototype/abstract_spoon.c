
//AbstractSpoon- One of Two Prototypes

#include "abstract_spoon.h"

#include "string.h"

spoon_t * spoon_new()
{
	spoon_t * s = malloc (spoon_s);
	return s;
}

void spoon_set_name(spoon_t * spoon, char * spoonName)
{
	spoon->name  = spoonName;
}

char * spoon_get_name(spoon_t * spoon)
{
	return spoon->name;
}

void spoon_clone(spoon_t * dest, spoon_t * src)
{
	memcpy(dest,src,spoon_s);
}

void spoon_free( spoon_t * s)
{
	free(s);
}
