
//- testing the observer

#include "DvdReleaseByCategory.h"
#include "DvdSubscriber.h"
#include "DvdRelease.h"

#include "assert.h"

int main( int argc, char ** argv )
{
	DvdReleaseByCategory_t * btvs = DvdReleaseByCategory_new("Buffy the Vampire Slayer");
	DvdReleaseByCategory_t * simpsons = DvdReleaseByCategory_new("The Simpsons");  
	DvdReleaseByCategory_t * sopranos = DvdReleaseByCategory_new("The Sopranos");
	DvdReleaseByCategory_t * xfiles = DvdReleaseByCategory_new("The X-Files");

	DvdSubscriber_t * jsopra = DvdSubscriber_new("Junior Soprano");
	DvdSubscriber_t * msimps = DvdSubscriber_new("Maggie Simpson");
	DvdSubscriber_t * rgiles = DvdSubscriber_new("Rupert Giles");
	DvdSubscriber_t * smulde = DvdSubscriber_new("Samantha Mulder");
	DvdSubscriber_t * wrosen = DvdSubscriber_new("Willow Rosenberg");

	DvdReleaseByCategory_addSubscriber(btvs,rgiles);
	DvdReleaseByCategory_addSubscriber(btvs,wrosen);  
	DvdReleaseByCategory_addSubscriber(simpsons,msimps);
	DvdReleaseByCategory_addSubscriber(sopranos,jsopra);
	DvdReleaseByCategory_addSubscriber(xfiles,smulde);
	DvdReleaseByCategory_addSubscriber(xfiles,wrosen);

	//DvdSubscriber_list_dump(btvs->subscriberList);

	DvdRelease_t * btvsS2 = DvdRelease_new("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11);
	DvdRelease_t * simpS2 = DvdRelease_new("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9);
	DvdRelease_t * soprS2 = DvdRelease_new("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
	DvdRelease_t * xfilS5 = DvdRelease_new("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1);

	DvdReleaseByCategory_newDvdRelease(btvs,btvsS2);
	printf("\n");
	DvdReleaseByCategory_newDvdRelease(simpsons,simpS2);
	printf("\n");
	DvdReleaseByCategory_newDvdRelease(sopranos,soprS2);
	printf("\n");
	DvdReleaseByCategory_newDvdRelease(xfiles,xfilS5);
	printf("\n");

	DvdReleaseByCategory_removeSubscriber(xfiles,wrosen);
	printf("\n");

	DvdRelease_updateDvdReleaseDate(xfilS5,2002, 5, 14);
	printf("\n");
	DvdReleaseByCategory_updateDvd(xfiles,xfilS5);
	printf("\n");

	DvdReleaseByCategory_free( btvs );
   DvdReleaseByCategory_free( simpsons );
   DvdReleaseByCategory_free( sopranos );
   DvdReleaseByCategory_free( xfiles );

	DvdSubscriber_free( jsopra );
	DvdSubscriber_free( msimps );
	DvdSubscriber_free( rgiles );
	DvdSubscriber_free( smulde );
	DvdSubscriber_free( wrosen );

	DvdRelease_free( btvsS2 );
	DvdRelease_free( simpS2 );
	DvdRelease_free( soprS2 );
	DvdRelease_free( xfilS5 );

	return 0;
}
