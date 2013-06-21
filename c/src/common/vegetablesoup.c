
#include "vegetablesoup.h"

soup_t * vegetablesoup_new()
{
	soup_t * soup = soup_new();
	soup->name = "Vegetable Soup";
	arraylist_string_add( soup->ingredients,"1 cup bullion");    
	arraylist_string_add( soup->ingredients,"1/4 cup carrots");         
	arraylist_string_add( soup->ingredients,"1/4 cup potatoes");         
   return soup;
}
