//TestState - testing the State

package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.State.*;
import tap.*;



public class State {
	@Test
   public void statetest() 
   {
		DvdStateContext stateContext = new DvdStateContext();

		org.junit.Assert.assertEquals( "State 1 test", 
			"Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies",
			stateContext.showName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies")
		);
		org.junit.Assert.assertEquals( "State 2 test", 
			 "Jay*and*Silent*Bob*Strike*Back",
			stateContext.showName( "Jay and Silent Bob Strike Back")
		);
		org.junit.Assert.assertEquals( "State 3 test", 
			 "Buffy!The!Vampire!Slayer!Season!2",
			stateContext.showName( "Buffy The Vampire Slayer Season 2")
		);
		org.junit.Assert.assertEquals( "State 4 test", 
			 "The*Sopranos*Season*2",
			stateContext.showName( "The Sopranos Season 2")
		);
		
	}
}      
