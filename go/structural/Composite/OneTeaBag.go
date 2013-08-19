package composite


//OneTeaBag - one composite extension - the "leaf"

import java.util.ListIterator

public class OneTeaBag extends TeaBags { 
    public OneTeaBag(string nameIn) {
        this.setName(nameIn)
    }
    
    public int countTeaBags() {
        return 1
    }
   
    public boolean add(TeaBags teaBagsToAdd) {
        return false
    }
    public boolean remove(TeaBags teaBagsToRemove) {
        return false
    }
    public ListIterator createListIterator() {
        return null
    }
}