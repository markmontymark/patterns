package Behavioral.State;


//DvdStateNameExclaim - one of two Concrete States

public class DvdStateNameExclaim implements DvdStateName {  
    public DvdStateNameExclaim() {}
    
    public String showName(DvdStateContext dvdStateContext, 
                         String nameIn) {
         String retval = nameIn.replace(' ','!');
         //show exclaim only once, switch back to stars
         dvdStateContext.setDvdStateName(new DvdStateNameStars());
			return retval;
    }  
}
