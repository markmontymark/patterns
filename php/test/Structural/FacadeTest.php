<?

require_once 'src/Structural/Facade/FacadeCuppaMaker.php';

class Structural_FacadeTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$cuppaMaker = new FacadeCuppaMaker();
		$teaCup = $cuppaMaker->makeACuppa();
		$this->assertEquals($teaCup->toString() ,'A nice cuppa tea!', 'Test tea cup facade');
	}
}
