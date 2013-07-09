

//TestDvdInterpreter - testing the Interpreter

#include "TitleAndActor.h"
#include "DvdInterpreterContext.h"
#include "DvdInterpreterClient.h"

#include "stdio.h"
   
int main( int argc, char * argv )
{ 
	DvdInterpreterContext_t * ctx = DvdInterpreterContext_new();
	DvdInterpreterContext_addTitle( ctx, "Caddy Shack");
	DvdInterpreterContext_addTitle( ctx, "Training Day");
	DvdInterpreterContext_addTitle( ctx, "Hamlet");

	DvdInterpreterContext_addActor( ctx, "Ethan Hawke");
	DvdInterpreterContext_addActor( ctx, "Denzel Washington");

	DvdInterpreterContext_addTitleAndActor( ctx, TitleAndActor_new("Hamlet", "Ethan Hawke"));
	DvdInterpreterContext_addTitleAndActor( ctx, TitleAndActor_new("Training Day", "Ethan Hawke"));
	DvdInterpreterContext_addTitleAndActor( ctx, TitleAndActor_new("Caddy Shack", "Ethan Hawke"));
	DvdInterpreterContext_addTitleAndActor( ctx, TitleAndActor_new("Training Day", "Denzel Washington"));

	DvdInterpreterClient_t * client = DvdInterpreterClient_new(ctx);

	printf( "interpreting show actor:%s\n", DvdInterpreterClient_interpret( client,"show actor") );
	printf( "interpreting show actor for title <Training Day>: %s\n", DvdInterpreterClient_interpret( client,"show actor for title <Training Day>") );
	printf( "interpreting show actor for title <Hamlet>: %s\n", DvdInterpreterClient_interpret( client,"show actor for title <Hamlet>") );
	printf( "interpreting show title: %s\n", DvdInterpreterClient_interpret( client, " show title"));
	printf( "interpreting show title for actor <Ethan Hawke>: %s\n", DvdInterpreterClient_interpret( client, "show title for actor <Ethan Hawke>"));
	printf( "interpreting show title for actor <Denzel Washington>: %s\n", DvdInterpreterClient_interpret( client, "show title for actor <Denzel Washington>"));

	DvdInterpreterClient_free( client );
	DvdInterpreterContext_free( ctx );
}
