
#include "../../common/honoluluclamchowder.h"
#include "../../common/honolulufishchowder.h"

#include "soup_factorymethod.h"

//honolulu_factorymethod - One of Two Subclass Factory Methods

char * honolulu_factorymethod_makeBuffetName( )
{
        return "Honolulu Soup Buffet";
}

soup_t * honolulu_factorymethod_makeClamChowder() 
{
        return honoluluclamchowder_new();
}

soup_t * honolulu_factorymethod_makeFishChowder() 
{
        return honolulufishchowder_new();
}

void honolulu_factorymethod_init( soup_factorymethod_t * sfm )
{
	sfm->make_soupbuffet_name = honolulu_factorymethod_makeBuffetName;
	sfm->make_clamchowder = honolulu_factorymethod_makeClamChowder;
	sfm->make_fishchowder = honolulu_factorymethod_makeFishChowder;
}

soup_factorymethod_t * honolulu_factorymethod_new()
{
	return soup_factorymethod_new(honolulu_factorymethod_init);
}
