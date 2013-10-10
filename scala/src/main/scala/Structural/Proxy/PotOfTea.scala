package Structural.Proxy;


//PotOfTea - the Real Subject

class PotOfTea extends PotOfTeaInterface {  
   PotOfTea() {
       System.out.println("Making a pot of tea");
   }
   
   String pourTea() {
       return "Pouring tea";
   }   
}
