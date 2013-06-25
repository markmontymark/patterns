
#ifndef C_PATTERNS_teaFlavorFactory_H_
#define C_PATTERNS_teaFlavorFactory_H_

typedef struct teaFlavorFactory teaFlavorFactory_t;
struct teaFlavorFactory
{
	teaFlavor_t * flavors[10];
   //no more than 10 flavors can be made
   int teasMade;
};
#define teaFlavorFactory_s sizeof(teaFlavorFactory_t)

teaFlavorFactory_t * teaFlavorFactory_new() ;
void teaFlavorFactory_free( teaFlavorFactory_t * tff) ;
teaFlavor_t * teaFlavorFactory_getTeaFlavor(teaFlavorFactory_t * tff, char * flavorToGet) ;


#endif
