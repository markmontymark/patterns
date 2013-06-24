
#include "../../common/bostonclamchowder.h"
#include "../../common/bostonfishchowder.h"

#include "soup_factorymethod.h"

//boston_factorymethod - One of Two Subclass Factory Methods


char * boston_factorymethod_makeBuffetName( )
{
        return "Boston Soup Buffet";
}

soup_t * boston_factorymethod_makeClamChowder() 
{
        return bostonclamchowder_new();
}

soup_t * boston_factorymethod_makeFishChowder() 
{
        return bostonfishchowder_new();
}

void boston_factorymethod_init( soup_factorymethod_t * sfm )
{
	sfm->make_soupbuffet_name = boston_factorymethod_makeBuffetName;
	sfm->make_clamchowder = boston_factorymethod_makeClamChowder;
	sfm->make_fishchowder = boston_factorymethod_makeFishChowder;
}

soup_factorymethod_t * boston_factorymethod_new()
{
	return soup_factorymethod_new(boston_factorymethod_init);
}



