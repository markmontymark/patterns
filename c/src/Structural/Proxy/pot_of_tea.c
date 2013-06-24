
//PotOfTeaP.java - the Pot Of Tea

#include "stdlib.h"

typedef struct pot_of_tea pot_of_tea_t;
struct pot_of_tea
{
	pot_of_tea_t * pot;
};
#define pot_of_tea_s sizeof(pot_of_tea_t)

pot_of_tea_t * pot_of_tea_new()
{
	pot_of_tea_t * pot = malloc(pot_of_tea_s);
	return pot;
}
void pot_of_tea_free(pot_of_tea_t * pot)
{
	if(pot == NULL)
		return;
	free(pot);
}

char * pot_of_tea_pour_tea( pot_of_tea_t * pot )
{
	return "Pouring tea";
}
