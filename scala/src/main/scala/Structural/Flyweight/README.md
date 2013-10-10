// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Flyweight Overview
The reusable and variable parts of a class are broken into two classes to save resources.
TeaOrder - the Flyweight

abstract class TeaOrder {  
    abstract void serveTea(TeaOrderContext teaOrderContext);
}

TeaFlavor - the Concrete Flyweight

class TeaFlavor extends TeaOrder {  
    String teaFlavor; 
   
    TeaFlavor(String teaFlavor) {
        this.teaFlavor = teaFlavor;
    }
   
    String getFlavor() {
        return this.teaFlavor;
    }
   
    void serveTea(TeaOrderContext teaOrderContext) {
        System.out.println("Serving tea flavor " + 
                             teaFlavor + 
                           " to table number " + 
                             teaOrderContext.getTable());
    }
}

TeaOrderContext - the Context

class TeaOrderContext {  
   int tableNumber; 
   
   TeaOrderContext(int tableNumber) {
       this.tableNumber = tableNumber;
   }
   
   int getTable() {
       return this.tableNumber;
   }
}

TeaFlavorFactory - the Factory

class TeaFlavorFactory {  
   TeaFlavor[] flavors = new TeaFlavor[10];
     //no more than 10 flavors can be made
   int teasMade = 0;
   
   TeaFlavor getTeaFlavor(String flavorToGet) {
       if (teasMade > 0) {
           for (int i = 0; i < teasMade; i++) {
               if (flavorToGet.equals((flavors[i]).getFlavor())) {
                   return flavors[i];
               }
           }
       }
       flavors[teasMade] = new TeaFlavor(flavorToGet);
       return flavors[teasMade++];
   }
   
   int getTotalTeaFlavorsMade() {return teasMade;}
}

TestFlyweight - the Client, tests the Flyweight

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
    
   static void main(String[] args) {
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

Test Results

Serving tea flavor chai to table number 2
Serving tea flavor chai to table number 2
Serving tea flavor camomile to table number 1
Serving tea flavor camomile to table number 1
Serving tea flavor earl grey to table number 1
Serving tea flavor camomile to table number 897
Serving tea flavor chai to table number 97
Serving tea flavor chai to table number 97
Serving tea flavor camomile to table number 3
Serving tea flavor earl grey to table number 3
Serving tea flavor chai to table number 3
Serving tea flavor earl grey to table number 96
Serving tea flavor camomile to table number 552
Serving tea flavor chai to table number 121
Serving tea flavor earl grey to table number 121
 
total teaFlavor objects made: 3

Notes
In this example a single class could have held both the tea flavor and table number.
However, we will have a limited number of instances of tea flavors, and so that is broken into a it's own flyweight class.
Table number is less limited, so it goes into the context.
The factory is responsible for only making one instance of each flyweight.
The client is responsible for keeping both halves matched up, and passing the context into the flyweight. 


