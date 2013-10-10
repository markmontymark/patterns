package Structural.Flyweight;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Flyweight Overview
//The reusable and variable parts of a class are broken into two classes to save resources.
//TeaOrder - the Flyweight

abstract class TeaOrder {  
    abstract void serveTea(TeaOrderContext teaOrderContext);
}