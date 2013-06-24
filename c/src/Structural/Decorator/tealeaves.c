

//tealeaves - the decoratee

#include "tealeaves.h"

#include "stdio.h"
#include "stdlib.h"

tealeaves_t * tealeaves_new()
{
	tealeaves_t * t = malloc(tealeaves_s);
	t->teaIsSteeped = 0;
	t->steep_tea = tealeaves_steep_tea;
	return t;
}

void tealeaves_steep_tea( tealeaves_t * t )
{
	t->teaIsSteeped = 1;
   printf("tea leaves are steeping\n");
}
