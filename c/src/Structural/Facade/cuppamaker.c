//cuppamaker - the Facade

#include "cuppamaker.h"
#include "teacup.h"
#include "teabag.h"
#include "water.h"

#include "stdlib.h"
#include "stdio.h"

teacup_t *  cuppamaker_makeACuppa() 
{
	teacup_t * cup = teacup_new();
	teabag_t * bag = teabag_new();
	water_t * w = water_new();
	teacup_add_teabag(cup,bag);
	water_boilWater( w );
	teacup_add_water(cup,w);
	teacup_steep_teabag( cup );
	return cup;
}

