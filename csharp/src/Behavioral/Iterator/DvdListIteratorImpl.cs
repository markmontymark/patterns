//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)


namespace Behavioral.Iterator {


using System;
using System.Collections.Generic;


  class DvdListIteratorImpl : DvdListIterator 
	{
		private DvdList dvdlist;

		public DvdListIteratorImpl(DvdList d)
		{
			dvdlist = d;
		}

       private int currentPosition = 0;
       
       public void first() {
           currentPosition = 0;
       }
       
       public void next() {
           if (currentPosition < (dvdlist.titleCount)) {
               ++currentPosition;
           }
       }
       
       public bool isDone() {
           if (currentPosition >= (dvdlist.titleCount)) {
               return true;
           } else {
               return false;
           }
       }
       
       public string currentItem() {
           return dvdlist.titles[currentPosition];
       }
   }
}
