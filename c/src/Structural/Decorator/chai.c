

#include "../../common/arraylist_string.h"
#include "tea.h"
#include "chai.h"

#include "stdlib.h"

void chai_steep_tea( chai_t * t ) 
{
	t->teaToMakeChai->steep_tea( t->teaToMakeChai );
	steep_chai_ingredients( t );
	printf("tea is steeping with chain\n");
}    


chai_t * chai_new( tea_t * teaToMakeChai )
{
	chai_t * t = malloc(chai_s);
	t->steep_tea = chai_steep_tea;
	t->teaToMakeChai = teaToMakeChai;
	t->ingredients = arraylist_string_new();
	arraylist_string_add( t->ingredients, "bay leaf");
	arraylist_string_add( t->ingredients, "cinnamon stick");
	arraylist_string_add( t->ingredients, "ginger");
	arraylist_string_add( t->ingredients, "honey");
	arraylist_string_add( t->ingredients, "soy milk");
	arraylist_string_add( t->ingredients, "vanilla bean");
	return t;
}

void chai_free( chai_t * t )
{
	if( t == NULL )
		return;
	arraylist_string_free( t->ingredients );
	free( t->teaToMakeChai );
	free(t);
}
    

    
void steep_chai_ingredients(chai_t * t) 
{
	int i,
		sz = arraylist_string_size( t->ingredients );
	
	for( i = 0; i < sz; i++)
		printf("%s is steeping\n", arraylist_string_get( t->ingredients, i) );
	printf("chai ingredients are steeping\n");
}
