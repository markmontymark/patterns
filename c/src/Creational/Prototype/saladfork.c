
//SoupFork - One of Two Concrete Prototypes extending the AbstractFork Prototype

#include "abstract_fork.h"
#include "saladfork.h"

fork_t * saladfork_new()
{
	fork_t * s = fork_new();
	s->name = "Salad Fork";
	return s;
}

