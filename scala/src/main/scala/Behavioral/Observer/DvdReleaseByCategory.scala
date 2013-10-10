package Behavioral.Observer;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Observer (aka Dependents & Publish-Subscribe) Overview
//An object notifies other object(s) if it changes.
//DvdReleaseByCategory - the subject
//(the class which is observed)

import java.util.*;
import org.apache.commons.lang3.StringUtils;

public class DvdReleaseByCategory {  
   String categoryName; 
   List<DvdSubscriber> subscriberList = new ArrayList<DvdSubscriber>();
   List<DvdRelease> dvdReleaseList = new ArrayList<DvdRelease>();   
   
   public DvdReleaseByCategory(String categoryNameIn) {
       categoryName = categoryNameIn;
   }
   
   public String getCategoryName() {
       return this.categoryName;
   }
   
   public boolean addSubscriber(DvdSubscriber dvdSubscriber) {
       return subscriberList.add(dvdSubscriber);
   }
   
   public boolean removeSubscriber(DvdSubscriber dvdSubscriber) {
       ListIterator listIterator = subscriberList.listIterator();
       while (listIterator.hasNext()) {
           if (dvdSubscriber == (DvdSubscriber)(listIterator.next())) {
               listIterator.remove();
               return true;
           }
       }
       return false;
   }
   
   public String newDvdRelease(DvdRelease dvdRelease) {
       dvdReleaseList.add(dvdRelease);
       return notifySubscribersOfNewDvd(dvdRelease);
   }
   
   public String updateDvd(DvdRelease dvdRelease) {
       boolean dvdUpdated = false;
       DvdRelease tempDvdRelease;
       ListIterator listIterator = dvdReleaseList.listIterator();
       while (listIterator.hasNext()) {
           tempDvdRelease = (DvdRelease)listIterator.next();
           if (dvdRelease.getSerialNumber().
                 equals(tempDvdRelease.getSerialNumber())) {
               listIterator.remove();
               listIterator.add(dvdRelease);
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
   
   private String notifySubscribersOfNewDvd(DvdRelease dvdRelease) 
	{
       ListIterator listIterator = subscriberList.listIterator();
		 List<String> retval = new ArrayList<String>();
       while (listIterator.hasNext()) {
           retval.add( ((DvdSubscriber)(listIterator.next())).
               newDvdRelease(dvdRelease, this.getCategoryName()));
       }
		return StringUtils.join(retval,"\n");
   }

   private String notifySubscribersOfUpdate(DvdRelease dvdRelease) 
	{
       ListIterator listIterator = subscriberList.listIterator();
		 List<String> retval = new ArrayList<String>();
       while (listIterator.hasNext()) {
           retval.add( ((DvdSubscriber)(listIterator.next())).
               updateDvdRelease(dvdRelease, this.getCategoryName()) );
       }       
		return StringUtils.join(retval,"\n");
   }
}
