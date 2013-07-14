<?

require_once 'SodaImpSingleton.php';

abstract class Soda 
{

	abstract function pourSoda();

	public $sodaImp;

	function setSodaImp() 
	{
		$this->sodaImp( SodaImpSingleton::getTheSodaImp() );
	}

	function getSodaImp()
	{
		return $this->sodaImp;
	}

}
