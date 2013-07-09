

//TestDvdInterpreter - testing the Interpreter

#include "TitleAndActor.h"
#include "DvdInterpreterContext.h"
#include "DvdInterpreterClient.h"

#include "stdlib.h"
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

	char * showActor = DvdInterpreterClient_interpret( client,"show actor") ;
	printf( "interpreting show actor:%s\n", showActor);
	free(showActor);

	char * showActorForTitleTrainingDay = DvdInterpreterClient_interpret( client,"show actor for title <Training Day>");
	printf( "interpreting show actor for title <Training Day>: %s\n", showActorForTitleTrainingDay );
	free( showActorForTitleTrainingDay );

	char * showActorForTitleHamlet = DvdInterpreterClient_interpret( client,"show actor for title <Hamlet>");
	printf( "interpreting show actor for title <Hamlet>: %s\n", showActorForTitleHamlet );
	free( showActorForTitleHamlet );


	char * showTitle = DvdInterpreterClient_interpret( client,"show title") ;
	printf( "interpreting show title: %s\n", showTitle );
	free( showTitle );

	char * showTitleForActorEthanHawke = DvdInterpreterClient_interpret( client, "show title for actor <Ethan Hawke>");
	printf( "interpreting show title for actor <Ethan Hawke>: %s\n", showTitleForActorEthanHawke );
	free( showTitleForActorEthanHawke );

	char * showTitleForActorDenzel =  DvdInterpreterClient_interpret( client, "show title for actor <Denzel Washington>" );
	printf( "interpreting show title for actor <Denzel Washington>: %s\n", showTitleForActorDenzel);
	free( showTitleForActorDenzel );

	DvdInterpreterClient_free( client );
	DvdInterpreterContext_free( ctx );
}
