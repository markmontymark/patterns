
// testing the Prototype

#include "soupspoon.h"
#include "saladspoon.h"
#include "saladfork.h"
#include "prototypefactory.h"

int main( int argc, char ** argv )
{
	printf( "Creating a Prototype Factory with a SoupSpoon and a SaladFork\n");

	prototype_factory_t * pf = prototype_factory_new(
		soupspoon_new(), 
		saladfork_new());

	spoon_t * spoon = prototype_factory_makespoon(pf);
	fork_t  * forky = prototype_factory_makefork(pf);

	printf("Getting the Spoon and Fork name:\n");
	printf("Spoon: %s, Fork: %s\n" , spoon->name, forky->name);

	prototype_factory_free( pf ); 
	spoon_free( spoon );
	fork_free( forky );


	printf("Creating a Prototype Factory with a SaladSpoon and a SaladFork\n");
	pf = prototype_factory_new(saladspoon_new(), saladfork_new() );
	spoon = prototype_factory_makespoon(pf);
	forky = prototype_factory_makefork(pf);
	printf("Getting the Spoon and Fork name:\n");
	printf("Spoon: %s, Fork: %s\n" , spoon->name, forky->name);

	prototype_factory_free( pf ); 
	spoon_free( spoon );
	fork_free( forky );
}      
