
//TeaCup - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

#include "teacup.h"
#include "teabag.h"

#include "mem.h"


teacup_t * teacup_new() 
{
	teacup_t * t;
	NEW(t);
	return t;
}

void teacup_free(teacup_t * t) 
{
	FREE(t);
}

void teacup_steep_teabag( teacup_t * c, teabag_t * b) 
{
	teabag_steepTeaInCup(b);
}
