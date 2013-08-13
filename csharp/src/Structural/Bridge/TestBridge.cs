//TestBridge.java - testing the Bridge

namespace Structural.Bridge {

using tap;

class TestBridge {


	public static Tapper tap = new Tapper();

   public static void testCherryPlatform() {
       SodaImpSingleton.setSodaImp( new CherrySodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the cherry platform", mediumSoda.pourSoda() , ("...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!"));
       tap.test( "testing super size soda on the cherry platform", superSizeSoda.pourSoda() , ("...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!"));       
   }
   
   public static void testGrapePlatform() {
       SodaImpSingleton.setSodaImp( new GrapeSodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the grape platform", mediumSoda.pourSoda() , "...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!");
       tap.test( "testing super size soda on the grape platform", superSizeSoda.pourSoda() , "...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!");       
   }   
   
   public static void testOrangePlatform() {
       SodaImpSingleton.setSodaImp( new OrangeSodaImp());
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       tap.test( "testing medium soda on the orange platform", mediumSoda.pourSoda() , "...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!");
       tap.test( "testing super size soda on the orange platform", superSizeSoda.pourSoda() , "...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!");
   }
    
   public static void Main() {
        testCherryPlatform();
        testGrapePlatform();
        testOrangePlatform();
			tap.done();
   }
}

}      
