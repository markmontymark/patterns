

//TestDvdInterpreter - testing the Interpreter

#include "TitleAndActor.h"
#include "DvdInterpreterContext.h"
#include "DvdInterpreterClient.h"

#include "stdlib.h"
#include "stdio.h"
#include "mem.h"
   
int main( int argc, char ** argv )
{ 
	DvdInterpreterContext_t * ctx = DvdInterpreterContext_new();

	DvdInterpreterContext_addActor( ctx, "Ethan Hawke");
	DvdInterpreterContext_addActor( ctx, "Denzel Washington");

	DvdInterpreterContext_addTitle( ctx, "Hamlet");
	DvdInterpreterContext_addTitle( ctx, "Caddy Shack" );
	DvdInterpreterContext_addTitle( ctx, "Training Day" );

	TitleAndActor_t * HamletEthanHawke = TitleAndActor_new("Hamlet", "Ethan Hawke");
	TitleAndActor_t * TrainingDayEthanHawke = TitleAndActor_new("Training Day", "Ethan Hawke");
	TitleAndActor_t * CaddyShackEthanHawke = TitleAndActor_new("Caddy Shack", "Ethan Hawke");
	TitleAndActor_t * TrainingDayDenzelWashington = TitleAndActor_new("Training Day", "Denzel Washington");

	DvdInterpreterContext_addTitleAndActor( ctx, HamletEthanHawke);
	DvdInterpreterContext_addTitleAndActor( ctx, TrainingDayEthanHawke);
	DvdInterpreterContext_addTitleAndActor( ctx, CaddyShackEthanHawke);
	DvdInterpreterContext_addTitleAndActor( ctx, TrainingDayDenzelWashington);

	DvdInterpreterClient_t * client = DvdInterpreterClient_new(ctx);

	char * expr = "show actor";
	char * showActor = DvdInterpreterClient_interpret( client, expr ) ;
	printf( "interpreting %s: %s\n", expr, showActor);
	free(showActor);

	char * expr2 = "show title";
	char * showTitle = DvdInterpreterClient_interpret( client, expr2) ;
	printf( "interpreting %s: %s\n", expr2, showTitle );
	free( showTitle );

	char * expr3 = "show actor for title <Training Day>";
	char * showActorForTitleTrainingDay = DvdInterpreterClient_interpret( client, expr3 );
	printf( "interpreting %s: %s\n", expr3, showActorForTitleTrainingDay );
	free( showActorForTitleTrainingDay );

	char * expr4 = "show actor for title <Hamlet>";
	char * showActorForTitleHamlet = DvdInterpreterClient_interpret( client, expr4 );
	printf( "interpreting %s: %s\n", expr4, showActorForTitleHamlet );
	free( showActorForTitleHamlet );


	char * expr5 = "show title for actor <Ethan Hawke>";
	char * showTitleForActorEthanHawke = DvdInterpreterClient_interpret( client, expr5 );
	printf( "interpreting %s: %s\n", expr5, showTitleForActorEthanHawke );
	free( showTitleForActorEthanHawke );

	char * expr6 = "show title for actor <Denzel Washington>";
	char * showTitleForActorDenzel =  DvdInterpreterClient_interpret( client, expr6 );
	printf( "interpreting %s: %s\n", expr6, showTitleForActorDenzel);
	free( showTitleForActorDenzel );


	TitleAndActor_free( HamletEthanHawke );
	TitleAndActor_free( TrainingDayEthanHawke );
	TitleAndActor_free( CaddyShackEthanHawke );
	TitleAndActor_free( TrainingDayDenzelWashington );
	DvdInterpreterClient_free( client );
	DvdInterpreterContext_free( ctx );

	return 0;
}
