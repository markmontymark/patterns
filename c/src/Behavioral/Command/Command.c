
// - the Command

#include "Command.h"
#include "DvdName.h"
#include "stdlib.h"


Command_t * Command_new( DvdName_t * dvdName) 
{
	Command_t * c = malloc ( Command_s );
	c->dvdName = dvdName;
	return c;
}

void Command_free( Command_t * c) 
{
	if( c == NULL )
		return;	
	free(c);
}

