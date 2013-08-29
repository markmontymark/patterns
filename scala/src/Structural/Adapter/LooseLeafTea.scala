package Structural.Adapter;


//LooseLeafTea - the adaptee

public class LooseLeafTea {  
   public boolean teaIsSteeped; 
    
   public LooseLeafTea() {
       teaIsSteeped = false;
   }
   
   public void steepTea() {
       teaIsSteeped = true;
       System.out.println("tea is steeping");
   }
}
