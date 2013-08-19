//TestFlyweight - the Client, tests the Flyweight

package flyweight

import (
	"fmt"
	"testing"
	"../../lib/asserts"
)



func TestFlyweight(t *testing.T) {  

	flavors := make([]*TeaFlavor,0)
   tables := make([]*TeaOrderContext,0)
   ordersMade := 0    
   teaFlavorFactory := NewTeaFlavorFactory()

	takeOrders := func (flavorIn string, table int) {
       flavors = append(flavors, teaFlavorFactory.GetTeaFlavor(flavorIn))
		 tables = append(tables, NewTeaOrderContext(table) )
		ordersMade += 1
   }
   
       
	 takeOrders("chai", 2)    
	 takeOrders("chai", 2)
	 takeOrders("camomile", 1)
	 takeOrders("camomile", 1)
	 takeOrders("earl grey", 1)
	 takeOrders("camomile", 897)
	 takeOrders("chai", 97)
	 takeOrders("chai", 97)
	 takeOrders("camomile", 3)
	 takeOrders("earl grey", 3)
	 takeOrders("chai", 3)
	 takeOrders("earl grey", 96)
	 takeOrders("camomile", 552)
	 takeOrders("chai", 121)
	 takeOrders("earl grey", 121)
	
	 for i := 0 ; i < ordersMade; i++ {
		  flavors[i].ServeTea(tables[i])
	 }  

	
	asserts.Equals( t, "Flyweight test", 
		"total teaFlavor objects made: 3",
		fmt.Sprintf("total teaFlavor objects made: %d" , teaFlavorFactory.GetTotalTeaFlavorsMade()))
}    
