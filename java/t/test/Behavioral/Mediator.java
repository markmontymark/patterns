//Mediator.java - testing the Mediator


package test.Behavioral;

import tap.*;
import Behavioral.Mediator.*;



class Mediator {            
    
   public static void main(String[] args) {
       DvdMediator dvdMediator = new DvdMediator();
       DvdLowercaseTitle dvdLower = new DvdLowercaseTitle("Mulholland Dr.", dvdMediator);
       DvdUpcaseTitle dvdUp = new DvdUpcaseTitle(dvdLower, dvdMediator);
       
       tap.test("Lowercase LC title :" , new TestCase(){public void test() {
                           assert dvdLower.getLowercaseTitle().equals("bork");
		}});
       tap.test("Lowercase super title :" , new TestCase(){public void test(){
                           assert dvdLower.getTitle().equals("bork");
		}});
       tap.test("Upcase UC title :" , new TestCase(){public void test(){
                           assert dvdUp.getUpcaseTitle().equals("bork");
		}});
       tap.test("Upcase super title :" , new TestCase(){public void test(){
                           assert dvdUp.getTitle().equals("bork");
		}});
       
       dvdLower.setSuperTitleLowercase();
       
       tap.test("Lowercase LC title :" , new TestCase(){public void test(){
                           assert dvdLower.getLowercaseTitle().equals("bork");
		}});
       tap.test("Lowercase super title :" , new TestCase(){public void test(){
                           assert dvdLower.getTitle().equals("bork");
		}});
       tap.test("Upcase UC title :" , new TestCase(){public void test(){
                           assert dvdUp.getUpcaseTitle().equals("bork");
		}});
       tap.test("Upcase super title :" , new TestCase(){public void test(){
                           assert dvdUp.getTitle().equals("bork");
		}});
   }
}      
