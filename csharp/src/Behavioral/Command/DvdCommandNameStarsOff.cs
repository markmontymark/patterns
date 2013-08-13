//DvdCommandNameStarsOff.java - two of two Concrete Commands

namespace Behavioral.Command {


public class DvdCommandNameStarsOff : CommandAbstract {  
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOff(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
   override public void execute() {
       this.dvdName.setNameStarsOff();
   } 
}

}
