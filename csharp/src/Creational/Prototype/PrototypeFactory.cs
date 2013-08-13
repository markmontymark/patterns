namespace Creational.Prototype {

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Prototype
//Prototype Overview
//Make new objects by cloning the objects which you set as prototypes
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//PrototypeFactory.java - a Factory for Prototypes

using System;

public class PrototypeFactory {  
    Spoon prototypeSpoon;
    Fork prototypeFork;
    
    public PrototypeFactory(Spoon spoon, Fork fork) {
       prototypeSpoon = spoon;
       prototypeFork = fork;
   }
    
   public Spoon makeSpoon() {
       return new Spoon(prototypeSpoon);
   }
   public Fork makeFork() {
       return new Fork(prototypeFork);
   }
}

}
