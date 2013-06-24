
//HonoluluSoupBuffetBuilder - One of Two Builder Subclasses

#include "../../common/honoluluclamchowder.h"
#include "../../common/honolulufishchowder.h"

#include "soupbuffet_builder.h"
#include "honolulu_soupbuffet_builder.h"


soupbuffet_builder_t * honolulu_soupbuffet_builder_new()
{
	soupbuffet_builder_t * sbb = soupbuffet_builder_new( honolulu_soupbuffet_builder_init );
	return sbb;
}

void honolulu_soupbuffet_builder_init(soupbuffet_builder_t * sbb)
{
	sbb->build_clamchowder = honolulu_soupbuffet_builder_buildClamChowder;
	sbb->build_fishchowder = honolulu_soupbuffet_builder_buildFishChowder;
	sbb->set_soupbuffet_name = honolulu_soupbuffet_builder_setSoupBuffetName;
}

void honolulu_soupbuffet_builder_buildClamChowder(soupbuffet_builder_t * sbb)
{
	sbb->soupbuffet->clamChowder = honoluluclamchowder_new();
}

void honolulu_soupbuffet_builder_buildFishChowder(soupbuffet_builder_t * sbb) 
{
	sbb->soupbuffet->fishChowder = honolulufishchowder_new();
}    
    
void honolulu_soupbuffet_builder_setSoupBuffetName(soupbuffet_builder_t * sbb) 
{
	sbb->soupbuffet->name = "Honolulu Soup Buffet";
}
