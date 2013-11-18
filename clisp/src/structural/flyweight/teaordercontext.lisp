package Structural.Flyweight;


//TeaOrderContext.java - the Context

public class TeaOrderContext {  
   int tableNumber; 
   
   public TeaOrderContext(int tableNumber) {
       this.tableNumber = tableNumber;
   }
   
   public int getTable() {
       return this.tableNumber;
   }
}
