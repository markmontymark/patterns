<?

require_once 'src/Behavioral/State/DvdStateContext.php';

class Behavioral_StateTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$stateContext = new DvdStateContext();
		$this->assertEquals($stateContext->getName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"), 'Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies', 'first state change');
		$this->assertEquals($stateContext->getName( "Jay and Silent Bob Strike Back" ) , 'Jay*and*Silent*Bob*Strike*Back', 'second state change');
		$this->assertEquals($stateContext->getName( "Buffy The Vampire Slayer Season 2"), 'Buffy!The!Vampire!Slayer!Season!2', 'third state change');
		$this->assertEquals($stateContext->getName( "The Sopranos Season 2"), 'The*Sopranos*Season*2', 'fourth state change');
	}
}

