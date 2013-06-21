
#ifndef C_PATTERNS_ABSTRACTSOUPFACTORY_BOSTON_H_
#define C_PATTERNS_ABSTRACTSOUPFACTORY_BOSTON_H_

#include "abstract_soup_factory.h"

soup_factory_t * boston_soup_factory_new();
void boston_soup_factory_init( soup_factory_t *);
soup_t * boston_soup_factory_make_clamchowder ();
soup_t * boston_soup_factory_make_fishchowder ();

#endif
