
#include "tea.h"
#include "mem.h"

tea_t * tea_new()
{
	tea_t * t;
	NEW(t);
	return t;
}

