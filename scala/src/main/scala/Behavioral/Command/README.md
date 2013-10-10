// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Command (aka Action or Transaction) Overview
An object encapsulates everything needed to execute a method in another object.
DvdName - the Receiver

public class DvdName {  
   private String titleName;  
    
   public DvdName(String titleName) {
       this.setTitleName(titleName);
   }    
  
   public final void setTitleName(String titleNameIn) {
       this.titleName = titleNameIn;
   }
   public final String getTitleName() {
       return this.titleName;
   }
   
   public void setNameStarsOn() {
       this.setTitleName(this.getTitleName().replace(' ','*'));
   }
   public void setNameStarsOff() {
       this.setTitleName(this.getTitleName().replace('*',' '));
   }   
   
   public String toString() {
       return ("DVD: " + this.getTitleName());
   }
}

CommandAbstract - the Command

public abstract class CommandAbstract {
   public abstract void execute();
}

DvdCommandNameStarsOn - one of two Concrete Commands

public class DvdCommandNameStarsOn extends CommandAbstract {
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOn(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
   public void execute() {
       this.dvdName.setNameStarsOn();
   } 
}

DvdCommandNameStarsOff - two of two Concrete Commands

public class DvdCommandNameStarsOff extends CommandAbstract {  
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOff(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
   public void execute() {
       this.dvdName.setNameStarsOff();
   } 
}

TestCommand - testing the Command

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

Test Results




as first instantiated
DVD: Jay and Silent Bob Strike Back
DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies
 
stars on
DVD: Jay*and*Silent*Bob*Strike*Back
DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies
 
sponge stars off
DVD: Jay*and*Silent*Bob*Strike*Back
DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies


