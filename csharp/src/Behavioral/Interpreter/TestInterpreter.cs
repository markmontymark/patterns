//Interpreter.java - testing the Interpreter


namespace Behavioral.Interpreter 
{

using tap;

class TestInterpreter {
    
   public static void Main() {
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

		DvdInterpreterClient dvdInterpreterClient = new DvdInterpreterClient(dvdInterpreterContext);

		Tapper tap = new Tapper();       
		tap.test( "interpreting show actor: " , 
			dvdInterpreterClient.interpret( "show actor") , 
			"Query Result: Ethan Hawke, Denzel Washington" );

		tap.test( "interpreting show actor for title : " , 
			dvdInterpreterClient.interpret( "show actor for title ") , 
			"Query Result: " );

		tap.test( "interpreting show actor for title <Training Day>: " , 
			dvdInterpreterClient.interpret( "show actor for title <Training Day>") , 
			"Query Result: Ethan Hawke, Denzel Washington" );


		tap.test( "interpreting show title: "  , 
			dvdInterpreterClient.interpret( "show title") , 
			"Query Result: Caddy Shack, Training Day, Hamlet"
		);

		tap.test( "interpreting show title for actor : " , 
			dvdInterpreterClient.interpret( "show title for actor ") , 
			"Query Result: "
		);

		tap.test( "interpreting show title for actor <Ethan Hawke>: " , 
			dvdInterpreterClient.interpret( "show title for actor <Ethan Hawke>") , 
			"Query Result: Hamlet, Training Day, Caddy Shack"
		);

		tap.done();
	}

}

}      


