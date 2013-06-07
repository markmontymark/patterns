

package Structural::Flyweight::TeaOrder;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Flyweight Overview
//The reusable and variable parts of a class are broken into two classes to save resources.
//TeaOrder.java - the Flyweight

public abstract class TeaOrder {  
    public abstract void serveTea(TeaOrderContext teaOrderContext);
}



package Structural::Flyweight::TeaFlavor;


//TeaFlavor.java - the Concrete Flyweight

public class TeaFlavor extends TeaOrder {  
    String teaFlavor; 
   
    TeaFlavor(String teaFlavor) {
        this.teaFlavor = teaFlavor;
    }
   
    public String getFlavor() {
        return this.teaFlavor;
    }
   
    public void serveTea(TeaOrderContext teaOrderContext) {
        System.out.println("Serving tea flavor " + 
                             teaFlavor + 
                           " to table number " + 
                             teaOrderContext.getTable());
    }
}



package Structural::Flyweight::TeaFlavorFactory;


//TeaFlavorFactory.java - the Factory

public class TeaFlavorFactory {  
   TeaFlavor[] flavors = new TeaFlavor[10];
     //no more than 10 flavors can be made
   int teasMade = 0;
   
   public TeaFlavor getTeaFlavor(String flavorToGet) {
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
   
   public int getTotalTeaFlavorsMade() {return teasMade;}
}



package Structural::Flyweight::TeaOrderContext;


//TeaOrderContext.java - the Context

public class TeaOrderContext {  
   int tableNumber; 
   
   TeaOrderContext(int tableNumber) {
       this.tableNumber = tableNumber;
   }
   
   public int getTable() {
       return this.tableNumber;
   }
}



package Structural::Flyweight::TestFlyweight;


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

