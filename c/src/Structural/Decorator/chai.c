

#include "../../common/arraylist_string.h"
#include "tea.h"
#include "tealeaves.h"
#include "chai.h"

#include "mem.h"
#include "assert.h"

void chai_steep_tea( tea_t * t ) 
{
	tealeaves_steep_tea( t->chai->teaToMakeChai );
	steep_chai_ingredients( t );
	printf("tea is steeping with chain\n");
}    


tea_t * chai_new( tea_t * teaToMakeChai )
{
	tea_t * t = tea_new();
	t->type = ChaiType;
	NEW(t->chai);

	chai_t * ch = t->chai;
	ch->teaToMakeChai = teaToMakeChai;
	arraylist_string_t * ingredients = arraylist_string_new();
	ch->ingredients = ingredients;
	arraylist_string_add( ingredients, "bay leaf");
	arraylist_string_add( ingredients, "cinnamon stick");
	arraylist_string_add( ingredients, "ginger");
	arraylist_string_add( ingredients, "honey");
	arraylist_string_add( ingredients, "soy milk");
	arraylist_string_add( ingredients, "vanilla bean");
	return t;
}

void chai_free( tea_t * t )
{
	assert( t );
	arraylist_string_free( t->chai->ingredients );
	FREE( t->chai->teaToMakeChai );
	FREE( t->chai);
	FREE(t);
}
    

    
void steep_chai_ingredients(tea_t * t) 
{
	arraylist_string_t * ingredients = t->chai->ingredients;
	int i,
		sz = arraylist_string_size( ingredients );
	
	for( i = 0; i < sz; i++)
		printf("%s is steeping\n", arraylist_string_get( ingredients, i) );
	printf("chai ingredients are steeping\n");
}
