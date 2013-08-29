//TestBridge - testing the Bridge

package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Bridge.*;


public class Bridge 
{
	public void thetester( SodaImp si ,String siName, String expectedMedium, String expectedSupersize )
	{
       SodaImpSingleton sodaImpSingleton = new SodaImpSingleton(si);
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       org.junit.Assert.assertEquals(
         "testing medium soda on the " + siName + " platform",
			 expectedMedium,
			 mediumSoda.pourSoda()
			);	
			
       org.junit.Assert.assertEquals(
         "testing super size soda on the " + siName + " platform",
			expectedSupersize,
			 superSizeSoda.pourSoda() );
	}

	@Test	
   public void testCherryPlatform() {
       thetester(new CherrySodaImp(),"cherry",
			"...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!",
			"...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!"
			);
   }
   
	@Test	
   public void testGrapePlatform() {
       thetester(new GrapeSodaImp(),"grape",
			"...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!",
			"...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!"
		);
   }   
  
	@Test 
   public void testOrangePlatform() {
       thetester(new OrangeSodaImp(),"orange",
			"...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!",
			"...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!"
			);
   }
   
}      
