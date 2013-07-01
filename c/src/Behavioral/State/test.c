
// testing the State

#include "DvdStateContext.h"

int main( int argc, char ** argv )
{
	DvdStateContext_t * ctx = DvdStateContext_new();
	DvdStateContext_showName(ctx,"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");
	DvdStateContext_showName(ctx,"Jay and Silent Bob Strike Back");  
	DvdStateContext_showName(ctx,"Buffy The Vampire Slayer Season 2");
	DvdStateContext_showName(ctx, "The Sopranos Season 2");
	//DvdStateContext_free( ctx );
}
