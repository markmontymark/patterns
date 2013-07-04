
//- testing the composite


int main( int argc, char ** argv )
{
	printf("Creating tinOfTeaBags\n");
	teabags_t *tinOfTeaBags = new TinOfTeaBags("tin of tea bags\n");
	printf("The tinOfTeaBags has %d tea bags in it.\n", tinOfTeaBags->countTeaBags(tinOfTeaBags) );

	printf("Creating teaBag1\n");
	teabags_t *teaBag1 = new OneTeaBag("tea bag 1\n");
	printf("The teaBag1 has %d tea bags in it.\n" , teaBag1->countTeaBags(teaBag1) );

	printf("Creating teaBag2\n");
	teabags_t *teaBag2 = new OneTeaBag("tea bag 2\n");
	printf("The teaBag2 has %d tea bags in it.\n", teaBag2->countTeaBags(teaBag2) );


	printf( "Putting teaBag1 and teaBag2 in tinOfTeaBags\n");
	if (tinOfTeaBags.add(teaBag1))
		printf( "teaBag1 added successfully to tinOfTeaBags\n");
	else
		printf( "teaBag1 not added successfully tinOfTeaBags\n");

	if (tinOfTeaBags.add(teaBag2)) 
		printf( "teaBag2 added successfully to tinOfTeaBags\n");
	else
		printf( "teaBag2 not added successfully tinOfTeaBags\n");
	printf("The tinOfTeaBags now has %d tea bags in it.\n\n" , tinOfTeaBags->countTeaBags(tinOfTeaBags) );


	printf("Creating smallTinOfTeaBags\n");
	teabags_t *smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags\n");
	printf("The smallTinOfTeaBags has %d in it.\n" , smallTinOfTeaBags->countTeaBags(smallTinOfTeaBags) );
	printf("Creating teaBag3\n");
	teabags_t *teaBag3 = new OneTeaBag("tea bag 3\n");
	printf("The teaBag3 has %d tea bags in it.\n" , teaBag3->countTeaBags(teaBag3) );
	printf("Putting teaBag3 in smallTinOfTeaBags\n");
	if (smallTinOfTeaBags.add(teaBag3))
		printf( "teaBag3 added successfully to smallTinOfTeaBags\n");
	else
		printf( "teaBag3 not added successfully to smallTinOfTeaBags\n");
	
	printf("The smallTinOfTeaBags now has %d tea bags in it.\n\n" , smallTinOfTeaBags->countTeaBags(smallTinOfTeaBags) );


	printf( "Putting smallTinOfTeaBags in tinOfTeaBags\n");
	if (tinOfTeaBags.add(smallTinOfTeaBags)) 
		printf( "smallTinOfTeaBags added successfully to tinOfTeaBags\n");
	else
		printf( "smallTinOfTeaBags not added successfully to tinOfTeaBags\n");

	printf("The tinOfTeaBags now has %d tea bags in it.\n\n" , tinOfTeaBags->countTeaBags(tinOfTeaBags) );


	printf("Removing teaBag2 from tinOfTeaBags\n");
	printf("%s\n", tinOfTeaBags->remove(teaBag2) ?  "teaBag2 successfully removed from tinOfTeaBags\n" : "teaBag2 not successfully removed from tinOfTeaBags\n");

	printf("The tinOfTeaBags now has %d tea bags in it.\n" , tinOfTeaBags->countTeaBags(tinOfTeaBags) );
}
