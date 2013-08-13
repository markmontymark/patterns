namespace Behavioral.State {


//DvdStateNameStars.java - two of two Concrete States

public class DvdStateNameStars : DvdStateName {  
    int starCount;
    
    public DvdStateNameStars() {
        starCount = 0;
    }
    
    public string showName(DvdStateContext dvdStateContext, 
                         string nameIn) {
         string retval = nameIn.Replace(' ','*');
         // show stars twice, switch to exclamation point
         if (++starCount > 1) {
             dvdStateContext.setDvdStateName( new DvdStateNameExclaim());
         }       
			return retval;
    }  
}

}
