package Structural.Proxy;


//PotOfTeaProxy - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public String pourTea() {
       potOfTea = new PotOfTea();
       return potOfTea.pourTea();
   }
}
