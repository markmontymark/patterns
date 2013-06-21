

//boston_soup_factory- One of Two concrete factories extending the abstract factory

#include "boston_soup_factory.h"
#include "../../common/bostonclamchowder.h"
#include "../../common/bostonfishchowder.h"

soup_factory_t * boston_soup_factory_new()
{
	soup_factory_t * sf = soup_factory_new();
	soup_factory_init( sf );
	boston_soup_factory_init( sf );
	return sf;
}

void boston_soup_factory_init( soup_factory_t * sf)
{
	sf->factoryLocation = "Boston";
	sf->make_clamchowder = boston_soup_factory_make_clamchowder;
	sf->make_fishchowder = boston_soup_factory_make_fishchowder;
}

soup_t * boston_soup_factory_make_clamchowder ()
{
	return bostonclamchowder_new();
}

soup_t * boston_soup_factory_make_fishchowder ()
{
	return bostonfishchowder_new();
}
