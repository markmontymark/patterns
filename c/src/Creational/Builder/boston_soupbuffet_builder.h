
//BostonSoupBuffetBuilder - One of Two Builder Subclasses

#ifndef C_PATTERNS_BUILDER_BSBB_H_
#define C_PATTERNS_BUILDER_BSBB_H_

#include "../../common/bostonclamchowder.h"
#include "../../common/bostonfishchowder.h"

#include "soupbuffet_builder.h"


soupbuffet_builder_t * boston_soupbuffet_builder_new();
void boston_soupbuffet_builder_init(soupbuffet_builder_t *);
void boston_soupbuffet_builder_buildClamChowder(soupbuffet_builder_t * );
void boston_soupbuffet_builder_buildFishChowder(soupbuffet_builder_t * );
void boston_soupbuffet_builder_setSoupBuffetName(soupbuffet_builder_t *);

#endif
