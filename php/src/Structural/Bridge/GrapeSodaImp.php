<?

#//GrapeSodaImp.java - one of three classes extending the Implementation Base Class

require_once 'SodaImp.php';

class GrapeSodaImp extends SodaImp
{

	public $msg;

	function __construct ()
	{
		$this->msg = "Yummy Grape Soda!" ;
	}
		 
	function pourSodaImp 
	{
		return $this->msg;
	}

}
