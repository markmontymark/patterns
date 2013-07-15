<?

require_once 'src/Structural/Proxy/PotOfTeaProxy.php';

class Structural_ProxyTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$potOfTea = new PotOfTeaProxy();
		$this->assertEquals( $potOfTea->pourTea() , 'Pouring tea', 'Test pouring from a pot of tea');
	}
}
