0


//TestFlyweight.java - the Client, tests the Flyweight

class TestFlyweight {  
   static TeaFlavor[] flavors = 
     new TeaFlavor[100];
     //the flavors ordered
   static TeaOrderContext[] tables = 
     new TeaOrderContext[100];
     //the tables for the orders
   static int ordersMade = 0;    
   static TeaFlavorFactory teaFlavorFactory;
    
   static void takeOrders(String flavorIn, int table) {
       flavors[ordersMade] = 
         teaFlavorFactory.getTeaFlavor(flavorIn);
       tables[ordersMade++] = 
         new TeaOrderContext(table);
   }
    
   public static void main(String[] args) {
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
       System.out.println(" ");       
       System.out.println("total teaFlavor objects made: " + 
                           teaFlavorFactory.getTotalTeaFlavorsMade());
   }
}    