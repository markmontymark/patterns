
//teabag - three of three classes the facade calls

#include "teabag.h"

#include "mem.h"
#include "stdio.h"

teabag_t * teabag_new()
{
	teabag_t * t;
	NEW(t);
   printf("behold the lovely tea bag\n");
	return t;
}

void teabag_free( teabag_t * t)
{
	FREE(t);
}
