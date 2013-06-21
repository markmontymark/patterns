
#include "honoluluclamchowder.h"

soup_t * honoluluclamchowder_new()
{
	soup_t * soup = soup_new();
	soup->name = "PacificClamChowder";
	arraylist_string_add( soup->ingredients,"1 Pound Fresh Pacific Clams");
	arraylist_string_add( soup->ingredients,"1 cup pineapple chunks");
	arraylist_string_add( soup->ingredients,"1/2 cup coconut milk");
	arraylist_string_add( soup->ingredients,"1/4 cup SPAM");
	arraylist_string_add( soup->ingredients,"1/4 cup taro chips");
   return soup;
}
