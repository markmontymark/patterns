//TestFacade.java - testing the Facade


package test.Structural;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Structural.Facade.*;




class TestFacade {

	@Test
   public void facade () {
       FacadeCuppaMaker cuppaMaker = new FacadeCuppaMaker();
       FacadeTeaCup teaCup = cuppaMaker.makeACuppa();
		
       org.junit.Assert.assertEquals("Facade test", 
			"A nice cuppa!",
			teaCup.toString()
		);
   }
}
