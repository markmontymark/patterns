<?

require_once 'src/Creational/AbstractFactory/BostonConcreteSoupFactory.php';
require_once 'src/Creational/AbstractFactory/HonoluluConcreteSoupFactory.php';

class Creational_AbstractFactoryTest extends PHPUnit_Framework_TestCase
{

	function MakeSoupOfTheDay($concreteSoupFactory)
	{
		$soups = [ $concreteSoupFactory->makeChickenSoup(),
           $concreteSoupFactory->makeClamChowder(),
           $concreteSoupFactory->makeFishChowder(),
           $concreteSoupFactory->makeMinnestrone(),
           $concreteSoupFactory->makePastaFazul(),
           $concreteSoupFactory->makeTofuSoup(),
           $concreteSoupFactory->makeVegetableSoup(),
           $concreteSoupFactory->makeVegetableSoup(),
       ];
		return $soups[3];
	}        

   public function test()
   {
		$concreteSoupFactory = new BostonConcreteSoupFactory();
		$soupOfTheDay = $this->MakeSoupOfTheDay($concreteSoupFactory);
		$this->assertEquals("The Soup of the day " .  $concreteSoupFactory->factoryLocation .  " is " .  $soupOfTheDay->soupName,
			"The Soup of the day Boston is Minnestrone",
			'Testing boston soup of the day');

		$concreteSoupFactory = new HonoluluConcreteSoupFactory();
		$soupOfTheDay = $this->MakeSoupOfTheDay($concreteSoupFactory);
		$this->assertEquals("The Soup of the day " .  $concreteSoupFactory->factoryLocation .  " is " .  $soupOfTheDay->soupName,
			"The Soup of the day Honolulu is Minnestrone",
			'Testing boston soup of the day');
	}
}
