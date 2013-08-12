//TestCommand.java - testing the Command


package test.Behavioral;


import tap.*;
import Behavioral.Command.*;


class Command {            
   public static void main(String[] args) {
		Tapper tap = new Tapper();
	
       final DvdName jayAndBob = 
         new DvdName("Jay and Silent Bob Strike Back");
       final DvdName spongeBob = 
         new DvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

       CommandAbstract bobStarsOn = new DvdCommandNameStarsOn(jayAndBob);
       CommandAbstract bobStarsOff = new DvdCommandNameStarsOff(jayAndBob);
       CommandAbstract spongeStarsOn = new DvdCommandNameStarsOn(spongeBob);
       CommandAbstract spongeStarsOff = new DvdCommandNameStarsOff(spongeBob);

       bobStarsOn.execute();
       spongeStarsOn.execute();

		tap.test( "stars on", new TestCase() { void test() {
			assert jayAndBob.toString().equals( "DVD: Jay*and*Silent*Bob*Strike*Back");
		}});
		tap.test( "stars on", new TestCase() { void test() {
			assert spongeBob.toString().equals( "DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies");
		}});

		spongeStarsOff.execute();
		tap.test( "stars off on just spongebob, still on jay and bob ", new TestCase() { void test() {
			assert jayAndBob.toString().equals( "DVD: Jay*and*Silent*Bob*Strike*Back");
		}});
		tap.test( "stars off on just spongebob", new TestCase() { void test() {
			assert spongeBob.toString().equals( "DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");
		}});

		tap.done();
   }
}      
