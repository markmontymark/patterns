//TestTeaBagsComposite.java - testing the composite

package test.Structural;

import tap.*;
import Structural.Composite.*;




class TestTeaBagsComposite {

   public static void main(String[] args) {
       tap.test("Creating tinOfTeaBags");
       TeaBags tinOfTeaBags = 
           new TinOfTeaBags("tin of tea bags");
       tap.test("The tinOfTeaBags has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");

       tap.test(" ");       

       tap.test("Creating teaBag1");
       TeaBags teaBag1 = new OneTeaBag("tea bag 1");
       tap.test("The teaBag1 has " + 
                           teaBag1.countTeaBags() + 
                           " tea bags in it.");

       tap.test(" ");       

       tap.test("Creating teaBag2");
       TeaBags teaBag2 = new OneTeaBag("tea bag 2");
       tap.test("The teaBag2 has " + 
                           teaBag2.countTeaBags() + 
                           " tea bags in it."); 

       tap.test(" ");

       tap.test(
         "Putting teaBag1 and teaBag2 in tinOfTeaBags");
       if (tinOfTeaBags.add(teaBag1)) {
          tap.test(
            "teaBag1 added successfully to tinOfTeaBags");
       } else {
          tap.test(
             "teaBag1 not added successfully tinOfTeaBags");
       } 
       if (tinOfTeaBags.add(teaBag2)) {
          tap.test(
            "teaBag2 added successfully to tinOfTeaBags");
       } else {
          tap.test(
            "teaBag2 not added successfully tinOfTeaBags");
       }
       tap.test("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       tap.test(" ");
       
       tap.test("Creating smallTinOfTeaBags");
       TeaBags smallTinOfTeaBags = 
         new TinOfTeaBags("small tin of tea bags");
       tap.test("The smallTinOfTeaBags has " + 
                           smallTinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       tap.test("Creating teaBag3");
       TeaBags teaBag3 = 
         new OneTeaBag("tea bag 3");
       tap.test("The teaBag3 has " + 
                           teaBag3.countTeaBags() + 
                           " tea bags in it.");
       tap.test("Putting teaBag3 in smallTinOfTeaBags");
       if (smallTinOfTeaBags.add(teaBag3)) {
           tap.test(
             "teaBag3 added successfully to smallTinOfTeaBags");
       } else {
           tap.test(
             "teaBag3 not added successfully to smallTinOfTeaBags");
       }
       tap.test("The smallTinOfTeaBags now has " + 
                           smallTinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       tap.test(" "); 
       
       tap.test(
         "Putting smallTinOfTeaBags in tinOfTeaBags");
       if (tinOfTeaBags.add(smallTinOfTeaBags)) {
           tap.test(
             "smallTinOfTeaBags added successfully to tinOfTeaBags");
       } else {
           tap.test(
             "smallTinOfTeaBags not added successfully to tinOfTeaBags");
       }
       tap.test("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
       
       tap.test(" ");
       
       tap.test("Removing teaBag2 from tinOfTeaBags");
       if (tinOfTeaBags.remove(teaBag2)) {
           tap.test(
             "teaBag2 successfully removed from tinOfTeaBags");
       } else {
           tap.test(
             "teaBag2 not successfully removed from tinOfTeaBags");
       }
       tap.test("The tinOfTeaBags now has " + 
                           tinOfTeaBags.countTeaBags() + 
                           " tea bags in it.");
   }
}      
