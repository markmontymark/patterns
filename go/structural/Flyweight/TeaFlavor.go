package flyweight


//TeaFlavor - the Concrete Flyweight

public class TeaFlavor extends TeaOrder {  
    string teaFlavor 
   
    TeaFlavor(string teaFlavor) {
        this.teaFlavor = teaFlavor
    }
   
    public string getFlavor() {
        return this.teaFlavor
    }
   
    public void serveTea(TeaOrderContext teaOrderContext) {
        System.out.println("Serving tea flavor " + 
                             teaFlavor + 
                           " to table number " + 
                             teaOrderContext.getTable())
    }
}