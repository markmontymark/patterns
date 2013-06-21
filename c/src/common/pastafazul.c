
#include "pastafazul.h"

soup_t * pastafazul_new()
{
	soup_t * soup = soup_new();
	soup->name = "Pasta Fazul";
	arraylist_string_add( soup->ingredients,"1 Pound tomatos");
	arraylist_string_add( soup->ingredients,"1/2 cup pasta");    
	arraylist_string_add( soup->ingredients,"1/2 cup diced carrots");          
	arraylist_string_add( soup->ingredients,"1 cup tomato juice");             
   return soup;
}
