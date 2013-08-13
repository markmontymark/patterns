//TestPrototype.java - testing the Prototype

namespace Creational.Prototype {


using tap;

class TestPrototype 
{ 
   public static void Main()
	{

		Tapper tap = new Tapper();
       PrototypeFactory prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork());
       AbstractSpoon spoon = prototypeFactory.makeSpoon();
       AbstractFork fork = prototypeFactory.makeFork();
       tap.test("Getting the Spoon and Fork name:", 
			 ("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName()) , ("bork")
		);


       prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork());
       spoon = prototypeFactory.makeSpoon();
       fork = prototypeFactory.makeFork();

       tap.test("Creating a Prototype Factory with a SaladSpoon and a SaladFork", 
       	("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName()) , ("bork")
		);

		tap.done();
    }
}

}      
