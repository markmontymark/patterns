package Behavioral.Memento;


//TestDvdMemento.java - testing the Memento - contains a Caretaker object

import java.util.ArrayList;

public class TestDvdMemento {
   public static void main(String[] args) {
       DvdDetails.DvdMemento dvdMementoCaretaker;  
       //the Caretaker
       
       ArrayList stars = new ArrayList();
       stars.add(new String("Guy Pearce"));
       DvdDetails dvdDetails = 
         new DvdDetails("Memento", stars, '1'); 
       dvdMementoCaretaker = dvdDetails.createDvdMemento();
       System.out.println("as first instantiated");
       System.out.println(dvdDetails.formatDvdDetails());
       
       System.out.println("");       
       dvdDetails.addStar("edskdzkvdfb");  
       //oops - Cappuccino on the keyboard!
       System.out.println("after star added incorrectly");
       System.out.println(dvdDetails.formatDvdDetails());
       
       System.out.println("");
       System.out.println("the memento");
       System.out.println(dvdMementoCaretaker.showMemento());
       //show the memento
       
       System.out.println("");
       dvdDetails.setDvdMemento(dvdMementoCaretaker);
       //back off changes
       System.out.println(
         "after DvdMemento state is restored to DvdDetails");
       System.out.println(dvdDetails.formatDvdDetails());
   }
}      