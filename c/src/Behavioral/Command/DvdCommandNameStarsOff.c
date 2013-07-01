
//DvdCommandNameStarsOff.java - two of two Concrete Commands

#include "DvdCommandNameStarsOff.h"

#include "DvdName.h"

void DvdCommandNameStarsOff_execute(Command_t * c) 
{
	 DvdName_setNameStarsOff( c->dvdName );
} 

Command_t * DvdCommandNameStarsOff_new(DvdName_t * dvdNameIn) 
{
	Command_t * c = Command_new(dvdNameIn);
	c->execute = DvdCommandNameStarsOff_execute;
	return c;
} 
