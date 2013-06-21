
//An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
//AbstractSoupFactory - An Abstract Factory

#ifndef C_PATTERNS_ABSTRACTSOUPFACTORY_H_
#define C_PATTERNS_ABSTRACTSOUPFACTORY_H_

#include "../../common/soup.h"

typedef struct soup_factory soup_factory_t;
struct soup_factory
{
	soup_t * ( * make_chickensoup  )();
	soup_t * ( * make_clamchowder  )();
	soup_t * ( * make_fishchowder  )();
	soup_t * ( * make_minnestrone  )();
	soup_t * ( * make_pastafazul   )();
	soup_t * ( * make_tofusoup     )();
	soup_t * ( * make_vegetablesoup)();

	char * factoryLocation;
};
#define soup_factory_s sizeof(soup_factory_t)

soup_t * soup_factory_make_chickensoup  ();
soup_t * soup_factory_make_clamchowder  ();
soup_t * soup_factory_make_fishchowder  ();
soup_t * soup_factory_make_minnestrone  ();
soup_t * soup_factory_make_pastafazul   ();
soup_t * soup_factory_make_tofusoup     ();
soup_t * soup_factory_make_vegetablesoup();

soup_factory_t * soup_factory_new();
void soup_factory_init(soup_factory_t *);
void soup_factory_free(soup_factory_t *);

#endif
