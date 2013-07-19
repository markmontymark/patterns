
//PotOfTeaP.java - the Pot Of Tea

#include "pot_of_tea.h"
#include "mem.h"

pot_of_tea_t * pot_of_tea_new()
{
	pot_of_tea_t * pot;
	NEW(pot);
	return pot;
}
void pot_of_tea_free(pot_of_tea_t * pot)
{
	FREE(pot);
}

char * pot_of_tea_pour_tea( pot_of_tea_t * pot )
{
	return "Pouring tea";
}
