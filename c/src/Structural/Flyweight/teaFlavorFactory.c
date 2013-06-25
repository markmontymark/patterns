

#include "stdlib.h"
#include "teaFlavor.h"
#include "teaFlavorFactory.h"

teaFlavorFactory_t * teaFlavorFactory_new() 
{
	teaFlavorFactory_t * obj = malloc( teaFlavorFactory_s );
	obj->teasMade = 0;
	return obj;
}


void teaFlavorFactory_free(teaFlavorFactory_t * obj) 
{
	if( obj == NULL )
		return;

	int teasMade = obj->teasMade;
	int i;
	for( i = teasMade - 1; i > -1; i-- )
		teaFlavor_free( obj->flavors[i] );
	free(obj);
}



teaFlavor_t * teaFlavorFactory_getTeaFlavor(teaFlavorFactory_t * tff, char * flavorToGet) 
{
	int i,
		teasMade = tff->teasMade;
	if (teasMade > 0) {
		for (i = 0; i < teasMade; i++) {
			if ( strcmp( flavorToGet, tff->flavors[i]->teaFlavor) == 0)
				return tff->flavors[i];
		}
	}
	tff->flavors[teasMade] = teaFlavor_new(flavorToGet);
	return tff->flavors[tff->teasMade++];
}

