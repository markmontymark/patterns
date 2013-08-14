//TestPrototype.java - testing the Prototype

package test.Creational;


import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Creational.Prototype.*;


public class Prototype 
{ 

	@Test
   public void prototype() 
	{
       PrototypeFactory prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork());
       AbstractSpoon spoon = prototypeFactory.makeSpoon();
       AbstractFork fork = prototypeFactory.makeFork();
       org.junit.Assert.assertEquals("Getting the Spoon and Fork name:", 
			  "Spoon: Soup Spoon, Fork: Salad Fork", 
			 ("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName())
		);


       prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork());
       spoon = prototypeFactory.makeSpoon();
       fork = prototypeFactory.makeFork();

       org.junit.Assert.assertEquals("Creating a Prototype Factory with a SaladSpoon and a SaladFork", 
       	 "Spoon: Salad Spoon, Fork: Salad Fork",
       	("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName())
		);

    }
}      
