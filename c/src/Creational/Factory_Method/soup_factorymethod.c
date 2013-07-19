//SoupFactoryMethod - a Factory Method

#include "../../common/chickensoup.h"
#include "../../common/clamchowder.h"
#include "../../common/fishchowder.h"
#include "../../common/minnestrone.h"
#include "../../common/pastafazul.h"
#include "../../common/tofusoup.h"
#include "../../common/vegetablesoup.h"

#include "soup_factorymethod.h"

#include "mem.h"

        
soupbuffet_t * soup_factorymethod_makeSoupBuffet() 
{
	return soupbuffet_new();
}

soup_t * soup_factorymethod_makeChickenSoup() 
{
	return chickensoup_new();
}
soup_t * soup_factorymethod_makeClamChowder() 
{
	return clamchowder_new();
}
soup_t * soup_factorymethod_makeFishChowder() 
{
	return fishchowder_new();
}
soup_t * soup_factorymethod_makeMinnestrone() 
{
	return minnestrone_new();
}
soup_t * soup_factorymethod_makePastaFazul() 
{
	return pastafazul_new();
}
soup_t * soup_factorymethod_makeTofuSoup() 
{
	return tofusoup_new();
}
soup_t * soup_factorymethod_makeVegetableSoup() 
{
	return vegetablesoup_new();
}

char * soup_factorymethod_makeBuffetName() 
{
	return "Soup Buffet";
}


soup_factorymethod_t * soup_factorymethod_new( void (*init)(soup_factorymethod_t *) )
{
	soup_factorymethod_t * sfm;
	NEW( sfm );
	sfm->make_soupbuffet = soup_factorymethod_makeSoupBuffet;
	sfm->make_chickensoup = soup_factorymethod_makeChickenSoup;
	sfm->make_clamchowder = soup_factorymethod_makeClamChowder;
	sfm->make_fishchowder = soup_factorymethod_makeFishChowder;
	sfm->make_minnestrone = soup_factorymethod_makeMinnestrone;
	sfm->make_pastafazul  = soup_factorymethod_makePastaFazul;
	sfm->make_tofusoup    = soup_factorymethod_makeTofuSoup;
	sfm->make_vegetablesoup = soup_factorymethod_makeVegetableSoup;
	sfm->make_soupbuffet_name  = soup_factorymethod_makeBuffetName;
	if( init != NULL )
		init(sfm);
	return sfm;
}

void soup_factorymethod_free(soup_factorymethod_t * sfm )
{
	FREE(sfm);
}

