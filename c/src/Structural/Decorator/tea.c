
#include "tea.h"
#include "stdlib.h"

tea_t * tea_new()
{
	tea_t * t = malloc(tea_s);
	return t;
}

