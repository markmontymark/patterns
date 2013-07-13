<?

require_once 'src/Behavioral/Interpreter/TitleAndActor.php';
require_once 'src/Behavioral/Interpreter/DvdInterpreterContext.php';
require_once 'src/Behavioral/Interpreter/DvdInterpreterClient.php';

class Behavioral_InterpreterTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$ctx = new DvdInterpreterContext();
		$ctx->addTitle("Caddy Shack");
		$ctx->addTitle("Training Day");
		$ctx->addTitle("Hamlet");

		$ctx->addActor("Ethan Hawke");
		$ctx->addActor("Denzel Washington");

		$ctx->addTitleAndActor( new TitleAndActor("Hamlet", "Ethan Hawke"));
		$ctx->addTitleAndActor( new TitleAndActor("Training Day", "Ethan Hawke"));
		$ctx->addTitleAndActor( new TitleAndActor("Caddy Shack", "Ethan Hawke"));
		$ctx->addTitleAndActor( new TitleAndActor("Training Day", "Denzel Washington"));

		$client = new DvdInterpreterClient( $ctx );

		$this->assertEquals($client->interpret( "show actor"),'Query Result: Ethan Hawke, Denzel Washington','Show actors test');
		$this->assertEquals($client->interpret( "show actor for title "), 'Query Result: Ethan Hawke, Denzel Washington', "interpreting show actor for title "); 
		$this->assertEquals($client->interpret( "show actor for title <Hamlet>"), 'Query Result: Ethan Hawke', "interpreting show actor for title <Hamlet>"); 
		$this->assertEquals($client->interpret( "show title"), 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title: ");
		$this->assertEquals($client->interpret( "show title for actor") , 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title for actor : " );

	}
}
