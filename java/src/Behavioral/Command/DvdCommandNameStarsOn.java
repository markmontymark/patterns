package Behavioral.Command;


//DvdCommandNameStarsOn.java - one of two Concrete Commands

public class DvdCommandNameStarsOn extends CommandAbstract {
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOn(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
   public void execute() {
       this.dvdName.setNameStarsOn();
   } 
}