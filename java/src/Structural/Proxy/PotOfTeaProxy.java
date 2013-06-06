package Structural.Proxy;


//PotOfTeaProxy.java - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public void pourTea() {
       potOfTea = new PotOfTea();
       potOfTea.pourTea();
   }
}