package flyweight


//TeaOrderContext - the Context

public class TeaOrderContext {  
   int tableNumber 
   
   public TeaOrderContext(int tableNumber) {
       this.tableNumber = tableNumber
   }
   
   public int getTable() {
       return this.tableNumber
   }
}
