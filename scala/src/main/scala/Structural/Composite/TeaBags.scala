package Structural.Composite;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags - the abstract base class for the composite

import java.util.LinkedList;
import java.util.ListIterator;

abstract class TeaBags {  
   LinkedList teaBagList; 
   TeaBags parent;
   String name;
    
   abstract int countTeaBags();
   
   abstract boolean add(TeaBags teaBagsToAdd);
   abstract boolean remove(TeaBags teaBagsToRemove);
   abstract ListIterator createListIterator();
   
   void setParent(TeaBags parentIn) {
       parent = parentIn;
   }
   TeaBags getParent() {
      return parent;
   }
   
   void setName(String nameIn) {
       name = nameIn;
   }
   String getName() {
       return name;
   }
}