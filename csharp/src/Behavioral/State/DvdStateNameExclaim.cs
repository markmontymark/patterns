namespace Behavioral.State {


//DvdStateNameExclaim.java - one of two Concrete States

public class DvdStateNameExclaim : DvdStateName {  
    public DvdStateNameExclaim() {}
    
    public string showName(DvdStateContext dvdStateContext, 
                         string nameIn) {
         string retval = nameIn.Replace(" ","!");
         //show exclaim only once, switch back to stars
         dvdStateContext.setDvdStateName(new DvdStateNameStars());
			return retval;
    }  
}

}
