
//DvdCommandNameStarsOff.java - two of two Concrete Commands

#ifndef COMMAND_STARSOFF_H_
#define COMMAND_STARSOFF_H_

#include "Command.h"
#include "DvdName.h"

void DvdCommandNameStarsOff_execute(Command_t * c) ;
Command_t * DvdCommandNameStarsOff_new(DvdName_t * dvdNameIn) ;

#endif
