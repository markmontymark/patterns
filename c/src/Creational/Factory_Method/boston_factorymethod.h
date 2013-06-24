
#include "soup_factorymethod.h"

//boston_factorymethod - One of Two Subclass Factory Methods

#ifndef C_PATTENS_FM_BOSTON_FM_H_
#define C_PATTENS_FM_BOSTON_FM_H_

soup_factorymethod_t * boston_factorymethod_new();
void boston_factorymethod_init( soup_factorymethod_t * sfm );
char * boston_factorymethod_makeBuffetName( );
soup_t * boston_factorymethod_makeClamChowder() ;
soup_t * boston_factorymethod_makeFishChowder() ;

#endif
