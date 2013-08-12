package Behavioral.State;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//An object appears to change its' class when the class it passes calls through to switches itself for a related class.
//DvdStateContext.java - the Context

public class DvdStateContext {  
   private DvdStateName dvdStateName; 
    
   public DvdStateContext() {
       setDvdStateName(new DvdStateNameStars());  
       //start with stars
   }
   
   public void setDvdStateName(DvdStateName dvdStateNameIn) {
       this.dvdStateName = dvdStateNameIn;
   }
   
   public String showName(String nameIn) {
       return this.dvdStateName.showName(this, nameIn);
   }
}
