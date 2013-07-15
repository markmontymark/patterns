<?

require_once 'src/Structural/Flyweight/TeaFlavor.php';
require_once 'src/Structural/Flyweight/TeaFlavorFactory.php';
require_once 'src/Structural/Flyweight/TeaOrder.php';
require_once 'src/Structural/Flyweight/TeaOrderContext.php';

class Structural_FlyweightTest extends PHPUnit_Framework_TestCase
{

	public $flavors = [];
	public $tables = [];
	public $ordersMade = 0;    
	public $teaFlavorFactory;

	function takeOrders($flavorIn,$table)
	{
		$this->flavors[$this->ordersMade]= $this->teaFlavorFactory->getTeaFlavor($flavorIn);
		$this->tables[$this->ordersMade++] = new TeaOrderContext($table);
	}

   public function test()
   {
			$this->teaFlavorFactory = new TeaFlavorFactory();
			$this->takeOrders("chai", 2);    
			$this->takeOrders("chai", 2);
			$this->takeOrders("camomile", 1);
			$this->takeOrders("camomile", 1);
			$this->takeOrders("earl grey", 1);
			$this->takeOrders("camomile", 897);
			$this->takeOrders("chai", 97);
			$this->takeOrders("chai", 97);
			$this->takeOrders("camomile", 3);
			$this->takeOrders("earl grey", 3);
			$this->takeOrders("chai", 3);
			$this->takeOrders("earl grey", 96);
			$this->takeOrders("camomile", 552);
			$this->takeOrders("chai", 121);
			$this->takeOrders("earl grey", 121);

			for ($i = 0; $i < $this->ordersMade; $i++)
			{
				$this->flavors[$i]->serveTea($this->tables[$i]);
			}  
			$this->assertEquals("total teaFlavor objects made: " . $this->teaFlavorFactory->teasMade, 'total teaFlavor objects made: 3','Test total tea flavors made');

	}
}

