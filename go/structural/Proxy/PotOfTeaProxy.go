package proxy


//PotOfTeaProxy - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea
    
   public PotOfTeaProxy() {}
   
   public string pourTea() {
       potOfTea = new PotOfTea()
       return potOfTea.pourTea()
   }
}
