

package Structural::Proxy::PotOfTeaProxy;


//PotOfTeaProxy.java - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public void pourTea() {
       potOfTea = new PotOfTea();
       potOfTea.pourTea();
   }
}



package Structural::Proxy::PotOfTea;


//PotOfTea.java - the Real Subject

public class PotOfTea implements PotOfTeaInterface {  
   public PotOfTea() {
       System.out.println("Making a pot of tea");
   }
   
   public void pourTea() {
       System.out.println("Pouring tea");
   }   
}



package Structural::Proxy::TestProxy;


//TestProxy.java - testing the Proxy

class TestProxy {
   public static void main(String[] args) {
       System.out.println("TestProxy: instantiating PotOfTeaProxy");
       PotOfTeaInterface potOfTea = new PotOfTeaProxy();
       System.out.println(" ");
       System.out.println("TestProxy: pouring tea");
       potOfTea.pourTea();
   }
}



package Structural::Proxy::PotOfTeaInterface;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Proxy (aka Surrogate) Overview - An example of a "Virtual Proxy"
//One class controls the creation of and access to objects in another class.
//PotOfTeaInterface.java - the Subject Interface

////PotOfTeaInterface will insure that the proxy 
////  has the same methods as it's real subject
public interface PotOfTeaInterface {   
   public void pourTea();
}

