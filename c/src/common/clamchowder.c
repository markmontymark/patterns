
#include "clamchowder.h"

soup_t * clamchowder_new()
{
	soup_t * soup = soup_new();
	soup->name = "ClamChowder";
	arraylist_string_add( soup->ingredients,"1 Pound Fresh Clams");
	arraylist_string_add( soup->ingredients,"1 cup fruit or vegetables");    
	arraylist_string_add( soup->ingredients,"1/2 cup milk");      
	arraylist_string_add( soup->ingredients,"1/4 cup butter");    
	arraylist_string_add( soup->ingredients,"1/4 cup chips");          
	return soup;
}
