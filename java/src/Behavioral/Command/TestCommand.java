package Behavioral.Command;


//TestCommand.java - testing the Command

class TestCommand {            
   public static void main(String[] args) {
       DvdName jayAndBob = 
         new DvdName("Jay and Silent Bob Strike Back");
       DvdName spongeBob = 
         new DvdName("Sponge Bob Squarepants - " +
                     "Nautical Nonsense and Sponge Buddies");
       System.out.println("as first instantiated");
       System.out.println(jayAndBob.toString());  
       System.out.println(spongeBob.toString()); 
       
       CommandAbstract bobStarsOn = 
         new DvdCommandNameStarsOn(jayAndBob);
       CommandAbstract bobStarsOff = 
         new DvdCommandNameStarsOff(jayAndBob);
       CommandAbstract spongeStarsOn = 
         new DvdCommandNameStarsOn(spongeBob);
       CommandAbstract spongeStarsOff = 
         new DvdCommandNameStarsOff(spongeBob);

       bobStarsOn.execute();
       spongeStarsOn.execute();
       System.out.println(" ");
       System.out.println("stars on");
       System.out.println(jayAndBob.toString());
       System.out.println(spongeBob.toString());

       spongeStarsOff.execute();
       System.out.println(" ");
       System.out.println("sponge stars off");
       System.out.println(jayAndBob.toString());
       System.out.println(spongeBob.toString());
   }
}      