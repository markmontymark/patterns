<?

require_once 'src/Behavioral/Template_Method/BookTitleInfo.php';
require_once 'src/Behavioral/Template_Method/GameTitleInfo.php';
require_once 'src/Behavioral/Template_Method/DvdTitleInfo.php';

class Behavioral_TemplateMethodTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$bladeRunner = 	new DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
		$electricSheep = 	new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
		$sheepRaider = 	new GameTitleInfo("Sheep Raider");

		$this->assertEquals( $bladeRunner->ProcessTitleInfo(), 'DVD: Blade Runner, starring Harrison Ford ', "Testing bladeRunner   ");
		$this->assertEquals( $electricSheep->ProcessTitleInfo(),	'Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ', "Testing electricSheep ");
		$this->assertEquals( $sheepRaider->ProcessTitleInfo() ,	'Game: Sheep Raider ', "Testing sheepRaider   " );
	}
}
