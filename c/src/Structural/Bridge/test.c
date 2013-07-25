#include "stdio.h"

#include "SodaImp.h"
#include "CherrySodaImp.h"
#include "GrapeSodaImp.h"
#include "OrangeSodaImp.h"
#include "mediumsoda.h"
#include "supersizesoda.h"

// testing the Bridge

void testCherryPlatform() 
{
	SodaImp_set( CherrySodaImp_pourSodaImp );
	printf( "testing medium soda on the cherry platform\n");
	mediumsoda_pourSoda();
	printf( "testing super size soda on the cherry platform\n");
	supersizesoda_pourSoda();       
}
   
void testGrapePlatform() 
{
	SodaImp_set( GrapeSodaImp_pourSodaImp );
	printf( "testing medium soda on the grape platform\n");
	mediumsoda_pourSoda();
	printf( "testing super size soda on the grape platform\n");
	supersizesoda_pourSoda();       
}   
   
void testOrangePlatform() 
{
	SodaImp_set( OrangeSodaImp_pourSodaImp );
	printf( "testing medium soda on the orange platform\n");
	mediumsoda_pourSoda();
	printf( "testing super size soda on the orange platform\n");
	supersizesoda_pourSoda();       
}
    
int main( int argc, char ** argv) 
{
	testCherryPlatform();
	testGrapePlatform();
	testOrangePlatform();

	return 0;
}
	
