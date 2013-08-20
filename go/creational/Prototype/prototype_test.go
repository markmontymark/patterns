//TestPrototype - testing the Prototype









func TestPrototype 
{ 

	@Test
   public void prototype() 
	{
       PrototypeFactory prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork())
       AbstractSpoon spoon = prototypeFactory.makeSpoon()
       AbstractFork fork = prototypeFactory.makeFork()
       asserts.Equals( t, "Getting the Spoon and Fork name:", 
			  "Spoon: Soup Spoon, Fork: Salad Fork", 
			 ("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName())
		)


       prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork())
       spoon = prototypeFactory.makeSpoon()
       fork = prototypeFactory.makeFork()

       asserts.Equals( t, "Creating a Prototype Factory with a SaladSpoon and a SaladFork", 
       	 "Spoon: Salad Spoon, Fork: Salad Fork",
       	("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName())
		)

    }
}      
