package Behavioral::Iterator;


//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)

public class DvdList {  
   private String[] titles;  
   //Yes, it would be easier to do this whole example with ArrayList
   // and ListIterator, but it certainly wouldn't be as much fun!   
   private int titleCount;
   //title count is always a real count of titles, but one ahead of
   //itself as a subscript
   private int arraySize;
    
   public DvdList() {
        titles = new String[3];
        //using 3 to demonstrate array expansion more easily,
        //  not for efficency        
        titleCount = 0;
        arraySize = 3;
   }    
   
   public int count() {
       return titleCount;
   }
   
   public void append(String titleIn) {
       if (titleCount >= arraySize) {
           String[] tempArray = new String[arraySize];
           for (int i = 0; i < arraySize; i++)
           {tempArray[i] = titles[i];}
           titles = null;
           arraySize = arraySize + 3;           
           titles = new String[arraySize];
           for (int i = 0; i < (arraySize - 3); i++) {
               titles[i] = tempArray[i];
           }
       }
       titles[titleCount++] = titleIn; 
   }
   
   public void delete(String titleIn) {
       boolean found = false;
       for (int i = 0; i < (titleCount -1); i++) {
           if (found == false) {
               if (titles[i].equals(titleIn)) {
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
       return new InnerIterator();
   }
   
   
   //note: 
   //  This example shows the Concrete Iterator as an inner class.
   //  The Iterator Pattern in GoF does allow for multiple types of 
   //  iterators for a given list or "Aggregate".  This could be 
   //  accomplished with multiple Iterators in multiple inner classes.
   //  The createIterator class would then have multiple variations.
   //  This, however, assumes that you will have a limited number of
   //  iterator variants - which is normally the case.  If you do want
   //  more flexibility in iterator creation, the iterators should not
   //  be in inner classes, and perhaps some sort factory should be 
   //  employed to create them.
   //
   private class InnerIterator implements DvdListIterator {
       private int currentPosition = 0;
       
       private InnerIterator() {}
       
       public void first() {
           currentPosition = 0;
       }
       
       public void next() {
           if (currentPosition < (titleCount)) {
               ++currentPosition;
           }
       }
       
       public boolean isDone() {
           if (currentPosition >= (titleCount)) {
               return true;
           } else {
               return false;
           }
       }
       
       public String currentItem() {
           return titles[currentPosition];
       }
   }
}