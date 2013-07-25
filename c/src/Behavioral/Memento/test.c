
// - testing the Memento - contains a Caretaker object

#include "DvdDetails.h"
#include "stdlib.h"
#include "stdio.h"


int main( int argc, char ** argv )
{
	//the Caretaker
	DvdDetails_t * memento;  
	char * deets;

	DvdDetails_t * dvdDetails = DvdDetails_new("Memento", '1'); 
	DvdDetails_addStar( dvdDetails, "Guy Pearce" );

	memento = DvdDetails_createMemento( dvdDetails);
	deets = DvdDetails_to_string( dvdDetails);
	printf("as first instantiated\n%s\n", deets );
	free(deets);

	//oops - Cappuccino on the keyboard!
	DvdDetails_addStar(dvdDetails,"edskdzkvdfb");  
	deets = DvdDetails_to_string( dvdDetails );
	printf("after star added incorrectly\n%s\n", deets );
	free(deets);

	//show the memento
	deets = DvdDetails_to_string( memento);
	printf("the memento\n%s\n", deets );
	free(deets);

	//back off changes
	DvdDetails_reset(dvdDetails, memento);
	deets = DvdDetails_to_string( dvdDetails);
	printf( "after DvdMemento state is restored to DvdDetails\n%s\n", deets );
	free(deets);

	DvdDetails_free( dvdDetails );
	DvdDetails_free( memento );
	
	return 0;
}
