// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Java Design Patterns Bridge
Bridge Overview
An abstraction and implementation are in different class hierarchies.
Soda - the Abstract Base Class

abstract class Soda {  
   SodaImp sodaImp; 
   
   void setSodaImp() {
       this.sodaImp = SodaImpSingleton.getTheSodaImp();
   }
   SodaImp getSodaImp() {
       return this.sodaImp;
   }
   
   abstract void pourSoda();
}

MediumSoda - one of two classes extending the Abstract

class MediumSoda extends Soda {  
   MediumSoda() {
       setSodaImp();
   }
   
   void pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
       for (int i = 0; i < 2; i++) {
           System.out.print("...glug...");
           sodaImp.pourSodaImp();
       }
       System.out.println(" ");
   }
}

SuperSizeSoda - two of two classes extending the Abstract

class SuperSizeSoda extends Soda {  
   SuperSizeSoda() {
       setSodaImp();
   }
   
   void pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
       for (int i = 0; i < 5; i++) {
           System.out.print("...glug...");
           sodaImp.pourSodaImp();
       }
       System.out.println(" ");       
   }
}

SodaImp - the Implementation Base Class

abstract class SodaImp {  
   abstract void pourSodaImp();
}

CherrySodaImp - one of three classes extending the Implementation Base Class

class CherrySodaImp extends SodaImp {
   CherrySodaImp() {}
    
   void pourSodaImp() {
       System.out.println("Yummy Cherry Soda!");
   }
}

GrapeSodaImp - two of three classes extending the Implementation Base Class

class GrapeSodaImp extends SodaImp {
   GrapeSodaImp() {}
    
   void pourSodaImp() {
       System.out.println("Delicious Grape Soda!");
   }
}

OrangeSodaImp - three of three classes extending the Implementation Base Class

class OrangeSodaImp extends SodaImp {  
   OrangeSodaImp() {}
    
   void pourSodaImp() {
       System.out.println("Citrusy Orange Soda!");
   }
}

SodaImpSingleton - a Singleton to hold the current SodaImp

class SodaImpSingleton {  
    private static SodaImp sodaImp;
   
    SodaImpSingleton(SodaImp sodaImpIn) {
        this.sodaImp = sodaImpIn;
    }
    
    static SodaImp getTheSodaImp() {
        return sodaImp;
    }
}

TestBridge - testing the Bridge

class TestBridge {
   static void testCherryPlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new CherrySodaImp());
       System.out.println(
         "testing medium soda on the cherry platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       System.out.println(
         "testing super size soda on the cherry platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }
   
   static void testGrapePlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new GrapeSodaImp());
       System.out.println(
         "testing medium soda on the grape platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       System.out.println(
         "testing super size soda on the grape platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }   
   
   static void testOrangePlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new OrangeSodaImp());
       System.out.println(
         "testing medium soda on the orange platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       System.out.println(
         "testing super size soda on the orange platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }
    
   static void main(String[] args) {
        testCherryPlatform();
        testGrapePlatform();
        testOrangePlatform();
   }
}      

Test Results

testing medium soda on the cherry platform
...glug...Yummy Cherry Soda!
...glug...Yummy Cherry Soda!
 
testing super size soda on the cherry platform
...glug...Yummy Cherry Soda!
...glug...Yummy Cherry Soda!
...glug...Yummy Cherry Soda!
...glug...Yummy Cherry Soda!
...glug...Yummy Cherry Soda!
 
testing medium soda on the grape platform
...glug...Delicious Grape Soda!
...glug...Delicious Grape Soda!
 
testing super size soda on the grape platform
...glug...Delicious Grape Soda!
...glug...Delicious Grape Soda!
...glug...Delicious Grape Soda!
...glug...Delicious Grape Soda!
...glug...Delicious Grape Soda!
 
testing medium soda on the orange platform
...glug...Citrusy Orange Soda!
...glug...Citrusy Orange Soda!
 
testing super size soda on the orange platform
...glug...Citrusy Orange Soda!
...glug...Citrusy Orange Soda!
...glug...Citrusy Orange Soda!
...glug...Citrusy Orange Soda!
...glug...Citrusy Orange Soda!



