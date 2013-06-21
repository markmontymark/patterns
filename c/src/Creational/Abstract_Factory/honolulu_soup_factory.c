

//honolulu_soup_factory- One of Two concrete factories extending the abstract factory

#include "honolulu_soup_factory.h"
#include "../../common/honoluluclamchowder.h"
#include "../../common/honolulufishchowder.h"

soup_factory_t * honolulu_soup_factory_new()
{
	soup_factory_t * sf = soup_factory_new();
	soup_factory_init( sf );
	honolulu_soup_factory_init( sf );
	return sf;
}

void honolulu_soup_factory_init( soup_factory_t * sf)
{
	sf->factoryLocation = "Honolulu";
	sf->make_clamchowder = honolulu_soup_factory_make_clamchowder;
	sf->make_fishchowder = honolulu_soup_factory_make_fishchowder;
}

soup_t * honolulu_soup_factory_make_clamchowder ()
{
	return honoluluclamchowder_new();
}

soup_t * honolulu_soup_factory_make_fishchowder ()
{
	return honolulufishchowder_new();
}
