
//AbstractSpoon- One of Two Prototypes

#include "string.h"

#ifndef C_PATTERNS_PROTOTYPE_SPOON_H_
#define C_PATTERNS_PROTOTYPE_SPOON_H_

typedef struct spoon spoon_t;
struct spoon
{
	char * name;
};
#define spoon_s sizeof(spoon_t)


spoon_t * spoon_new();
void spoon_set_name(spoon_t * spoon, char * spoonName);
char * spoon_get_name(spoon_t * spoon);
void spoon_clone(spoon_t * dest, spoon_t * src);
void spoon_free( spoon_t * s);

#endif
