
// - the Command

#ifndef COMMAND_ABSTR_H_
#define COMMAND_ABSTR_H_

#include "DvdName.h"

typedef struct Command Command_t;
struct Command
{
   void (* execute)();
	DvdName_t * dvdName;
};

#define Command_s sizeof(Command_t)

Command_t * Command_new( DvdName_t * dvdName)  ;
void Command_free( Command_t * c) ;

#endif
