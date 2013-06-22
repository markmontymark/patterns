//PrototypeFactory - a Factory for Prototypes to clone

#ifndef C_PATTERNS_PROTOTYPE_PF_H_
#define C_PATTERNS_PROTOTYPE_PF_H_

#include "abstract_spoon.h"
#include "abstract_fork.h"

typedef struct prototype_factory prototype_factory_t;
struct prototype_factory
{
	spoon_t * prototypeSpoon;
	fork_t *  prototypeFork;
};
#define prototype_factory_s sizeof(prototype_factory_t)

prototype_factory_t * prototype_factory_new( spoon_t * , fork_t * );
spoon_t * prototype_factory_makespoon(prototype_factory_t *);
fork_t * prototype_factory_makefork(prototype_factory_t *);
void prototype_factory_free( prototype_factory_t *);


#endif 
