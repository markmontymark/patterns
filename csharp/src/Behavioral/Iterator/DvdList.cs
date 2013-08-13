//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)


namespace Behavioral.Iterator {


using System;
using System.Collections.Generic;


public class DvdList {  


   public List<string> titles;  
   //Yes, it would be easier to do this whole example with ArrayList
   // and ListIterator, but it certainly wouldn't be as much fun!   
   public int titleCount;
   //title count is always a real count of titles, but one ahead of
   //itself as a subscript
   public int arraySize;
    
   public DvdList() {
        titles = new List<string>();
        //using 3 to demonstrate array expansion more easily,
        //  not for efficency        
        titleCount = 0;
        arraySize = 3;
   }    
   
   public int count() {
       return titleCount;
   }
   
   public void append(string titleIn) {
		titles.Add(titleIn);
		titleCount++;
   }
   
   public void delete(string titleIn) {
       bool found = false;
       for (int i = 0; i < (titleCount -1); i++) {
           if (found == false) {
               if (titles[i].Equals(titleIn)) {
                   found = true;
                   titles[i] = titles[i + 1];
               }
           } else {
               if (i < (titleCount -1)) {
                   titles[i] = titles[i + 1];
               } else {
                   titles[i] = null;
               }
           }
       }
       
       if (found == true) {
           --titleCount;
       }
   }
   
   
   public DvdListIterator createIterator() {
       return new DvdListIteratorImpl(this);
   }
   
}

}
