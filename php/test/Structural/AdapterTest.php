<?

require_once 'src/Structural/Adapter/TeaCup.php';
require_once 'src/Structural/Adapter/TeaBag.php';
require_once 'src/Structural/Adapter/TeaBall.php';
require_once 'src/Structural/Adapter/LooseLeafTea.php';

class Structural_AdapterTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$teaCup = new TeaCup();
		$teaBag = new TeaBag();       
		$teaCup->steepTeaBag($teaBag);
		$this->assertEquals($teaBag->teaBagIsSteeped, 1, 'Test that tea bag cup steeped tea');

		$looseLeafTea = new LooseLeafTea();
		$teaBall = new TeaBall($looseLeafTea);
		$teaCup->steepTeaBag($teaBall);
		$this->assertEquals($teaBall->teaBagIsSteeped, 1, 'Test that tea ball steeped teabag');

	}
}
