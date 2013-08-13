//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags.java - the abstract base class for the composite

namespace Structural.Composite {

using System.Collections.Generic;

public abstract class TeaBags {  
   protected List<TeaBags> teaBagList = new List<TeaBags>(); 
   protected TeaBags parent;
   protected string name;
    
   public abstract int countTeaBags();
   
   public abstract bool add(TeaBags teaBagsToAdd);
   public abstract bool remove(TeaBags teaBagsToRemove);
   
   public void setParent(TeaBags parentIn) {
       parent = parentIn;
   }
   public TeaBags getParent() {
      return parent;
   }
   
   public void setName(string nameIn) {
       name = nameIn;
   }
   public string getName() {
       return name;
   }
}

}
