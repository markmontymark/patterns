
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
	assert(btvs);
	assert(simpsons);

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

	DvdRelease_t * btvsS2 = DvdRelease_new("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 06, 11);
	DvdRelease_t * simpS2 = DvdRelease_new("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 07,  9);
	DvdRelease_t * soprS2 = DvdRelease_new("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
	DvdRelease_t * xfilS5 = DvdRelease_new("DVDFOXXFILES5", "The X-Files Season 5", 2002, 04,  1);

	DvdReleaseByCategory_newDvdRelease(btvs,btvsS2);
	DvdReleaseByCategory_newDvdRelease(simpsons,simpS2);
	DvdReleaseByCategory_newDvdRelease(sopranos,soprS2);
	DvdReleaseByCategory_newDvdRelease(xfiles,xfilS5);

	DvdReleaseByCategory_removeSubscriber(xfiles,wrosen);

	DvdRelease_updateDvdReleaseDate(xfilS5,2002, 5, 14);
	DvdReleaseByCategory_updateDvd(xfiles,xfilS5);

	DvdReleaseByCategory_free( btvs );
   DvdReleaseByCategory_free( simpsons );
   DvdReleaseByCategory_free( sopranos );
   DvdReleaseByCategory_free( xfiles );

	return 0;
}
