#include "soup.h"
#include "stdlib.h"

soup_t * soup_new()
{
	soup_t * s = malloc (soup_s);
	return s;
}

void soup_free(soup_t * soup)
{
	if(soup == NULL)
		return;
	free(soup);
}

