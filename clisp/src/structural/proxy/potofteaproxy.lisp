package Structural.Proxy;


//PotOfTeaProxy.java - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public String pourTea() {
       potOfTea = new PotOfTea();
       return potOfTea.pourTea();
   }
}
