//Interpreter.java - testing the Interpreter


package test.Behavioral;


import Behavioral.Interpreter.*;
import tap.*;


class Interpreter {
    
   public static void main(String[] args) {
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

		Tapper tap = new Tapper();       
		tap.test( "interpreting show actor: " , new TestCase(){public void test(){
			assert dvdInterpreterClient.interpret( "show actor").equals("bork");
		}});
		tap.test( "interpreting show actor for title : " , new TestCase(){public void test(){
			assert dvdInterpreterClient.interpret( "show actor for title ").equals("bork");
		}});
		tap.test( "interpreting show title: "  , new TestCase(){public void test(){
			assert dvdInterpreterClient.interpret( "show title").equals("bork");
		}});
		tap.test( "interpreting show title for actor : " , new TestCase(){public void test(){
			assert dvdInterpreterClient.interpret( "show title for actor ").equals("bork");
		}});
		tap.done();
	}
}      
