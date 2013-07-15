<?

require_once 'src/Creational/Builder/BostonSoupBuffetBuilder.php';
require_once 'src/Creational/Builder/HonoluluSoupBuffetBuilder.php';

class Creational_BuilderTest extends PHPUnit_Framework_TestCase
{
	function createSoupBuffet($builder)
	{
        $builder->buildSoupBuffet();
        $builder->setSoupBuffetName();
        $builder->buildChickenSoup();
        $builder->buildClamChowder();
        $builder->buildFishChowder();    
        $builder->buildMinnestrone();
        $builder->buildPastaFazul();
        $builder->buildTofuSoup();
        $builder->buildVegetableSoup();
        return $builder->getSoupBuffet();
	}     
    

	function test()       
	{
		$bostonSoupBuffet = $this->createSoupBuffet(new BostonSoupBuffetBuilder());
		$this->assertEquals("At the " . $bostonSoupBuffet->soupBuffetName . $bostonSoupBuffet->getTodaysSoups(),
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			'Testing Boston soup buffet');

		$honoluluSoupBuffet = $this->createSoupBuffet(new HonoluluSoupBuffetBuilder());
		$this->assertEquals("At the " .  $honoluluSoupBuffet->soupBuffetName .  $honoluluSoupBuffet->getTodaysSoups(),
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			'Testing Honolulu soup buffet');

	}

}
