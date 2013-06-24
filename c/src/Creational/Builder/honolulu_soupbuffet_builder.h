
//HonoluluSoupBuffetBuilder - Two of Two Builder Subclasses

#ifndef C_PATTERNS_BUILDER_HSBB_H_
#define C_PATTERNS_BUILDER_HSBB_H_

#include "../../common/honoluluclamchowder.h"
#include "../../common/honolulufishchowder.h"

#include "soupbuffet_builder.h"


soupbuffet_builder_t * honolulu_soupbuffet_builder_new();
void honolulu_soupbuffet_builder_init(soupbuffet_builder_t *);
void honolulu_soupbuffet_builder_buildClamChowder(soupbuffet_builder_t * );
void honolulu_soupbuffet_builder_buildFishChowder(soupbuffet_builder_t * );
void honolulu_soupbuffet_builder_setSoupBuffetName(soupbuffet_builder_t *);

#endif
