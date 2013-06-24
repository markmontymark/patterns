
#include "tofusoup.h"

soup_t * tofusoup_new()
{
	soup_t * soup = soup_new();
	soup->name = "Tofu Soup";
	arraylist_string_add( soup->ingredients,"1 Pound tofu");
	arraylist_string_add( soup->ingredients,"1 cup carrot juice");    
	arraylist_string_add( soup->ingredients,"1/4 cup spirolena");         
	return soup;
}

