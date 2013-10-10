package Behavioral.Command;


//DvdCommandNameStarsOff - two of two Concrete Commands

public class DvdCommandNameStarsOff extends CommandAbstract {  
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOff(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
   public void execute() {
       this.dvdName.setNameStarsOff();
   } 
}