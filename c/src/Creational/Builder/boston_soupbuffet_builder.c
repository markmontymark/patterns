
//BostonSoupBuffetBuilder - One of Two Builder Subclasses

#include "../../common/bostonclamchowder.h"
#include "../../common/bostonfishchowder.h"

#include "soupbuffet_builder.h"
#include "boston_soupbuffet_builder.h"


soupbuffet_builder_t * boston_soupbuffet_builder_new()
{
	soupbuffet_builder_t * sbb = soupbuffet_builder_new( boston_soupbuffet_builder_init );
	return sbb;
}

void boston_soupbuffet_builder_init(soupbuffet_builder_t * sbb)
{
	sbb->build_clamchowder = boston_soupbuffet_builder_buildClamChowder;
	sbb->build_fishchowder = boston_soupbuffet_builder_buildFishChowder;
	sbb->set_soupbuffet_name = boston_soupbuffet_builder_setSoupBuffetName;
}

void boston_soupbuffet_builder_buildClamChowder(soupbuffet_builder_t * sbb)
{
	sbb->soupbuffet->clamChowder = bostonclamchowder_new();
}

void boston_soupbuffet_builder_buildFishChowder(soupbuffet_builder_t * sbb) 
{
	sbb->soupbuffet->fishChowder = bostonfishchowder_new();
}    
    
void boston_soupbuffet_builder_setSoupBuffetName(soupbuffet_builder_t * sbb) 
{
	sbb->soupbuffet->name = "Boston Soup Buffet";
}
