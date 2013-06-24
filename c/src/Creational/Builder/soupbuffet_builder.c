 //SoupBuffetBuilder - a Builder


#include "../../common/chickensoup.h"
#include "../../common/clamchowder.h"
#include "../../common/fishchowder.h"
#include "../../common/minnestrone.h"
#include "../../common/pastafazul.h"
#include "../../common/tofusoup.h"
#include "../../common/vegetablesoup.h"

#include "soupbuffet.h"
#include "soupbuffet_builder.h"

#include "stdlib.h"
#include "assert.h"

void soupbuffet_builder_build_chickensoup(soupbuffet_builder_t * sbb) { sbb->soupbuffet->chickenSoup = chickensoup_new(); }
void soupbuffet_builder_build_clamchowder(soupbuffet_builder_t * sbb) { sbb->soupbuffet->clamChowder = clamchowder_new(); }
void soupbuffet_builder_build_fishchowder(soupbuffet_builder_t * sbb) { sbb->soupbuffet->fishChowder = fishchowder_new(); }
void soupbuffet_builder_build_minnestrone(soupbuffet_builder_t * sbb) { sbb->soupbuffet->minnestrone = minnestrone_new(); }
void soupbuffet_builder_build_pastafazul(soupbuffet_builder_t * sbb)  { sbb->soupbuffet->pastaFazul = pastafazul_new(); }
void soupbuffet_builder_build_tofusoup(soupbuffet_builder_t * sbb)    { sbb->soupbuffet->tofuSoup = tofusoup_new(); }
void soupbuffet_builder_build_vegetablesoup(soupbuffet_builder_t * sbb) { sbb->soupbuffet->vegetableSoup = vegetablesoup_new(); }


void soupbuffet_builder_init( soupbuffet_builder_t * sbb )
{
	sbb->build_chickensoup = soupbuffet_builder_build_chickensoup;
	sbb->build_clamchowder = soupbuffet_builder_build_clamchowder ;
	sbb->build_fishchowder = soupbuffet_builder_build_fishchowder ;
	sbb->build_minnestrone = soupbuffet_builder_build_minnestrone;
	sbb->build_pastafazul  = soupbuffet_builder_build_pastafazul ;
	sbb->build_tofusoup = soupbuffet_builder_build_tofusoup;
	sbb->build_vegetablesoup = soupbuffet_builder_build_vegetablesoup ;
	sbb->build_soupbuffet = soupbuffet_builder_build_soupbuffet;
	sbb->set_soupbuffet_name = soupbuffet_builder_set_soupbuffet_name;
}


void soupbuffet_builder_free( soupbuffet_builder_t * sbb )
{
	if( sbb == NULL )
		return;
	if(sbb->soupbuffet != NULL )
		soupbuffet_free(sbb->soupbuffet);
	free(sbb);
}


soupbuffet_builder_t * soupbuffet_builder_new(
	void (*init)(soupbuffet_builder_t *)
)
{
	soupbuffet_builder_t * sbb = malloc(soupbuffet_builder_s);
	soupbuffet_builder_init( sbb );
	if( init != NULL)
		init(sbb);
	return sbb;
}


soupbuffet_t * soupbuffet_builder_get_soupbuffet(soupbuffet_builder_t * sbb)
{
    return sbb->soupbuffet;
}
    
void soupbuffet_builder_build_soupbuffet(soupbuffet_builder_t * sbb) 
{
	sbb->soupbuffet = soupbuffet_new();
}
    
void soupbuffet_builder_set_soupbuffet_name(soupbuffet_builder_t * sbb)
{
	assert(NULL != NULL); //abstract, should die on call
}
        
