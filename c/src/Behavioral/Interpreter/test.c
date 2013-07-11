

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

	char * expr = "show actor";
	char * showActor = DvdInterpreterClient_interpret( client, expr ) ;
	printf( "interpreting %s: %s\n", expr, showActor);
	free(showActor);

	expr = "show actor for title <Training Day>";
	char * showActorForTitleTrainingDay = DvdInterpreterClient_interpret( client, expr );
	printf( "interpreting %s: %s\n", expr, showActorForTitleTrainingDay );
	free( showActorForTitleTrainingDay );

	expr = "show actor for title <Hamlet>";
	char * showActorForTitleHamlet = DvdInterpreterClient_interpret( client, expr );
	printf( "interpreting %s: %s\n", expr, showActorForTitleHamlet );
	free( showActorForTitleHamlet );

	expr = "show title";
	char * showTitle = DvdInterpreterClient_interpret( client, expr) ;
	printf( "interpreting %s: %s\n", expr, showTitle );
	free( showTitle );


	expr = "show title for actor <Ethan Hawke>";
	char * showTitleForActorEthanHawke = DvdInterpreterClient_interpret( client, expr );
	printf( "interpreting %s: %s\n", expr, showTitleForActorEthanHawke );
	free( showTitleForActorEthanHawke );

	expr = "show title for actor <Denzel Washington>";
	char * showTitleForActorDenzel =  DvdInterpreterClient_interpret( client, expr );
	printf( "interpreting %s: %s\n", expr, showTitleForActorDenzel);
	free( showTitleForActorDenzel );

	DvdInterpreterClient_free( client );
	DvdInterpreterContext_free( ctx );
}
