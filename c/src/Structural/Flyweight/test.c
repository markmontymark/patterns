

//test flyweight - the Client, tests the Flyweight

#include "teaOrderContext.h"
#include "teaFlavor.h"
#include "teaFlavorFactory.h"

#include "stdio.h"

int ordersMade = 0;
teaFlavor_t * flavors[10]; //the flavors ordered
teaOrderContext_t *  tables[100]; //the tables for the orders
    
void takeOrders(teaFlavorFactory_t * tff, char * flavorIn, int table) 
{
	flavors[ordersMade] = teaFlavorFactory_getTeaFlavor( tff, flavorIn);
	tables[ordersMade++] = teaOrderContext_new(table);
}
    
int main( int argc, char ** argv ) 
{
   int i;    

	teaFlavorFactory_t * tff = teaFlavorFactory_new();
	takeOrders( tff, "chai", 2);    
	takeOrders( tff, "chai", 2);
	takeOrders( tff, "camomile", 1);
	takeOrders( tff, "camomile", 1);
	takeOrders( tff, "earl grey", 1);
	takeOrders( tff, "camomile", 897);
	takeOrders( tff, "chai", 97);
	takeOrders( tff, "chai", 97);
	takeOrders( tff, "camomile", 3);
	takeOrders( tff, "earl grey", 3);
	takeOrders( tff, "chai", 3);
	takeOrders( tff, "earl grey", 96);
	takeOrders( tff, "camomile", 552);
	takeOrders( tff, "chai", 121);
	takeOrders( tff, "earl grey", 121);

	for(i = 0; i < ordersMade; i++) 
		teaFlavor_serveTea( flavors[i], tables[i]);

	printf("total teaFlavor objects made: %d\n", tff->teasMade);
	
	teaFlavorFactory_free( tff );
	for(i = ordersMade - 1; i > -1; i--) 
		teaOrderContext_free( tables[i]);

	return 0;
}
