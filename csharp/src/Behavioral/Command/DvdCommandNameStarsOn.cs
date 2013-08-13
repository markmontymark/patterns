//DvdCommandNameStarsOn.java - one of two Concrete Commands

namespace Behavioral.Command {

public class DvdCommandNameStarsOn : CommandAbstract {
   private DvdName dvdName;  
    
   public DvdCommandNameStarsOn(DvdName dvdNameIn) {
       this.dvdName = dvdNameIn;
   }    
	override public void execute() {
       this.dvdName.setNameStarsOn();
   } 
}

}
