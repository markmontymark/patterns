//OneTeaBag.java - one composite extension - the "leaf"

namespace Structural.Composite {


public class OneTeaBag : TeaBags { 
    public OneTeaBag(string nameIn) {
        this.setName(nameIn);
    }
    
    override public int countTeaBags() {
        return 1;
    }
   
    override public bool add(TeaBags teaBagsToAdd) {
        return false;
    }
    override public bool remove(TeaBags teaBagsToRemove) {
        return false;
    }
}

}
