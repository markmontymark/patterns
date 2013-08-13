namespace Behavioral.Command {


//TestCommand.java - testing the Command

using tap;
using System;

using Behavioral.Command;


class TestCommand {            
   public static void Main() {
       DvdName jayAndBob = new DvdName("Jay and Silent Bob Strike Back");
       DvdName spongeBob = new DvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

		Tapper t = new Tapper();

       CommandAbstract bobStarsOn = new DvdCommandNameStarsOn(jayAndBob);
       //CommandAbstract bobStarsOff = new DvdCommandNameStarsOff(jayAndBob);
       CommandAbstract spongeStarsOn = new DvdCommandNameStarsOn(spongeBob);
       CommandAbstract spongeStarsOff = new DvdCommandNameStarsOff(spongeBob);

       bobStarsOn.execute();
       spongeStarsOn.execute();
       t.test( "stars on", jayAndBob.ToString() , "DVD: Jay*and*Silent*Bob*Strike*Back");
       t.test( "stars on 2 " , spongeBob.ToString() , "DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies");

       spongeStarsOff.execute();
       t.test("sponge stars off", jayAndBob.ToString() , "DVD: Jay*and*Silent*Bob*Strike*Back");
       t.test("sponge stars off 2", spongeBob.ToString() , "DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

		t.done();
   }
}      

}
