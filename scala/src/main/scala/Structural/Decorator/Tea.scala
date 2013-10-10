package Structural.Decorator;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Decorator (aka Wrapper) Overview
//One class takes in another class, both of which extend the same abstract class, and adds functionality.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//Tea - the abstract base class

abstract class Tea {  
   boolean teaIsSteeped; 
   
   abstract String steepTea();
}
