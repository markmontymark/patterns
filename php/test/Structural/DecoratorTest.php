<?

require_once 'src/Structural/Decorator/TeaLeaves.php';
require_once 'src/Structural/Decorator/ChaiDecorator.php';

class Structural_DecoratorTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$teaLeaves = new TeaLeaves();
		$this->assertNotNull($teaLeaves,'Make a teaLeaves obj');

		$chaiDecorator = new ChaiDecorator($teaLeaves);
		$this->assertNotNull($chaiDecorator,'Make a chaiDecorator obj');

		$chaiDecorator->steepTea();
		$this->assertEquals($chaiDecorator->teaToMakeChai->teaIsSteeped, 1 ,'Tea is steeped');
	}
}
