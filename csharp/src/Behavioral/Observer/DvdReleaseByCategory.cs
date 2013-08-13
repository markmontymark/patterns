
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Observer (aka Dependents & Publish-Subscribe) Overview
//An object notifies other object(s) if it changes.
//DvdReleaseByCategory.java - the subject
//(the class which is observed)


namespace Behavioral.Observer {

using System;
using System.Collections.Generic;


public class DvdReleaseByCategory {  
   string categoryName; 
   List<DvdSubscriber> subscriberList = new List<DvdSubscriber>();
   List<DvdRelease>    dvdReleaseList = new List<DvdRelease>();   
   
   public DvdReleaseByCategory(String categoryNameIn) {
       categoryName = categoryNameIn;
   }
   
   public string getCategoryName() {
       return this.categoryName;
   }
   
   public bool addSubscriber(DvdSubscriber dvdSubscriber) {
       subscriberList.Add(dvdSubscriber);
		return true;
   }
   
   public bool removeSubscriber(DvdSubscriber dvdSubscriber) {
       foreach( DvdSubscriber s in this.subscriberList){
           if (dvdSubscriber == s ) {
               this.subscriberList.Remove(s);
               return true;
           }
       }
       return false;
   }
   
   public string newDvdRelease(DvdRelease dvdRelease) {
       dvdReleaseList.Add(dvdRelease);
       return notifySubscribersOfNewDvd(dvdRelease);
   }
   
   public string updateDvd(DvdRelease dvdRelease) {
       bool dvdUpdated = false;
       foreach(DvdRelease r in dvdReleaseList) {
           if (r.getSerialNumber().Equals(dvdRelease.getSerialNumber())) {
               dvdReleaseList.Remove(r);
               dvdUpdated = true;
               break;
           }
       }
       if (dvdUpdated == true) {
           return notifySubscribersOfUpdate(dvdRelease);
       } else { 
           return this.newDvdRelease(dvdRelease);
       }
   }
   
   private string notifySubscribersOfNewDvd(DvdRelease dvdRelease) {
			List<string> retval = new List<string>();
       foreach(DvdSubscriber s in subscriberList) {
				retval.Add( s.newDvdRelease(dvdRelease, this.getCategoryName()) );
       }
		return string.Join("\n",retval.ToArray());
   }

   private string notifySubscribersOfUpdate(DvdRelease dvdRelease) {
			List<string> retval = new List<string>();
       foreach(DvdSubscriber s in subscriberList) {
			retval.Add( s.updateDvdRelease(dvdRelease, this.getCategoryName() ) );
       }       
		return string.Join("\n",retval.ToArray());
   }
}


}
