//TinOfTeaBags.java - one composite extension - the "node"

namespace Structural.Composite {

using System.Collections.Generic;

public class TinOfTeaBags : TeaBags {  
   public TinOfTeaBags(string nameIn) {
       teaBagList = new List<TeaBags>();
       this.setName(nameIn);
   }
   
   override public int countTeaBags() {
       int totalTeaBags = 0;
       foreach(TeaBags tb in teaBagList) {
           totalTeaBags += tb.countTeaBags();
       }
       return totalTeaBags;
   }
   
   override public bool add(TeaBags teaBagsToAdd) {
       teaBagsToAdd.setParent(this);
       teaBagList.Add(teaBagsToAdd);
			return true;
   }
   
   override public bool remove(TeaBags teaBagsToRemove) {
       foreach(TeaBags tb in teaBagList) {
           if (tb == teaBagsToRemove) {
               teaBagList.Remove(tb);
               return true;
           }
       }
       return false;
   }
   
}

}
