

package Structural::Adapter::TestTeaBagAdaptation;


//TestTeaBagAdaptation.java - testing the adapter

class TestTeaBagAdaptation {

   public static void main(String[] args) {
       TeaCup teaCup = new TeaCup();

       System.out.println("Steeping tea bag");
       TeaBag teaBag = new TeaBag();       
       teaCup.steepTeaBag(teaBag);

       System.out.println("Steeping loose leaf tea");
       LooseLeafTea looseLeafTea = new LooseLeafTea();
       TeaBall teaBall = new TeaBall(looseLeafTea);
       teaCup.steepTeaBag(teaBall);
   }
}      



package Structural::Adapter::TeaBag;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Adapter (aka Wrapper) Overview
//In the Adapter Design Pattern, a class converts the interface of one class to be what another class expects.

//The adapter does this by taking an instance of the class to be converted (the adaptee) and uses the methods the adaptee has available to create the methods which are expected.

//In this example we have a TeaBall class which takes in an instance of LooseLeafTea. The TeaBall class uses the steepTea method from LooseLeafTea and adapts it to provide the steepTeaInCup method which the TeaCup class requires.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TeaBag.java - the class which the adapter will make the adaptee adapt to

public class TeaBag {  
   boolean teaBagIsSteeped; 
    
   public TeaBag() {
       teaBagIsSteeped = false;
   }
   
   public void steepTeaInCup() {
       teaBagIsSteeped = true;
       System.out.println("tea bag is steeping in cup");
   }
}



package Structural::Adapter::TeaCup;


//TeaCup.java - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.

public class TeaCup {  
   public void steepTeaBag(TeaBag teaBag) {
       teaBag.steepTeaInCup();
   }
}



package Structural::Adapter::TeaBall;


//TeaBall.java - the adapter

public class TeaBall extends TeaBag {  
   LooseLeafTea looseLeafTea;
   
   public TeaBall(LooseLeafTea looseLeafTeaIn) {
       looseLeafTea = looseLeafTeaIn;
       teaBagIsSteeped = looseLeafTea.teaIsSteeped;
   }
    
   public void steepTeaInCup() {
       looseLeafTea.steepTea();
       teaBagIsSteeped = true;
   }
}



package Structural::Adapter::LooseLeafTea;


//LooseLeafTea.java - the adaptee

public class LooseLeafTea {  
   boolean teaIsSteeped; 
    
   public LooseLeafTea() {
       teaIsSteeped = false;
   }
   
   public void steepTea() {
       teaIsSteeped = true;
       System.out.println("tea is steeping");
   }
}

