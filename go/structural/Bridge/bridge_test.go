//TestBridge - testing the Bridge

package bridge


import (
	"testing"
	"../../lib/asserts"
)

func TestBridge {
	func thetester( si SodaImp ,string siName, string expectedMedium, string expectedSupersize )
	{
       SodaImpSingleton sodaImpSingleton = new SodaImpSingleton(si)
       MediumSoda mediumSoda = new MediumSoda()
       SuperSizeSoda superSizeSoda = new SuperSizeSoda()
       asserts.Equals( t, 
         "testing medium soda on the " + siName + " platform",
			 expectedMedium,
			 mediumSoda.pourSoda()
			)	
			
       asserts.Equals( t, 
         "testing super size soda on the " + siName + " platform",
			expectedSupersize,
			 superSizeSoda.pourSoda() )
	}

   public void testCherryPlatform() {
       thetester(new CherrySodaImp(),"cherry",
			"...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!",
			"...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!"
			)
   }
   
   public void testGrapePlatform() {
       thetester(new GrapeSodaImp(),"grape",
			"...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!",
			"...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!"
		)
   }   
  
   public void testOrangePlatform() {
       thetester(new OrangeSodaImp(),"orange",
			"...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!",
			"...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!"
			)
   }
   
}      
