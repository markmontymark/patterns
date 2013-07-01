

//DvdCommandNameStarsOn - one of two Concrete Commands

#include "Command.h"
#include "DvdCommandNameStarsOn.h"
#include "DvdName.h"

void DvdCommandNameStarsOn_execute(Command_t * c) 
{
	 DvdName_setNameStarsOn( c->dvdName );
} 

Command_t * DvdCommandNameStarsOn_new(DvdName_t * dvdNameIn) 
{
	Command_t * c = Command_new(dvdNameIn);
	c->execute = DvdCommandNameStarsOn_execute;
	return c;
} 
