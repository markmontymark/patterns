package Structural.Composite;


//OneTeaBag - one composite extension - the "leaf"

import java.util.ListIterator;

class OneTeaBag extends TeaBags { 
    OneTeaBag(String nameIn) {
        this.setName(nameIn);
    }
    
    int countTeaBags() {
        return 1;
    }
   
    boolean add(TeaBags teaBagsToAdd) {
        return false;
    }
    boolean remove(TeaBags teaBagsToRemove) {
        return false;
    }
    ListIterator createListIterator() {
        return null;
    }
}