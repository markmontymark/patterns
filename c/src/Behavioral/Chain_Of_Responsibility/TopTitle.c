
//TopTitle - the Interface to be implemented by all Classes in the Chain

#include "TopTitle.h"

#include "mem.h"
#include "stdlib.h"

TopTitle_t * TopTitle_new( 
	char * ( * getTopTitle)(void *),
	char * ( * getAllCategories)(void *, char *)
)
{
	TopTitle_t * t;
	NEW(t);

	t->getTopTitle = getTopTitle;
	t->getAllCategories = getAllCategories;
	return t;
}

void TopTitle_free( TopTitle_t * t)
{
	FREE(t);
}

