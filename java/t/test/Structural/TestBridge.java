//TestBridge.java - testing the Bridge

package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Bridge.*;


class TestBridge 
{
	public void thetester( SodaImp si ,String siName )
	{
       SodaImpSingleton sodaImpSingleton = new SodaImpSingleton(si);
       MediumSoda mediumSoda = new MediumSoda();
       SuperSizeSoda superSizeSoda = new SuperSizeSoda();
       org.junit.Assert.assertEquals(
         "testing medium soda on the " + siName + " platform",
			 mediumSoda.pourSoda());	
			
       org.junit.Assert.assertEquals(
         "testing super size soda on the " + siName + " platform",
			 superSizeSoda.pourSoda() );
	}

	@Test	
   public void testCherryPlatform() {
       thetester(new CherrySodaImp(),"cherry");
   }
   
	@Test	
   public void testGrapePlatform() {
       thetester(new GrapeSodaImp(),"grape");
   }   
  
	@Test 
   public void testOrangePlatform() {
       thetester(new OrangeSodaImp(),"orange");
   }
   
}      
