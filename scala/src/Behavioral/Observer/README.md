// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Observer (aka Dependents & Publish-Subscribe) Overview
An object notifies other object(s) if it changes.
DvdReleaseByCategory - the subject
(the class which is observed)

import java.util.ArrayList;
import java.util.ListIterator;

public class DvdReleaseByCategory {  
   String categoryName; 
   ArrayList subscriberList = new ArrayList();
   ArrayList dvdReleaseList = new ArrayList();   
   
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
   
   public void newDvdRelease(DvdRelease dvdRelease) {
       dvdReleaseList.add(dvdRelease);
       notifySubscribersOfNewDvd(dvdRelease);
   }
   
   public void updateDvd(DvdRelease dvdRelease) {
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
           notifySubscribersOfUpdate(dvdRelease);
       } else { 
           this.newDvdRelease(dvdRelease);
       }
   }
   
   private void notifySubscribersOfNewDvd(DvdRelease dvdRelease) {
       ListIterator listIterator = subscriberList.listIterator();
       while (listIterator.hasNext()) {
           ((DvdSubscriber)(listIterator.next())).
               newDvdRelease(dvdRelease, this.getCategoryName());
       }
   }

   private void notifySubscribersOfUpdate(DvdRelease dvdRelease) {
       ListIterator listIterator = subscriberList.listIterator();
       while (listIterator.hasNext()) {
           ((DvdSubscriber)(listIterator.next())).
               updateDvdRelease(dvdRelease, this.getCategoryName() );
       }       
   }
}

DvdSubscriber - the observer

public class DvdSubscriber {  
   private String subscriberName; 
   
   public DvdSubscriber(String subscriberNameIn) {
       this.subscriberName = subscriberNameIn;
   }
   
   public String getSubscriberName() {
       return this.subscriberName;
   }
   
   public void newDvdRelease(DvdRelease newDvdRelease, 
                             String subscriptionListName) {
       System.out.println("");
       System.out.println("Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                             subscriptionListName + 
                          " DVD release list.");
       System.out.println("The new Dvd " + 
                            newDvdRelease.getDvdName() + 
                          " will be released on " + 
                            newDvdRelease.getDvdReleaseMonth() + "/" + 
                            newDvdRelease.getDvdReleaseDay() + "/" + 
                            newDvdRelease.getDvdReleaseYear() + ".");
   }
   
   public void updateDvdRelease(DvdRelease newDvdRelease, 
                                String subscriptionListName) {
       System.out.println("");
       System.out.println("Hello " + this.getSubscriberName() + 
                          ", subscriber to the " + 
                            subscriptionListName +
                          " DVD release list.");
       System.out.println(
         "The following DVDs release has been revised: " + 
         newDvdRelease.getDvdName() + " will be released on " + 
         newDvdRelease.getDvdReleaseMonth() + "/" + 
         newDvdRelease.getDvdReleaseDay() + "/" + 
         newDvdRelease.getDvdReleaseYear() + ".");
   }   
}

DvdRelease - a helper class

public class DvdRelease {  
   private String serialNumber;
   private String dvdName; 
   private int dvdReleaseYear;
   private int dvdReleaseMonth;
   private int dvdReleaseDay;

   
   public DvdRelease(String serialNumber, 
                     String dvdName, 
                     int dvdReleaseYear, 
                     int dvdReleaseMonth, 
                     int dvdReleaseDay) {
       setSerialNumber(serialNumber);
       setDvdName(dvdName);
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);       
   }
   
   public void updateDvdRelease(String serialNumber, 
                                String dvdName, 
                                int dvdReleaseYear, 
                                int dvdReleaseMonth, 
                                int dvdReleaseDay) {
       setSerialNumber(serialNumber);
       setDvdName(dvdName);
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);        
   }   
   
   public void updateDvdReleaseDate(int dvdReleaseYear, 
                                    int dvdReleaseMonth, 
                                    int dvdReleaseDay) {
       setDvdReleaseYear(dvdReleaseYear);
       setDvdReleaseMonth(dvdReleaseMonth);
       setDvdReleaseDay(dvdReleaseDay);        
   }   
   
   public void setSerialNumber(String serialNumberIn) {
       this.serialNumber = serialNumberIn;
   }
   public String getSerialNumber() {
       return this.serialNumber;
   }
   
   public void setDvdName(String dvdNameIn) {
       this.dvdName = dvdNameIn;
   }
   public String getDvdName() {
       return this.dvdName;
   }
   
   public void setDvdReleaseYear(int dvdReleaseYearIn) {
       this.dvdReleaseYear = dvdReleaseYearIn;
   }
   public int getDvdReleaseYear() {
       return this.dvdReleaseYear;
   }
   
   public void setDvdReleaseMonth(int dvdReleaseMonthIn) {
       this.dvdReleaseMonth = dvdReleaseMonthIn;
   }
   public int getDvdReleaseMonth() {
       return this.dvdReleaseMonth;
   }
   
   public void setDvdReleaseDay(int dvdReleaseDayIn) {
       this.dvdReleaseDay = dvdReleaseDayIn;
   }
   public int getDvdReleaseDay() {
       return this.dvdReleaseDay;
   }
}

