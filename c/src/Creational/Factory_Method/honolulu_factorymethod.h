
#include "soup_factorymethod.h"

//honolulu_factorymethod - One of Two Subclass Factory Methods

#ifndef C_PATTENS_FM_HONOLULU_FM_H_
#define C_PATTENS_FM_HONOLULU_FM_H_

soup_factorymethod_t * honolulu_factorymethod_new();
void honolulu_factorymethod_init( soup_factorymethod_t * sfm );
char * honolulu_factorymethod_makeBuffetName( );
soup_t * honolulu_factorymethod_makeClamChowder() ;
soup_t * honolulu_factorymethod_makeFishChowder() ;

#endif
