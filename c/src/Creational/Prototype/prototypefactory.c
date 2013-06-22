//PrototypeFactory - a Factory for Prototypes to clone

#include "abstract_spoon.h"
#include "abstract_fork.h"
#include "prototypefactory.h"
#include "stdlib.h"

prototype_factory_t * prototype_factory_new( spoon_t * s, fork_t * f)
{
	prototype_factory_t * pf = malloc( prototype_factory_s );
	pf->prototypeSpoon = s;
	pf->prototypeFork  = f;
	return pf;	
}

spoon_t * prototype_factory_makespoon(prototype_factory_t * pf)
{
	spoon_t * dest = spoon_new();
	spoon_clone( dest, pf->prototypeSpoon );
	return dest;
}

fork_t * prototype_factory_makefork(prototype_factory_t * pf)
{
	fork_t * dest = fork_new();
	fork_clone( dest, pf->prototypeFork);
	return dest;
}

void prototype_factory_free(prototype_factory_t * pf)
{
	free(pf->prototypeSpoon);
	free(pf->prototypeFork);
	free(pf);
}
    
