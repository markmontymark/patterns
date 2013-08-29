// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Proxy (aka Surrogate) Overview - An example of a "Virtual Proxy"
One class controls the creation of and access to objects in another class.
PotOfTeaInterface - the Subject Interface

//PotOfTeaInterface will insure that the proxy 
//  has the same methods as it's real subject
public interface PotOfTeaInterface {   
   public void pourTea();
}

PotOfTeaProxy - the Proxy

public class PotOfTeaProxy implements PotOfTeaInterface {  
   PotOfTea potOfTea;
    
   public PotOfTeaProxy() {}
   
   public void pourTea() {
       potOfTea = new PotOfTea();
       potOfTea.pourTea();
   }
}

PotOfTea - the Real Subject

public class PotOfTea implements PotOfTeaInterface {  
   public PotOfTea() {
       System.out.println("Making a pot of tea");
   }
   
   public void pourTea() {
       System.out.println("Pouring tea");
   }   
}

TestProxy - testing the Proxy

class TestProxy {
   public static void main(String[] args) {
       System.out.println("TestProxy: instantiating PotOfTeaProxy");
       PotOfTeaInterface potOfTea = new PotOfTeaProxy();
       System.out.println(" ");
       System.out.println("TestProxy: pouring tea");
       potOfTea.pourTea();
   }
}

Test Results

TestProxy: instantiating PotOfTeaProxy


TestProxy: pouring tea
Making a pot of tea
Pouring tea

Notes
There are four types of proxies, all taking the same basic format:
1. Virtual Proxy - The proxy won't create an "expensive" subject object until it is actually needed.
2. Remote Proxy - A local proxy object controls access to a remote subject object.
3. Protection proxy - The proxy insures that the object creating/calling the subject has authorization to do so.
4. Smart reference - The proxy will perform "additional actions" when the subject is called.
Reference Desgin Patterns pages 208-209. 


