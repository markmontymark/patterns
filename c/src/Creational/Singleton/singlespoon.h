//SingleSpoon- a Singleton

#ifndef C_PATTERNS_SINGLETON
#define C_PATTERNS_SINGLETON

#include "../../common/soup.h"

typedef struct spoon spoon_t;
struct spoon
{  
	int theSpoonIsAvailable;
   soup_t * soupLastUsedWith;
};
#define spoon_s sizeof(spoon_t)


spoon_t * spoon_get_the_spoon();
char * spoon_to_string(spoon_t *);
void spoon_return_the_spoon(spoon_t *);
soup_t * spoon_get_soupLastUsedWith(spoon_t *);
void 		spoon_set_soupLastUsedWith(spoon_t *, soup_t *);
void 		spoon_clean_spoon(spoon_t *);

#endif
