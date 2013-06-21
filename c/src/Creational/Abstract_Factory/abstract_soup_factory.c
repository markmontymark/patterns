
//An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
//AbstractSoupFactory - An Abstract Factory


#include "../../common/chickensoup.h"
#include "../../common/clamchowder.h"
#include "../../common/fishchowder.h"
#include "../../common/minnestrone.h"
#include "../../common/pastafazul.h"
#include "../../common/tofusoup.h"
#include "../../common/vegetablesoup.h"

#include "abstract_soup_factory.h"

#include "stdlib.h"

soup_t * soup_factory_make_chickensoup  ()
{
	return chickensoup_new();
}

soup_t * soup_factory_make_clamchowder  ()
{
	return clamchowder_new();
}

soup_t * soup_factory_make_fishchowder  ()
{
	return fishchowder_new();
}

soup_t * soup_factory_make_minnestrone  ()
{
	return minnestrone_new();
}

soup_t * soup_factory_make_pastafazul   ()
{
	return pastafazul_new();
}

soup_t * soup_factory_make_tofusoup     ()
{
	return tofusoup_new();
}

soup_t * soup_factory_make_vegetablesoup()
{
	return vegetablesoup_new();
}


soup_factory_t * soup_factory_new()
{
	soup_factory_t * sf = malloc( soup_factory_s );
	return sf;
}

void soup_factory_free(soup_factory_t * sf)
{
	free(sf);
}

void soup_factory_init( soup_factory_t * sf )
{
	sf->make_chickensoup  = soup_factory_make_chickensoup  ;
	sf->make_clamchowder  = soup_factory_make_clamchowder  ;
	sf->make_fishchowder  = soup_factory_make_fishchowder  ;
	sf->make_minnestrone  = soup_factory_make_minnestrone  ;
	sf->make_pastafazul   = soup_factory_make_pastafazul   ;
	sf->make_tofusoup     = soup_factory_make_tofusoup     ;
	sf->make_vegetablesoup= soup_factory_make_vegetablesoup;
}
