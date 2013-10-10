package Structural.Adapter;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Adapter (aka Wrapper) Overview
//In the Adapter Design Pattern, a class converts the interface of one class to be what another class expects.

//The adapter does this by taking an instance of the class to be converted (the adaptee) and uses the methods the adaptee has available to create the methods which are expected.

//In this example we have a TeaBall class which takes in an instance of LooseLeafTea. The TeaBall class uses the steepTea method from LooseLeafTea and adapts it to provide the steepTeaInCup method which the TeaCup class requires.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TeaBag - the class which the adapter will make the adaptee adapt to

class TeaBag {  
   boolean teaBagIsSteeped; 
    
   TeaBag() {
       teaBagIsSteeped = false;
   }
   
   void steepTeaInCup() {
       teaBagIsSteeped = true;
   }
}
