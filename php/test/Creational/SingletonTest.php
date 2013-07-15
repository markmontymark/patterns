<?

require_once 'src/Creational/Singleton/SingleSpoon.php';

class Creational_SingletonTest extends PHPUnit_Framework_TestCase
{
	function test()
	{
		$spoonForFirstPerson = SingleSpoon::Instance();
		$spoonForFirstPerson->useSpoon();
		$this->assertEquals( $spoonForFirstPerson ? $spoonForFirstPerson->toString() : "No spoon was available", 'The spoon is not available.  The spoon was not used yet.','Test first spoon use');
		$spoonForSecondPerson = SingleSpoon::Instance();
		$this->assertEquals( $spoonForFirstPerson, $spoonForSecondPerson, 'Object toString expected to be equal');
		$spoonForSecondPerson->useSpoon();
		$this->assertEquals( $spoonForSecondPerson ? $spoonForSecondPerson->toString() : "No spoon was available", 'The spoon is not available.  The spoon was not used yet.','Test second spoon use');
		$spoonForFirstPerson->returnSpoon();
		$spoonForSecondPerson->useSpoon();
		$this->assertEquals( $spoonForSecondPerson ? $spoonForSecondPerson->toString() : "No spoon was available", 'The spoon is not available.  The spoon was not used yet.','Test second spoon use after return');
	}
}

