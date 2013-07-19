
//abstractfork - One of Two Prototypes

#include "abstract_fork.h"
#include "string.h"
#include "mem.h"

fork_t * fork_new()
{
	fork_t * s;
	NEW(s);
	return s;
}

void fork_set_name(fork_t * fork, char * forkName)
{
	fork->name  = forkName;
}

char * fork_get_name(fork_t * fork)
{
	return fork->name;
}

void fork_clone(fork_t * dest, fork_t * src)
{
	memcpy(dest,src,fork_s);
}

void fork_free(fork_t * f)
{
	FREE(f);
}
