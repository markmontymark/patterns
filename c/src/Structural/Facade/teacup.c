

// teacup - one of three classes the facade calls

#include "../../common/arraylist_string.h"

#include "water.h"
#include "teabag.h"
#include "teacup.h"

#include "assert.h"
#include "mem.h"
#include "stdlib.h"
#include "stdio.h"

teacup_t * teacup_new()
{
	teacup_t * t;
	NEW(t);

	t->teaBagIsSteeped = 0;
	printf("behold the beautiful new tea cup\n");
	return t;
}

void teacup_free(teacup_t * t)
{
	assert( t );
	water_free( t->water );
	teabag_free( t->teabag );
	FREE(t);
}

void teacup_add_teabag(teacup_t * t,teabag_t * b) 
{
	t->teabag = b;
	printf("the tea bag is in the tea cup\n");
}
   
void teacup_add_water(teacup_t * t, water_t * w) {
	t->water = w;
	printf("the water is in the tea cup\n");  
}   
   
void teacup_steep_teabag( teacup_t * t) 
{
	if( t->teabag != NULL && 
		 t->water  != NULL && 
		 t->water->waterIsBoiling) 
	{
		printf("the tea is steeping in the cup\n");
		t->teaBagIsSteeped = 1;
		return;
	} 
	printf("the tea is not steeping in the cup\n");
	t->teaBagIsSteeped = 0;
}

char * teacup_to_string (teacup_t * t)
{
	if (t->teaBagIsSteeped)
		return "A nice cuppa tea!";
	arraylist_string_t * buf = arraylist_string_new();
	arraylist_string_add(buf, "A cup with ");
	if (t->water != NULL) 
	{
		if (t->water->waterIsBoiling) 
			arraylist_string_add( buf, "boiling water ");
		else
			arraylist_string_add( buf,  "cold water ");
	} 
	else 
		arraylist_string_add( buf, "no water ");

	if (t->teabag != NULL) 
		arraylist_string_add( buf, "and a tea bag");
	else 
		arraylist_string_add( buf, "and no tea bag");
	char * retval = arraylist_string_to_string(buf);
	arraylist_string_free(buf);
	return retval;
}

