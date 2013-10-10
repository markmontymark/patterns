package Structural.Flyweight;


//TeaOrderContext - the Context

class TeaOrderContext {  
   int tableNumber; 
   
   TeaOrderContext(int tableNumber) {
       this.tableNumber = tableNumber;
   }
   
   int getTable() {
       return this.tableNumber;
   }
}
