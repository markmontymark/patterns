
//teabag - three of three classes the facade calls

#include "teabag.h"

#include "stdlib.h"
#include "stdio.h"

teabag_t * teabag_new()
{
	teabag_t * t = malloc(teabag_s);
   printf("behold the lovely tea bag\n");
	return t;
}

void teabag_free( teabag_t * t)
{
	if(t == NULL )
		return;
	free(t);
}
