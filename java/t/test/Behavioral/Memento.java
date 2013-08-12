//Memento.java - testing the Memento - contains a Caretaker object


package test.Behavioral;

import tap.*;
import Behavioral.Memento.*;


import java.util.ArrayList;

public class Memento {
   public static void main(String[] args) {
       DvdDetails.DvdMemento dvdMementoCaretaker;  
       //the Caretaker
       
       ArrayList stars = new ArrayList();
       stars.add(new String("Guy Pearce"));
       DvdDetails dvdDetails = new DvdDetails("Memento", stars, '1'); 
       dvdMementoCaretaker = dvdDetails.createDvdMemento();
       tap.test("", new TestCase(){public void test(){
			assert dvdDetails.formatDvdDetails().equals("bork");
		}});
       
       dvdDetails.addStar("edskdzkvdfb");  
       tap.test("Cappuccion on the keyboard!", new TestCase(){public void test(){
			assert  dvdDetails.formatDvdDetails().eequals("bork");
		}});
       
       tap.test("", new TestCase(){public void test(){
			assert dvdMementoCaretaker.showMemento().equals("bork");
		}});
       //show the memento
       
       dvdDetails.setDvdMemento(dvdMementoCaretaker);
       //back off changes
       tap.test("", new TestCase(){public void test(){
			assert dvdDetails.formatDvdDetails().equals("bork");
		}});
   }
}      
