
// testing the Mediator

#include "DvdMediator.h"
#include "DvdLowercaseTitle.h"
#include "DvdUpcaseTitle.h"

#include "stdio.h"

int main( int argc, char ** argv )
{
	char title[] = "Mulholland Dr.";
	DvdMediator_t * dvdMediator = DvdMediator_new();
	DvdLowercaseTitle_t * dvdLower = DvdLowercaseTitle_new(title, dvdMediator);
	DvdUpcaseTitle_t * dvdUp = DvdUpcaseTitle_new(dvdLower->title, dvdMediator);

	printf("Lowercase LC title : %s\n" , dvdLower->LowercaseTitle );
	printf("Lowercase super title : %s\n" , dvdLower->title);   
	printf("Upcase UC title : %s\n" , dvdUp->upcaseTitle);
	printf("Upcase super title : %s\n" , dvdUp->title);   

	DvdLowercaseTitle_setSuperTitleLowercase( dvdLower );

	printf("\n");
	printf("After Super set to LC\n");
	printf("Lowercase LC title : %s\n" , dvdLower->LowercaseTitle);
	printf("Lowercase super title : %s\n" , dvdLower->title);
	printf("Upcase UC title : %s\n" , dvdUp->upcaseTitle);
	printf("Upcase super title : %s\n" , dvdUp->title);

	DvdMediator_free( dvdMediator );	
	DvdLowercaseTitle_free( dvdLower );	
	DvdUpcaseTitle_free( dvdUp );	
	
	return 0;
}
