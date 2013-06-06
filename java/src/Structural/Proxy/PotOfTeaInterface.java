package Structural.Proxy;

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