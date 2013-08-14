//Strategy.java - testing the strategy

package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Strategy.*;



class Strategy {            

	@Test    
   public void strategytest() {
		DvdNameContext allCapContext = new DvdNameContext('C');
		DvdNameContext theEndContext = new DvdNameContext('E');
		DvdNameContext spacesContext = new DvdNameContext('S');

		String dvdNames[] = new String[3];
		dvdNames[0] = "Jay and Silent Bob Strike Back";
		dvdNames[1] = "The Fast and the Furious";
		dvdNames[2] = "The Others";

		char replaceChar = '*';       

		org.junit.Assert.assertEquals("Testing formatting with all caps", 
			"Jay and Silent Bob Strike Back, The Fast and the Furious, The Others",
			allCapContext.formatDvdNames(dvdNames)
		);

		org.junit.Assert.assertEquals( "Testing formatting with beginning the at end", 
			"Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The",
			theEndContext.formatDvdNames(dvdNames)
		);

		org.junit.Assert.assertEquals(" Testing formatting with all spaces replaced with " + replaceChar, 
			"Jay*and*Silent*Bob*Strike*Back,*The*Fast*and*the*Furious,*The*Others",
			spacesContext.formatDvdNames(dvdNames, replaceChar)
		);
		
	}
}      
