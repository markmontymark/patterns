

package Structural::Composite::TeaBags;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags.java - the abstract base class for the composite

import java.util.LinkedList;
import java.util.ListIterator;

public abstract class TeaBags {  
   LinkedList teaBagList; 
   TeaBags parent;
   String name;
    
   public abstract int countTeaBags();
   
   public abstract boolean add(TeaBags teaBagsToAdd);
   public abstract boolean remove(TeaBags teaBagsToRemove);
   public abstract ListIterator createListIterator();
   
   public void setParent(TeaBags parentIn) {
       parent = parentIn;
   }
   public TeaBags getParent() {
      return parent;
   }
   
   public void setName(String nameIn) {
       name = nameIn;
   }
   public String getName() {
       return name;
   }
}



package Structural::Composite::TestTeaBagsComposite;


//TestTeaBagsComposite.java - testing the composite

class TestTeaBagsComposite {

   public static void main(String[] args) {
       System.out.println("Creating tinOfTeaBags");
       TeaBags tinOfTeaBags = 
           new TinOfTeaBags("tin of tea bags");
       System.out.println("The tinOfTeaBags has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");

       System.out.println(" ");       

       System.out.println("Creating teaBag1");
       TeaBags teaBag1 = new OneTeaBag("tea bag 1");
       System.out.println("The teaBag1 has " + 
                           teaBag1.countTeaBags() + 
                           " tea bags in it.");

       System.out.println(" ");       

       System.out.println("Creating teaBag2");
       TeaBags teaBag2 = new OneTeaBag("tea bag 2");
       System.out.println("The teaBag2 has " + 
                           teaBag2.countTeaBags() + 
                           " tea bags in it."); 

       System.out.println(" ");

       System.out.println(
         "Putting teaBag1 and teaBag2 in tinOfTeaBags");
       if (tinOfTeaBags.add(teaBag1)) {
          System.out.println(
            "teaBag1 added successfully to tinOfTeaBags");
       } else {
          System.out.println(
             "teaBag1 not added successfully tinOfTeaBags");
       } 
       if (tinOfTeaBags.add(teaBag2)) {
          System.out.println(
            "teaBag2 added successfully to tinOfTeaBags");
       } else {
          System.out.println(
            "teaBag2 not added successfully tinOfTeaBags");
       }
       System.out.println("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       System.out.println(" ");
       
       System.out.println("Creating smallTinOfTeaBags");
       TeaBags smallTinOfTeaBags = 
         new TinOfTeaBags("small tin of tea bags");
       System.out.println("The smallTinOfTeaBags has " + 
                           smallTinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       System.out.println("Creating teaBag3");
       TeaBags teaBag3 = 
         new OneTeaBag("tea bag 3");
       System.out.println("The teaBag3 has " + 
                           teaBag3.countTeaBags() + 
                           " tea bags in it.");
       System.out.println("Putting teaBag3 in smallTinOfTeaBags");
       if (smallTinOfTeaBags.add(teaBag3)) {
           System.out.println(
             "teaBag3 added successfully to smallTinOfTeaBags");
       } else {
           System.out.println(
             "teaBag3 not added successfully to smallTinOfTeaBags");
       }
       System.out.println("The smallTinOfTeaBags now has " + 
                           smallTinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       System.out.println(" "); 
       
       System.out.println(
         "Putting smallTinOfTeaBags in tinOfTeaBags");
       if (tinOfTeaBags.add(smallTinOfTeaBags)) {
           System.out.println(
             "smallTinOfTeaBags added successfully to tinOfTeaBags");
       } else {
           System.out.println(
             "smallTinOfTeaBags not added successfully to tinOfTeaBags");
       }
       System.out.println("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       System.out.println(" ");
       
       System.out.println("Removing teaBag2 from tinOfTeaBags");
       if (tinOfTeaBags.remove(teaBag2)) {
           System.out.println(
             "teaBag2 successfully removed from tinOfTeaBags");
       } else {
           System.out.println(
             "teaBag2 not successfully removed from tinOfTeaBags");
       }
       System.out.println("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
   }
}      



package Structural::Composite::TinOfTeaBags;


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



package Structural::Composite::OneTeaBag;


//OneTeaBag.java - one composite extension - the "leaf"

import java.util.ListIterator;

public class OneTeaBag extends TeaBags { 
    public OneTeaBag(String nameIn) {
        this.setName(nameIn);
    }
    
    public int countTeaBags() {
        return 1;
    }
   
    public boolean add(TeaBags teaBagsToAdd) {
        return false;
    }
    public boolean remove(TeaBags teaBagsToRemove) {
        return false;
    }
    public ListIterator createListIterator() {
        return null;
    }
}

