// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
An object appears to change its' class when the class it passes calls through to switches itself for a related class.
DvdStateContext.java - the Context

public class DvdStateContext {  
   private DvdStateName dvdStateName; 
    
   public DvdStateContext() {
       setDvdStateName(new DvdStateNameStars());  
       //start with stars
   }
   
   public void setDvdStateName(DvdStateName dvdStateNameIn) {
       this.dvdStateName = dvdStateNameIn;
   }
   
   public void showName(String nameIn) {
       this.dvdStateName.showName(this, nameIn);
   }
}

DvdStateName.java - the State interface

public interface DvdStateName {  
   public void showName(DvdStateContext dvdStateContext, 
                        String nameIn);  
}

DvdStateNameExclaim.java - one of two Concrete States

public class DvdStateNameExclaim implements DvdStateName {  
    public DvdStateNameExclaim() {}
    
    public void showName(DvdStateContext dvdStateContext, 
                         String nameIn) {
         System.out.println(nameIn.replace(' ','!'));
         //show exclaim only once, switch back to stars
         dvdStateContext.setDvdStateName(new DvdStateNameStars());
    }  
}

DvdStateNameStars.java - two of two Concrete States

public class DvdStateNameStars implements DvdStateName {  
    int starCount;
    
    public DvdStateNameStars() {
        starCount = 0;
    }
    
    public void showName(DvdStateContext dvdStateContext, 
                         String nameIn) {
         System.out.println(nameIn.replace(' ','*'));
         // show stars twice, switch to exclamation point
         if (++starCount > 1) {
             dvdStateContext.setDvdStateName(
               new DvdStateNameExclaim());
         }       
    }  
}

TestState.java - testing the State

class TestState {
   public static void main(String[] args) 
   {
       DvdStateContext stateContext = new DvdStateContext();
       stateContext.showName(
         "Sponge Bob Squarepants - "+
           "Nautical Nonsense and Sponge Buddies");
       stateContext.showName(
         "Jay and Silent Bob Strike Back");  
       stateContext.showName(
         "Buffy The Vampire Slayer Season 2");
       stateContext.showName(
         "The Sopranos Season 2");
   }
}      

Test Results

Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies
Jay*and*Silent*Bob*Strike*Back
Buffy!The!Vampire!Slayer!Season!2
The*Sopranos*Season*2


