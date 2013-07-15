<?

require_once 'src/Creational/Prototype/SoupSpoon.php';
require_once 'src/Creational/Prototype/SaladFork.php';
require_once 'src/Creational/Prototype/SaladSpoon.php';
require_once 'src/Creational/Prototype/PrototypeFactory.php';

class Creational_PrototypeTest extends PHPUnit_Framework_TestCase
{

	function test()
	{
		$prototypeFactory = new PrototypeFactory(
			new SoupSpoon(), 
			new SaladFork());
		$spoon = $prototypeFactory->makeSpoon();
		$fork = $prototypeFactory->makeFork();
		$this->assertEquals("Spoon: " . $spoon->spoonName . ", Fork: " . $fork->forkName ,'Spoon: Soup Spoon, Fork: Salad Fork', 'Testing with SoupSpoon and SaladFork');

		$prototypeFactory = new PrototypeFactory(
			new SaladSpoon(), 
			new SaladFork());
		$spoon = $prototypeFactory->makeSpoon();
		$fork = $prototypeFactory->makeFork();
		$this->assertEquals("Spoon: " . $spoon->spoonName . 
			", Fork: " . $fork->forkName,'Spoon: Salad Spoon, Fork: Salad Fork', 'Testing with SaladSpoon and SaladFork');
	}
}
