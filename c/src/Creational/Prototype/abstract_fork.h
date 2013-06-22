
//abstractfork - One of Two Prototypes

#ifndef C_PATTERNS_PROTOTYPE_FORK_H_
#define C_PATTERNS_PROTOTYPE_FORK_H_

#include "string.h"

typedef struct forky fork_t;
struct forky
{
	char * name;
};
#define fork_s sizeof(fork_t)

fork_t * fork_new();
void fork_set_name(fork_t * fork, char * forkName);
char * fork_get_name(fork_t * fork);
void fork_clone(fork_t * dest, fork_t * src);
void fork_free(fork_t * f);

#endif
