<?

require_once 'src/Structural/Bridge/SodaImpSingleton.php';
require_once 'src/Structural/Bridge/MediumSoda.php';
require_once 'src/Structural/Bridge/SuperSizeSoda.php';
require_once 'src/Structural/Bridge/CherrySodaImp.php';
require_once 'src/Structural/Bridge/OrangeSodaImp.php';
require_once 'src/Structural/Bridge/GrapeSodaImp.php';

class Structural_BridgeTest extends PHPUnit_Framework_TestCase
{

	function testCherryPlatform() {
		SodaImpSingleton::setTheSodaImp(new CherrySodaImp);
		$mediumSoda = new MediumSoda();
		$this->assertEquals($mediumSoda->pourSoda(), 'Yummy Cherry Soda! Yummy Cherry Soda!', 'Testing medium cherry');
		$superSizeSoda = new SuperSizeSoda();
		$this->assertEquals($superSizeSoda->pourSoda(), 'Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda!', 'Testing supersize cherry');
	}
		
	function testGrapePlatform() {
		SodaImpSingleton::setTheSodaImp(new GrapeSodaImp);
		$mediumSoda = new MediumSoda();
		$this->assertEquals($mediumSoda->pourSoda(), 'Yummy Grape Soda! Yummy Grape Soda!', 'Testing medium grape');
		$superSizeSoda = new SuperSizeSoda();
		$this->assertEquals($superSizeSoda->pourSoda(), 'Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda!', 'Testing supersize grape');
	}   

	function testOrangePlatform() {
		SodaImpSingleton::setTheSodaImp(new OrangeSodaImp());
		$mediumSoda = new MediumSoda();
		$this->assertEquals($mediumSoda->pourSoda(), 'Yummy Orange Soda! Yummy Orange Soda!', 'Testing medium orange');
		$superSizeSoda = new SuperSizeSoda();
		$this->assertEquals($superSizeSoda->pourSoda(), 'Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda!', 'Testing supersize orange');
	}
    
   public function test()
   {
		$this->testCherryPlatform();
		$this->testGrapePlatform();
		$this->testOrangePlatform();
	}
}
