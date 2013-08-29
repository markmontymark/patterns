//TestFlyweight - the Client, tests the Flyweight


package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Flyweight.*;



public class Flyweight {  


	//the flavors ordered
   static TeaFlavor[] flavors = new TeaFlavor[100];

	//the tables for the orders
   static TeaOrderContext[] tables = new TeaOrderContext[100];
   static int ordersMade = 0;    
   static TeaFlavorFactory teaFlavorFactory;
    
   static void takeOrders(String flavorIn, int table) {
       flavors[ordersMade] = 
         teaFlavorFactory.getTeaFlavor(flavorIn);
       tables[ordersMade++] = 
         new TeaOrderContext(table);
   }
   
	@Test 
   public void flyweight() {
       teaFlavorFactory = new TeaFlavorFactory();
       
       takeOrders("chai", 2);    
       takeOrders("chai", 2);
       takeOrders("camomile", 1);
       takeOrders("camomile", 1);
       takeOrders("earl grey", 1);
       takeOrders("camomile", 897);
       takeOrders("chai", 97);
       takeOrders("chai", 97);
       takeOrders("camomile", 3);
       takeOrders("earl grey", 3);
       takeOrders("chai", 3);
       takeOrders("earl grey", 96);
       takeOrders("camomile", 552);
       takeOrders("chai", 121);
       takeOrders("earl grey", 121);
      
       for (int i = 0; i < ordersMade; i++) {
           flavors[i].serveTea(tables[i]);
       }  

		
		org.junit.Assert.assertEquals("Flyweight test", 
			("total teaFlavor objects made: 3"),
			("total teaFlavor objects made: " + teaFlavorFactory.getTotalTeaFlavorsMade())
		);
   }
}    
