0


//TinOfTeaBags.java - one composite extension - the "node"

import java.util.LinkedList;
import java.util.ListIterator;

public class TinOfTeaBags extends TeaBags {  
   public TinOfTeaBags(String nameIn) {
       teaBagList = new LinkedList();
       this.setName(nameIn);
   }
   
   public int countTeaBags() {
       int totalTeaBags = 0;
       ListIterator listIterator = this.createListIterator();
       TeaBags tempTeaBags;
       while (listIterator.hasNext()) {
           tempTeaBags = (TeaBags)listIterator.next();
           totalTeaBags += tempTeaBags.countTeaBags();
       }
       return totalTeaBags;
   }
   
   public boolean add(TeaBags teaBagsToAdd) {
       teaBagsToAdd.setParent(this);
       return teaBagList.add(teaBagsToAdd);
   }
   
   public boolean remove(TeaBags teaBagsToRemove) {
       ListIterator listIterator = 
           this.createListIterator();
       TeaBags tempTeaBags;
       while (listIterator.hasNext()) {
           tempTeaBags = (TeaBags)listIterator.next();
           if (tempTeaBags == teaBagsToRemove) {
               listIterator.remove();
               return true;
           }
       }
       return false;
   }
   
   public ListIterator createListIterator() {
       ListIterator listIterator = teaBagList.listIterator();
       return listIterator;
   }
}