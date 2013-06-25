

//water - two of three classes the facade calls

#ifndef C_PATTERNS_FACADE_WATER_H_
#define C_PATTERNS_FACADE_WATER_H_

typedef struct water water_t;
struct water
{
   int waterIsBoiling; 
};
#define water_s sizeof(water_t)

water_t * water_new();
void water_free(water_t *);
void water_boilWater(water_t * ) ;
void water_setWaterIsBoiling(water_t * , int ) ;
int water_getWaterIsBoiling(water_t * ) ;

#endif
