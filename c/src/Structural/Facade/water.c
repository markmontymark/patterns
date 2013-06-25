

//water - two of three classes the facade calls

#include "water.h"

#include "stdlib.h"
#include "stdio.h"

water_t * water_new()
{
	water_t * w = malloc(water_s);
   water_setWaterIsBoiling(w,0);
	printf("behold the wonderous water\n");
	return w;
}

void water_free(water_t * w)
{
	if( w == NULL )
		return;
	free(w);
}
   
void water_boilWater(water_t * w) 
{
	water_setWaterIsBoiling(w,1);
	printf("water is boiling\n");
}
   
void water_setWaterIsBoiling(water_t * w, int isWaterBoiling) 
{
	w->waterIsBoiling = isWaterBoiling;
}

int water_getWaterIsBoiling(water_t * w) 
{
	return w->waterIsBoiling;
}

