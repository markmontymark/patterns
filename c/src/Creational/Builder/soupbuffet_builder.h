 //SoupBuffetBuilder - a Builder

#ifndef C_PATTERNS_BUILDER_SOUPBUFFET_BUILDER_H_
#define C_PATTERNS_BUILDER_SOUPBUFFET_BUILDER_H_

#include "../../common/chickensoup.h"
#include "../../common/clamchowder.h"
#include "../../common/fishchowder.h"
#include "../../common/minnestrone.h"
#include "../../common/pastafazul.h"
#include "../../common/tofusoup.h"
#include "../../common/vegetablesoup.h"

#include "soupbuffet.h"

#include "stdlib.h"

typedef struct soupbuffet_builder soupbuffet_builder_t;
struct soupbuffet_builder
{
	void (*build_chickensoup)(soupbuffet_builder_t *);
	void (*build_clamchowder)(soupbuffet_builder_t *);
	void (*build_fishchowder)(soupbuffet_builder_t *);
	void (*build_minnestrone)(soupbuffet_builder_t *);
	void (*build_pastafazul )(soupbuffet_builder_t *);
	void (*build_tofusoup   )(soupbuffet_builder_t *);
	void (*build_vegetablesoup)(soupbuffet_builder_t *);
	void (*build_soupbuffet   )(soupbuffet_builder_t *);
	void (*set_soupbuffet_name)(soupbuffet_builder_t *);
    soupbuffet_t * soupbuffet;
};
#define soupbuffet_builder_s sizeof(soupbuffet_builder_t)


soupbuffet_builder_t * soupbuffet_builder_new(
	void (*init)(soupbuffet_builder_t *)
);
void soupbuffet_builder_init( soupbuffet_builder_t * sbb );
void soupbuffet_builder_free( soupbuffet_builder_t * sbb );
soupbuffet_t * soupbuffet_builder_get_soupbuffet(soupbuffet_builder_t * sbb);
void soupbuffet_builder_build_soupbuffet(soupbuffet_builder_t * sbb) ;
void soupbuffet_builder_set_soupbuffet_name(soupbuffet_builder_t * sbb);

void soupbuffet_builder_build_chickensoup(soupbuffet_builder_t *) ;
void soupbuffet_builder_build_clamchowder(soupbuffet_builder_t *) ;
void soupbuffet_builder_build_fishchowder(soupbuffet_builder_t *) ;
void soupbuffet_builder_build_minnestrone(soupbuffet_builder_t *) ;
void soupbuffet_builder_build_pastafazul(soupbuffet_builder_t *)  ;
void soupbuffet_builder_build_tofusoup(soupbuffet_builder_t *)    ;
void soupbuffet_builder_build_vegetablesoup(soupbuffet_builder_t *) ;

#endif
