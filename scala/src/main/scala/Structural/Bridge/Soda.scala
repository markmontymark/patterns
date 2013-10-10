package Structural.Bridge;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Bridge
//Bridge Overview
//An abstraction and implementation are in different class hierarchies.
//Soda - the Abstract Base Class

abstract class Soda {  
   SodaImp sodaImp; 
   
   void setSodaImp() {
       this.sodaImp = SodaImpSingleton.getTheSodaImp();
   }
   SodaImp getSodaImp() {
       return this.sodaImp;
   }
   
   abstract String pourSoda();
}
