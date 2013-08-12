//TestPrototype.java - testing the Prototype

package test.Creational;


import tap.*;
import Creational.Prototype.*;


class TestPrototype 
{ 
   public static void main(String[] args) 
	{

		Tapper tap = new Tapper();
       PrototypeFactory prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork());
       final AbstractSpoon spoon = prototypeFactory.makeSpoon();
       final AbstractFork fork = prototypeFactory.makeFork();
       tap.test("Getting the Spoon and Fork name:", new TestCase(){public void test(){
			 assert ("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName()).equals("bork");
		}});


       prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork());
       spoon = prototypeFactory.makeSpoon();
       fork = prototypeFactory.makeFork();

       tap.test("Creating a Prototype Factory with a SaladSpoon and a SaladFork", new TestCase(){public void test(){
       	assert ("Spoon: " + spoon.getSpoonName() + ", Fork: " + fork.getForkName()).equals("bork");
		}});

		tap.done();
    }
}      
