namespace Creational.Singleton {

using tap;

//TestSingleSpoon.java - testing the singleton

class TestSingleton {
    
   public static void Main() {
		Tapper tap = new Tapper();
       SingleSpoon spoonForFirstPerson = SingleSpoon.getTheSpoon();
       tap.test("Create first spoon ", spoonForFirstPerson , null);
       
       SingleSpoon spoonForSecondPerson = SingleSpoon.getTheSpoon();
       tap.test("Second person getting a spoon", spoonForSecondPerson , null);
       
       SingleSpoon.returnTheSpoon();       
       tap.test("The spoon was returned", spoonForFirstPerson , null );
       
       spoonForSecondPerson = SingleSpoon.getTheSpoon();
       tap.test("Second person getting a spoon", spoonForSecondPerson , null);
   }
}

}      
