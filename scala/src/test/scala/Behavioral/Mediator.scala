//Mediator - testing the Mediator


package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Mediator.*;



public class Mediator {            

	@Test    
   public void thetester() {
       DvdMediator dvdMediator = new DvdMediator();
       DvdLowercaseTitle dvdLower = new DvdLowercaseTitle("Mulholland Dr.", dvdMediator);
       DvdUpcaseTitle dvdUp = new DvdUpcaseTitle(dvdLower, dvdMediator);
       
       org.junit.Assert.assertEquals("Lowercase LC title :" , 
			"mulholland dr.",
			dvdLower.getLowercaseTitle()
		);
       org.junit.Assert.assertEquals("Lowercase super title :" , 
			"Mulholland Dr.",
			dvdLower.getTitle()
		);
       org.junit.Assert.assertEquals("Upcase UC title :" , 
			"MULHOLLAND DR.",
			dvdUp.getUpcaseTitle()
		);
       org.junit.Assert.assertEquals("Upcase super title :" , 
			"Mulholland Dr.",
			dvdUp.getTitle()
		);
       
       dvdLower.setSuperTitleLowercase();
       
       org.junit.Assert.assertEquals("Lowercase LC title :" , 
			"mulholland dr.",
			dvdLower.getLowercaseTitle()
		);
       org.junit.Assert.assertEquals("Lowercase super title :" , 
			"mulholland dr.",
			dvdLower.getTitle()
		);
       org.junit.Assert.assertEquals("Upcase UC title :" , 
			"MULHOLLAND DR.",
			dvdUp.getUpcaseTitle()
		);
       org.junit.Assert.assertEquals("Upcase super title :" , 
			"mulholland dr.",
			dvdUp.getTitle()
		);
   }
}      
