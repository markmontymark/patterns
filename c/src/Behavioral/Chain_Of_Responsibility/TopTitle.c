
//TopTitle - the Interface to be implemented by all Classes in the Chain

#include "TopTitle.h"

#include "stdlib.h"

TopTitle_t * TopTitle_new( 
	char * ( * getTopTitle)(void *),
	char * ( * getAllCategories)(void *, char *)
)
{
	TopTitle_t * t = malloc(TopTitle_s);
	t->getTopTitle = getTopTitle;
	t->getAllCategories = getAllCategories;
	return t;
}

void TopTitle_free( TopTitle_t * t)
{
	if( t == NULL )
		return;
	free(t);
}

