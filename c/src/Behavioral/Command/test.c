
// testing the Command

#include "DvdName.h"
#include "Command.h"
#include "DvdCommandNameStarsOn.h"
#include "DvdCommandNameStarsOff.h"

#include "stdlib.h"
#include "stdio.h"

int main( int argc, char ** argv )
{
	DvdName_t * jayAndBob = DvdName_new("Jay and Silent Bob Strike Back");
	DvdName_t * spongeBob = DvdName_new("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

	printf("as first instantiated\n");
	char  * jbts = DvdName_toString(jayAndBob);  
	char  * spts = DvdName_toString(spongeBob);  
	printf("%s\n", jbts );
	printf("%s\n", spts );
	free( jbts);
	free( spts);

	Command_t * bobStarsOn = DvdCommandNameStarsOn_new(jayAndBob);
	Command_t * bobStarsOff = DvdCommandNameStarsOff_new(jayAndBob);
	Command_t * spongeStarsOn = DvdCommandNameStarsOn_new(spongeBob);
	Command_t * spongeStarsOff = DvdCommandNameStarsOff_new(spongeBob);

	bobStarsOn->execute(bobStarsOn);
	spongeStarsOn->execute(spongeStarsOn);

	printf("stars on\n");
	jbts = DvdName_toString(jayAndBob);  
	spts = DvdName_toString(spongeBob);  
	printf("%s\n", jbts );
	printf("%s\n", spts );
	free( jbts);
	free( spts);

	spongeStarsOff->execute(spongeStarsOff);
	printf("sponge stars off\n");

	jbts = DvdName_toString(jayAndBob);  
	spts = DvdName_toString(spongeBob);  
	printf("%s\n", jbts );
	printf("%s\n", spts );
	free( jbts);
	free( spts);

	Command_free(bobStarsOn);
	Command_free(bobStarsOff);
	Command_free(spongeStarsOn);
	Command_free(spongeStarsOff);

	DvdName_free( jayAndBob );
	DvdName_free( spongeBob );

	return 0;
}      
