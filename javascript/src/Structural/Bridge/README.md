// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Java Design Patterns Bridge
Bridge Overview
An abstraction and implementation are in different class hierarchies.
Soda.java - the Abstract Base Class

public abstract class Soda {  
   SodaImp sodaImp; 
   
   public void setSodaImp() {
       this.sodaImp = SodaImpSingleton.getTheSodaImp();
   }
   public SodaImp getSodaImp() {
       return this.sodaImp;
   }
   
   public abstract void pourSoda();
}

MediumSoda.java - one of two classes extending the Abstract

public class MediumSoda extends Soda {  
   public MediumSoda() {
       setSodaImp();
   }
   
   public void pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
       for (int i = 0; i < 2; i++) {
           System.out.print("...glug...");
           sodaImp.pourSodaImp();
       }
       System.out.println(" ");
   }
}

SuperSizeSoda.java - two of two classes extending the Abstract

public class SuperSizeSoda extends Soda {  
   public SuperSizeSoda() {
       setSodaImp();
   }
   
   public void pourSoda() {
       SodaImp sodaImp = this.getSodaImp();
       for (int i = 0; i < 5; i++) {
           System.out.print("...glug...");
           sodaImp.pourSodaImp();
       }
       System.out.println(" ");       
   }
}

SodaImp.java - the Implementation Base Class

public abstract class SodaImp {  
   public abstract void pourSodaImp();
}

CherrySodaImp.java - one of three classes extending the Implementation Base Class

public class CherrySodaImp extends SodaImp {
   CherrySodaImp() {}
    
   public void pourSodaImp() {
       System.out.println("Yummy Cherry Soda!");
   }
}

GrapeSodaImp.java - two of three classes extending the Implementation Base Class

public class GrapeSodaImp extends SodaImp {
   GrapeSodaImp() {}
    
   public void pourSodaImp() {
       System.out.println("Delicious Grape Soda!");
   }
}

OrangeSodaImp.java - three of three classes extending the Implementation Base Class

public class OrangeSodaImp extends SodaImp {  
   OrangeSodaImp() {}
    
   public void pourSodaImp() {
       System.out.println("Citrusy Orange Soda!");
   }
}

SodaImpSingleton.java - a Singleton to hold the current SodaImp

public class SodaImpSingleton {  
    private static SodaImp sodaImp;
   
    public SodaImpSingleton(SodaImp sodaImpIn) {
        this.sodaImp = sodaImpIn;
    }
    
    public static SodaImp getTheSodaImp() {
        return sodaImp;
    }
}

TestBridge.java - testing the Bridge

class TestBridge {
   public static void testCherryPlatform() {
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
   
   public static void testGrapePlatform() {
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
   
   public static void testOrangePlatform() {
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
    
   public static void main(String[] args) {
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



