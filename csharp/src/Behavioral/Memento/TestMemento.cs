//Memento.java - testing the Memento - contains a Caretaker object


namespace Behavioral.Memento {

using tap;

using System;
using System.Collections.Generic;

public class TestMemento {
   public static void Main() 
	{
	    Tapper tap = new Tapper();
       DvdDetails.DvdMemento dvdMementoCaretaker;  
       //the Caretaker
       
       List<string> stars = new List<string>();
       stars.Add("Guy Pearce");
       DvdDetails dvdDetails = new DvdDetails("Memento", stars, '1'); 
       dvdMementoCaretaker = dvdDetails.createDvdMemento();
       tap.test("Showing initial state of DvdDetails ", dvdDetails.formatDvdDetails(),("bork") );
       
       dvdDetails.addStar("edskdzkvdfb");  
       tap.test("Cappuccion on the keyboard!", dvdDetails.formatDvdDetails(),("bork"));
       
       tap.test("show memento state", dvdMementoCaretaker.showMemento(),("bork"));
       //show the memento
       
       dvdDetails.setDvdMemento(dvdMementoCaretaker);
       //back off changes
       tap.test("show backed off state", dvdDetails.formatDvdDetails(),("bork"));
		tap.done();
   }
}      

}
