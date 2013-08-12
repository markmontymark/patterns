//TestBridge.java - testing the Bridge

package test.Structural;

import tap.*;
import Structural.Bridge.*;




class TestBridge {


	public static Tapper tap = new Tapper();


   public static void testCherryPlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new CherrySodaImp());
       tap.test(
         "testing medium soda on the cherry platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       tap.test(
         "testing super size soda on the cherry platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }
   
   public static void testGrapePlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new GrapeSodaImp());
       tap.test(
         "testing medium soda on the grape platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       tap.test(
         "testing super size soda on the grape platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }   
   
   public static void testOrangePlatform() {
       SodaImpSingleton sodaImpSingleton = 
         new SodaImpSingleton(new OrangeSodaImp());
       tap.test(
         "testing medium soda on the orange platform");
       MediumSoda mediumSoda = new MediumSoda();
       mediumSoda.pourSoda();
       tap.test(
         "testing super size soda on the orange platform");
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       superSizeSoda.pourSoda();       
   }
    
   public static void main(String[] args) {
        testCherryPlatform();
        testGrapePlatform();
        testOrangePlatform();
			tap.done();
   }
}      