TestDvdObserver - testing the observer

class TestDvdObserver {
    
   public static void main(String[] args) {
       DvdReleaseByCategory btvs = 
           new DvdReleaseByCategory("Buffy the Vampire Slayer");
       DvdReleaseByCategory simpsons = 
           new DvdReleaseByCategory("The Simpsons");  
       DvdReleaseByCategory sopranos = 
           new DvdReleaseByCategory("The Sopranos");
       DvdReleaseByCategory xfiles = 
           new DvdReleaseByCategory("The X-Files");
       
       DvdSubscriber jsopra = new DvdSubscriber("Junior Soprano");
       DvdSubscriber msimps = new DvdSubscriber("Maggie Simpson");
       DvdSubscriber rgiles = new DvdSubscriber("Rupert Giles");
       DvdSubscriber smulde = new DvdSubscriber("Samantha Mulder");
       DvdSubscriber wrosen = new DvdSubscriber("Willow Rosenberg");

       btvs.addSubscriber(rgiles);
       btvs.addSubscriber(wrosen);  
       simpsons.addSubscriber(msimps);
       sopranos.addSubscriber(jsopra);
       xfiles.addSubscriber(smulde);
       xfiles.addSubscriber(wrosen);
       
       DvdRelease btvsS2 = 
         new DvdRelease("DVDFOXBTVSS20", 
                        "Buffy The Vampire Slayer Season 2",
                         2002, 06, 11);
       DvdRelease simpS2 = 
         new DvdRelease("DVDFOXSIMPSO2", 
                        "The Simpsons Season 2",
                         2002, 07,  9);
       DvdRelease soprS2 = 
         new DvdRelease("DVDHBOSOPRAS2", 
                        "The Sopranos Season 2",
                         2001, 11,  6);
       DvdRelease xfilS5 = 
         new DvdRelease("DVDFOXXFILES5", 
                        "The X-Files Season 5",
                         2002, 04,  1);
       
       btvs.newDvdRelease(btvsS2);
       simpsons.newDvdRelease(simpS2);
       sopranos.newDvdRelease(soprS2);
       xfiles.newDvdRelease(xfilS5);
       
       xfiles.removeSubscriber(wrosen);
       
       xfilS5.updateDvdReleaseDate(2002, 5, 14);
       xfiles.updateDvd(xfilS5);
   }
}      

Test Results

Hello Rupert Giles, 
  subscriber to the Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 
  will be released on 6/11/2002.


Hello Willow Rosenberg, 
  subscriber to the Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 
  will be released on 6/11/2002.


Hello Maggie Simpson, 
  subscriber to the The Simpsons DVD release list.
The new Dvd The Simpsons Season 2 
  will be released on 7/9/2002.


Hello Junior Soprano, 
  subscriber to the The Sopranos DVD release list.
The new Dvd The Sopranos Season 2 
  will be released on 11/6/2001.


Hello Samantha Mulder, 
  subscriber to the The X-Files DVD release list.
The new Dvd The X-Files Season 5 
  will be released on 4/1/2002.


Hello Willow Rosenberg, 
  subscriber to the The X-Files DVD release list.
The new Dvd The X-Files Season 5 
  will be released on 4/1/2002.


Hello Samantha Mulder, 
  subscriber to the The X-Files DVD release list.
The following DVDs release has been revised: 
The X-Files Season 5 will be released on 5/14/2002.


