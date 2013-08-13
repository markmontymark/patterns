namespace Structural.Flyweight {


//TeaFlavor.java - the Concrete Flyweight

public class TeaFlavor : TeaOrder {  
    string teaFlavor; 
   
    public TeaFlavor(string teaFlavor) {
        this.teaFlavor = teaFlavor;
    }
   
    public string getFlavor() {
        return this.teaFlavor;
    }
   
    override public void serveTea(TeaOrderContext teaOrderContext) {
        //Console.WriteLine("Serving tea flavor " + teaFlavor + " to table number " + teaOrderContext.getTable());
    }
}

}
