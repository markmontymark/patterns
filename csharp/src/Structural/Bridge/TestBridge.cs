//TestBridge.java - testing the Bridge

namespace Structural.Bridge {

using tap;

class TestBridge {


	public static Tapper tap = new Tapper();

   public static void testCherryPlatform() {
       SodaImpSingleton.setSodaImp( new CherrySodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the cherry platform", mediumSoda.pourSoda().Equals("asdfadsf"));
       tap.test( "testing super size soda on the cherry platform", superSizeSoda.pourSoda().Equals("asdfadsf"));       
   }
   
   public static void testGrapePlatform() {
       SodaImpSingleton.setSodaImp( new GrapeSodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the grape platform", mediumSoda.pourSoda().Equals("asdfadsf"));
       tap.test( "testing super size soda on the grape platform", superSizeSoda.pourSoda().Equals("asdfadsf"));       
   }   
   
   public static void testOrangePlatform() {
       SodaImpSingleton.setSodaImp( new OrangeSodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the orange platform", mediumSoda.pourSoda().Equals("asdfadsf"));
       tap.test( "testing super size soda on the orange platform", superSizeSoda.pourSoda().Equals("asdf"));
   }
    
   public static void Main() {
        testCherryPlatform();
        testGrapePlatform();
        testOrangePlatform();
			tap.done();
   }
}

}      
