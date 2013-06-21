
#ifndef C_PATTERNS_ABSTRACTSOUPFACTORY_HONOLULU_H_
#define C_PATTERNS_ABSTRACTSOUPFACTORY_HONOLULU_H_

#include "abstract_soup_factory.h"

soup_factory_t * honolulu_soup_factory_new();
void honolulu_soup_factory_init( soup_factory_t *);
soup_t * honolulu_soup_factory_make_clamchowder ();
soup_t * honolulu_soup_factory_make_fishchowder ();

#endif
