

//DvdCommandNameStarsOn - one of two Concrete Commands

#ifndef COMMAND_DVDCOMMAND_STARS_OFF_H_
#define COMMAND_DVDCOMMAND_STARS_OFF_H_

#include "Command.h"
#include "DvdName.h"

void DvdCommandNameStarsOn_execute(Command_t * c) ;

Command_t * DvdCommandNameStarsOn_new(DvdName_t * dvdNameIn) ;

#endif
