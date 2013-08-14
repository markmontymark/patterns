//TestCommand.java - testing the Command


package test.Behavioral;


import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Command.*;


class Command {            

	@Test
   public void comtest() {
		
       DvdName jayAndBob = new DvdName("Jay and Silent Bob Strike Back");
       DvdName spongeBob = new DvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

       CommandAbstract bobStarsOn = new DvdCommandNameStarsOn(jayAndBob);
       CommandAbstract bobStarsOff = new DvdCommandNameStarsOff(jayAndBob);
       CommandAbstract spongeStarsOn = new DvdCommandNameStarsOn(spongeBob);
       CommandAbstract spongeStarsOff = new DvdCommandNameStarsOff(spongeBob);

       bobStarsOn.execute();
       spongeStarsOn.execute();

		org.junit.Assert.assertEquals( "stars on", 
			"DVD: Jay*and*Silent*Bob*Strike*Back",
			jayAndBob.toString()
		);
		org.junit.Assert.assertEquals( "stars on", 
			"DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies",
			spongeBob.toString()
		);

		spongeStarsOff.execute();
		org.junit.Assert.assertEquals( "stars off on just spongebob, still on jay and bob ",
			"DVD: Jay*and*Silent*Bob*Strike*Back",
			jayAndBob.toString()
		);
		org.junit.Assert.assertEquals( "stars off on just spongebob", 
			"DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies",
			spongeBob.toString()
		);

		
   }
}      
