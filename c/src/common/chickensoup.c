
#include "chickensoup.h"

soup_t * chickensoup_new()
{
	soup_t * soup = soup_new();
	soup->name = "ChickenSoup";
	arraylist_string_add( soup->ingredients,"1 Pound diced chicken");
	arraylist_string_add( soup->ingredients,"1/2 cup rice");    
	arraylist_string_add( soup->ingredients,"1 cup bullion");      
	arraylist_string_add( soup->ingredients,"1/16 cup butter");    
	arraylist_string_add( soup->ingredients,"1/4 cup diced carrots");          
   return soup;
}   
