namespace Structural.Proxy {


//PotOfTeaProxy.java - the Proxy

public class PotOfTeaProxy : PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public string pourTea() {
       potOfTea = new PotOfTea();
       return potOfTea.pourTea();
   }
}

}
