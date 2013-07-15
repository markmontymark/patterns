<?

require_once 'src/Creational/FactoryMethod/SoupFactoryMethod.php';
require_once 'src/Creational/FactoryMethod/BostonSoupFactoryMethodSubclass.php';
require_once 'src/Creational/FactoryMethod/HonoluluSoupFactoryMethodSubclass.php';

class Creational_FactoryMethodTest extends PHPUnit_Framework_TestCase
{
 
	function test()
	{

		$soupFactoryMethod = new SoupFactoryMethod();
		$soupBuffet = $soupFactoryMethod->makeSoupBuffet();
		$soupBuffet->soupBuffetName= $soupFactoryMethod->makeBuffetName();
		$soupBuffet->chickenSoup= $soupFactoryMethod->makeChickenSoup();
		$soupBuffet->clamChowder= $soupFactoryMethod->makeClamChowder(); 
		$soupBuffet->fishChowder= $soupFactoryMethod->makeFishChowder();
		$soupBuffet->minnestrone= $soupFactoryMethod->makeMinnestrone();
		$soupBuffet->pastaFazul= $soupFactoryMethod->makePastaFazul(); 
		$soupBuffet->tofuSoup= $soupFactoryMethod->makeTofuSoup();
		$soupBuffet->vegetableSoup= $soupFactoryMethod->makeVegetableSoup(); 
		$this->assertEquals("At the  " . $soupBuffet->soupBuffetName . $soupBuffet->getTodaysSoups(), 
			"At the  Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: ClanChowder Fish Chowder: FishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			'Testing plain soup buffet');


		$bostonSoupFactoryMethod = new BostonSoupFactoryMethodSubclass();
		$bostonSoupBuffet = $bostonSoupFactoryMethod->makeSoupBuffet();
		$bostonSoupBuffet->soupBuffetName= $bostonSoupFactoryMethod->makeBuffetName();
		$bostonSoupBuffet->chickenSoup= $bostonSoupFactoryMethod->makeChickenSoup();
		$bostonSoupBuffet->clamChowder= $bostonSoupFactoryMethod->makeClamChowder();
		$bostonSoupBuffet->fishChowder= $bostonSoupFactoryMethod->makeFishChowder();
		$bostonSoupBuffet->minnestrone= $bostonSoupFactoryMethod->makeMinnestrone();
		$bostonSoupBuffet->pastaFazul= $bostonSoupFactoryMethod->makePastaFazul();
		$bostonSoupBuffet->tofuSoup= $bostonSoupFactoryMethod->makeTofuSoup();
		$bostonSoupBuffet->vegetableSoup= $bostonSoupFactoryMethod->makeVegetableSoup(); 
		$this->assertEquals("At the  " . $bostonSoupBuffet->soupBuffetName . $bostonSoupBuffet->getTodaysSoups(), 
			"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			'Testing Boston soup buffet');

		$honoluluSoupFactoryMethod = new HonoluluSoupFactoryMethodSubclass();
		$honoluluSoupBuffet = $honoluluSoupFactoryMethod->makeSoupBuffet();
		$honoluluSoupBuffet->soupBuffetName= $honoluluSoupFactoryMethod->makeBuffetName();
		$honoluluSoupBuffet->chickenSoup= $honoluluSoupFactoryMethod->makeChickenSoup();
		$honoluluSoupBuffet->clamChowder= $honoluluSoupFactoryMethod->makeClamChowder(); 
		$honoluluSoupBuffet->fishChowder= $honoluluSoupFactoryMethod->makeFishChowder();
		$honoluluSoupBuffet->minnestrone= $honoluluSoupFactoryMethod->makeMinnestrone();
		$honoluluSoupBuffet->pastaFazul= $honoluluSoupFactoryMethod->makePastaFazul(); 
		$honoluluSoupBuffet->tofuSoup= $honoluluSoupFactoryMethod->makeTofuSoup();
		$honoluluSoupBuffet->vegetableSoup= $honoluluSoupFactoryMethod->makeVegetableSoup(); 
		$this->assertEquals("At the  " . $honoluluSoupBuffet->soupBuffetName . $honoluluSoupBuffet->getTodaysSoups(), 
			"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			'Testing Honolulu soup buffet');
	}

}
