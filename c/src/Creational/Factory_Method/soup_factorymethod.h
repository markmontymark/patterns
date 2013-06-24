//SoupFactoryMethod - a Factory Method

#ifndef C_PATTERNS_FM_FM_H_
#define C_PATTERNS_FM_FM_H_

#include "../../common/soup.h"
#include "../../common/soupbuffet.h"

typedef struct soup_factorymethod soup_factorymethod_t;
struct soup_factorymethod
{
	soupbuffet_t * ( * make_soupbuffet )();
	soup_t * ( * make_chickensoup) ();
	soup_t * ( * make_clamchowder) ();
	soup_t * ( * make_fishchowder) ();
	soup_t * ( * make_minnestrone) ();
	soup_t * ( * make_pastafazul ) ();
	soup_t * ( * make_tofusoup   ) ();
	soup_t * ( * make_vegetablesoup) ();
	char * ( * make_soupbuffet_name )();
};
#define soup_factorymethod_s sizeof(soup_factorymethod_t)

soup_factorymethod_t * soup_factorymethod_new( void (*init)(soup_factorymethod_t *) ) ;
void soup_factorymethod_free(soup_factorymethod_t * sfm ) ;
soupbuffet_t * soup_factorymethod_makeSoupBuffet() ;
soup_t * soup_factorymethod_makeChickenSoup() ;
soup_t * soup_factorymethod_makeClamChowder() ;
soup_t * soup_factorymethod_makeFishChowder() ;
soup_t * soup_factorymethod_makeMinnestrone() ;
soup_t * soup_factorymethod_makePastaFazul() ;
soup_t * soup_factorymethod_makeTofuSoup() ;
soup_t * soup_factorymethod_makeVegetableSoup() ;
char * soup_factorymethod_makeBuffetName() ;

#endif
