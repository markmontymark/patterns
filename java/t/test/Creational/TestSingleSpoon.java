package test.Creational;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Creational.Singleton.*;


//TestSingleSpoon.java - testing the singleton

class TestSingleSpoon {

	@Test    
   public void thetester() {
       
       SingleSpoon spoonForFirstPerson = SingleSpoon.getTheSpoon();
       org.junit.Assert.assertNotNull("First spoon instance ", spoonForFirstPerson);
       
       SingleSpoon spoonForSecondPerson = SingleSpoon.getTheSpoon();
       org.junit.Assert.assertNull("Second person getting a spoon",spoonForSecondPerson);
       
       spoonForFirstPerson.returnTheSpoon();       
       //spoonForFirstPerson = null;
       
       spoonForSecondPerson = SingleSpoon.getTheSpoon();
       org.junit.Assert.assertNotNull( "Second person getting a spoon again ", spoonForSecondPerson);
   }
}      
