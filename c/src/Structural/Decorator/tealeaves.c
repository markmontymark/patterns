

//tealeaves - the decoratee

#include "tea.h"
#include "tealeaves.h"

#include "stdio.h"
#include "stdlib.h"

tea_t * tealeaves_new()
{
	tea_t * t = tea_new();
	t->type = TeaLeavesType;
	t->teaIsSteeped = 0;
	return t;
}

void tealeaves_steep_tea( tea_t * t )
{
	t->teaIsSteeped = 1;
   printf("tea leaves are steeping\n");
}
