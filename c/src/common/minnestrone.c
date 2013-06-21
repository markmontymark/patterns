
#include "minnestrone.h"

soup_t * minnestrone_new()
{
	soup_t * soup = soup_new();
	soup->name = "Minestrone";
	arraylist_string_add( soup->ingredients,"1 Pound tomatos");
	arraylist_string_add( soup->ingredients,"1/2 cup pasta");    
	arraylist_string_add( soup->ingredients,"1 cup tomato juice");             
	return soup;
}
