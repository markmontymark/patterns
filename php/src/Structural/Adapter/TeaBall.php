<?

#//TeaBall.java - the adapter

require_once 'TeaBag.php';


class TeaBall extends TeaBag
{

	public $looseLeafTea;

	function __construct($looseLeafTea)
	{
		$this->looseLeafTea = $looseLeafTea;
		$this->teaBagIsSteeped = $looseLeafTea->teaIsSteeped;
	}
		
	function steepTeaInCup ()
	{
		$this->looseLeafTea->steepTea();
		$this->teaBagIsSteeped=1;
	}

}
