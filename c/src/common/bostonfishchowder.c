#include "bostonfishchowder.h"

soup_t * bostonfishchowder_new()
{
	soup_t * soup = soup_new();
	soup->name = "ScrodFishChowder";
	arraylist_string_add( soup->ingredients,"1 Pound Fresh Scrod");
	arraylist_string_add( soup->ingredients,"1 cup corn");    
	arraylist_string_add( soup->ingredients,"1/2 cup heavy cream");
	arraylist_string_add( soup->ingredients,"1/4 cup butter");    
	arraylist_string_add( soup->ingredients,"1/4 cup potato chips");
	return soup;
}
