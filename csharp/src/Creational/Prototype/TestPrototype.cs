//TestPrototype.java - testing the Prototype

namespace Creational.Prototype {


using tap;

class TestPrototype 
{ 
   public static void Main()
	{

		Tapper tap = new Tapper();
       PrototypeFactory prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork());
       Spoon spoon = prototypeFactory.makeSpoon();
       Fork forky = prototypeFactory.makeFork();
       tap.test("Getting the Spoon and Fork name:", 
			 ("Spoon: " + spoon.getSpoonName() + ", Fork: " + forky.getForkName()) , ("Spoon: Soup Spoon, Fork: Salad Fork")
		);


       prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork());
       spoon = prototypeFactory.makeSpoon();
       forky = prototypeFactory.makeFork();

       tap.test("Creating a Prototype Factory with a SaladSpoon and a SaladFork", 
       	("Spoon: " + spoon.getSpoonName() + ", Fork: " + forky.getForkName()) , ("Spoon: Salad Spoon, Fork: Salad Fork")
		);

		tap.done();
    }
}

}      
