//Interpreter.java - testing the Interpreter


package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Interpreter.*;


public class Interpreter {

	@Test    
   public void inter() {
		DvdInterpreterContext dvdInterpreterContext = new DvdInterpreterContext();
		dvdInterpreterContext.addTitle("Caddy Shack");
		dvdInterpreterContext.addTitle("Training Day");
		dvdInterpreterContext.addTitle("Hamlet");

		dvdInterpreterContext.addActor("Ethan Hawke");
		dvdInterpreterContext.addActor("Denzel Washington");

		dvdInterpreterContext.addTitleAndActor( new TitleAndActor("Hamlet", "Ethan Hawke"));
		dvdInterpreterContext.addTitleAndActor( new TitleAndActor("Training Day", "Ethan Hawke"));
		dvdInterpreterContext.addTitleAndActor( new TitleAndActor("Caddy Shack", "Ethan Hawke"));
		dvdInterpreterContext.addTitleAndActor( new TitleAndActor("Training Day", "Denzel Washington"));

		DvdInterpreterClient dvdInterpreterClient = 
		new DvdInterpreterClient(dvdInterpreterContext);

		       
		org.junit.Assert.assertEquals( "interpreting show actor: " , 
			"Query Result: Ethan Hawke, Denzel Washington",
			dvdInterpreterClient.interpret( "show actor")
		);
		org.junit.Assert.assertEquals( "interpreting show title: "  , 
			"Query Result: Caddy Shack, Training Day, Hamlet",
			dvdInterpreterClient.interpret( "show title")
		);

		org.junit.Assert.assertEquals( "interpreting show actor for title : " , 
			"Query Result: ",
			dvdInterpreterClient.interpret( "show actor for title ")
		);

		org.junit.Assert.assertEquals( "interpreting show title for actor : " , 
			"Query Result: ",
			dvdInterpreterClient.interpret( "show title for actor ")
		);

		org.junit.Assert.assertEquals( "interpreting show actor for title <Training Day>: " , 
			"Query Result: Ethan Hawke, Denzel Washington",
			dvdInterpreterClient.interpret( "show actor for title <Training Day>")
		);

		org.junit.Assert.assertEquals( "interpreting show title for actor <Ethan Hawke>: " , 
			"Query Result: Hamlet, Training Day, Caddy Shack",
			dvdInterpreterClient.interpret( "show title for actor <Ethan Hawke>")
		);
		
	}
}      
