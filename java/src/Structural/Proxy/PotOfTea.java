package Structural.Proxy;


//PotOfTea.java - the Real Subject

public class PotOfTea implements PotOfTeaInterface {  
   public PotOfTea() {
       System.out.println("Making a pot of tea");
   }
   
   public String pourTea() {
       return "Pouring tea";
   }   
}
