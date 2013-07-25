

#include "teacup.h"
#include "teabag.h"
#include "teaball.h"
#include "looseleaftea.h"

#include "stdio.h"

int main(int argc, char ** argv) 
{
	teacup_t * teacup = teacup_new();

	printf("Steeping tea bag\n");
	teabag_t * teabag = teabag_new();       
	teacup_steep_teabag( teacup, teabag);

	printf("Steeping loose leaf tea\n");
	looseleaftea_t * looseLeafTea = looseleaftea_new();
	teaball_t * teaball = teaball_new(looseLeafTea);
	teacup_steep_teabag(teacup,(teabag_t*)teaball);

	teaball_free( teaball  ); // looseLeafTea gets free'd here
	teacup_free( teacup );
	teabag_free( teabag );

	return 0;
}      
