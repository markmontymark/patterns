package Structural.Proxy;


//PotOfTeaProxy - the Proxy

class PotOfTeaProxy extends PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   PotOfTeaProxy() {}
   
   String pourTea() {
       potOfTea = new PotOfTea();
       return potOfTea.pourTea();
   }
}
