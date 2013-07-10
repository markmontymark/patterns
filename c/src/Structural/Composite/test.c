
//TestTeaBagsComposite - testing the composite

#include "TeaBags.h"
#include "OneTeaBag.h"
#include "TinOfTeaBags.h"

#include "stdio.h"
#include "stdlib.h"


int main( int argc, char ** argv )
{
	printf("Creating tinOfTeaBags\n");
	TeaBags_t * tinOfTeaBags = TinOfTeaBags_new("tin of tea bags");
	printf("The tinOfTeaBags has %d tea bags in it.\n\n", tinOfTeaBags->countTeaBags( tinOfTeaBags) );


	printf("Creating teaBag1\n");
	TeaBags_t * teaBag1 = OneTeaBag_new("tea bag 1");
	printf("The teaBag1 has %d tea bags in it.\n\n", teaBag1->countTeaBags(teaBag1) );

	printf("Creating teaBag2\n");
	TeaBags_t * teaBag2 = OneTeaBag_new("tea bag 2");
	printf("The teaBag2 has %d tea bags in it.\n\n", teaBag2->countTeaBags(teaBag2) );

	printf( "Putting teaBag1 and teaBag2 in tinOfTeaBags\n");
	printf("%s\n", tinOfTeaBags->add(tinOfTeaBags,teaBag1) ?  "teaBag1 added successfully to tinOfTeaBags" : "teaBag1 not added successfully tinOfTeaBags");
	printf("%s\n", tinOfTeaBags->add(tinOfTeaBags,teaBag2) ?  "teaBag2 added successfully to tinOfTeaBags" : "teaBag2 not added successfully tinOfTeaBags");
	printf("The tinOfTeaBags now has %d tea bags in it.\n\n", tinOfTeaBags->countTeaBags(tinOfTeaBags) );
       
	printf("Creating smallTinOfTeaBags\n");
	TeaBags_t * smallTinOfTeaBags = TinOfTeaBags_new("small tin of tea bags");
	printf("The smallTinOfTeaBags has %d tea bags in it.\n\n", smallTinOfTeaBags->countTeaBags(smallTinOfTeaBags) );

	printf("Creating teaBag3\n");
	TeaBags_t * teaBag3 = OneTeaBag_new ("tea bag 3");
	printf("The teaBag3 has %d tea bags in it.\n\n", teaBag3->countTeaBags(teaBag3) );

	printf("Putting teaBag3 in smallTinOfTeaBags\n");
	printf("%s\n", smallTinOfTeaBags->add(smallTinOfTeaBags,teaBag3) ?  "teaBag3 added successfully to smallTinOfTeaBags" : "teaBag3 not added successfully to smallTinOfTeaBags");
	printf("The smallTinOfTeaBags now has %d tea bags in it.\n\n", smallTinOfTeaBags->countTeaBags(smallTinOfTeaBags) );
       
	printf( "Putting smallTinOfTeaBags in tinOfTeaBags\n");
	printf( "%s\n", tinOfTeaBags->add(tinOfTeaBags,smallTinOfTeaBags) ?  "smallTinOfTeaBags added successfully to tinOfTeaBags" : "smallTinOfTeaBags not added successfully to tinOfTeaBags");
	printf("The tinOfTeaBags now has %d tea bags in it.\n\n", tinOfTeaBags->countTeaBags(tinOfTeaBags));
       
	printf("Removing teaBag2 from tinOfTeaBags\n");
	printf( "%s\n", tinOfTeaBags->remove(tinOfTeaBags,teaBag2) ?  "teaBag2 successfully removed from tinOfTeaBags" : "teaBag2 not successfully removed from tinOfTeaBags");
	printf("The tinOfTeaBags now has %d tea bags in it.\n", tinOfTeaBags->countTeaBags(tinOfTeaBags) );

	tinOfTeaBags->free(tinOfTeaBags);
	smallTinOfTeaBags->free(smallTinOfTeaBags);
	teaBag1->free(teaBag1);
	teaBag2->free(teaBag2);
	teaBag3->free(teaBag3);

	return 0;
} 
