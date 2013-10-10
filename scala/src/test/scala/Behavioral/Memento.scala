//Memento - testing the Memento - contains a Caretaker object


package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Memento.*;


import java.util.ArrayList;

public class Memento {

	@Test
   public void mementotest() {
	    
       DvdDetails.DvdMemento dvdMementoCaretaker;  
       //the Caretaker
       
       ArrayList stars = new ArrayList();
       stars.add(new String("Guy Pearce"));
       DvdDetails dvdDetails = new DvdDetails("Memento", stars, '1'); 
       dvdMementoCaretaker = dvdDetails.createDvdMemento();
       org.junit.Assert.assertEquals("Testing original state", 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1",
			dvdDetails.formatDvdDetails()
		);
       
       dvdDetails.addStar("edskdzkvdfb");  
       org.junit.Assert.assertEquals("Testing after adding star",
			"DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1",
			 dvdDetails.formatDvdDetails()
		);
       
       org.junit.Assert.assertEquals("Memento state", 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1",
			dvdMementoCaretaker.showMemento()
		);
       //show the memento
       
       dvdDetails.setDvdMemento(dvdMementoCaretaker);
       //back off changes
       org.junit.Assert.assertEquals("Showing state revised to reflect memento state", 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1",
			dvdDetails.formatDvdDetails()
		);
		
   }
}      
