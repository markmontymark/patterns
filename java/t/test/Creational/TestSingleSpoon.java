package test.Creational;

import tap.*;
import Creational.Singleton.*;


//TestSingleSpoon.java - testing the singleton

class TestSingleSpoon {
    
   public static void main(String[] args) {
       tap.test("First person getting the spoon");
       SingleSpoon spoonForFirstPerson = 
         SingleSpoon.getTheSpoon();
       if (spoonForFirstPerson != null)
           tap.test(spoonForFirstPerson);
       else
           tap.test("No spoon was available");
       
       tap.test("");
       
       tap.test("Second person getting a spoon");
       SingleSpoon spoonForSecondPerson = SingleSpoon.getTheSpoon();
       if (spoonForSecondPerson != null)
           tap.test(spoonForSecondPerson);
       else
           tap.test("No spoon was available");
       
       tap.test("");
       
       tap.test("First person returning the spoon");
       spoonForFirstPerson.returnTheSpoon();       
       spoonForFirstPerson = null;
       tap.test("The spoon was returned");
       
       tap.test("");
       
       tap.test("Second person getting a spoon");
       spoonForSecondPerson = SingleSpoon.getTheSpoon();
       if (spoonForSecondPerson != null)
           tap.test(spoonForSecondPerson);
       else
           tap.test("No spoon was available");
   }
}      
