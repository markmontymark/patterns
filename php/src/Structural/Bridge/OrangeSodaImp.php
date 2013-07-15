<?

#//OrangeSodaImp.java - one of three classes extending the Implementation Base Class

require_once 'SodaImp.php';

class OrangeSodaImp extends SodaImp
{

	public $msg;

	function __construct ()
	{
		$this->msg = "Yummy Orange Soda!" ;
	}
		 
	function pourSodaImp ()
	{
		return $this->msg;
	}

}
