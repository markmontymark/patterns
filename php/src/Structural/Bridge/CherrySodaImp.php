<?

#//CherrySodaImp.java - one of three classes extending the Implementation Base Class

require_once 'SodaImp.php';

class CherrySodaImp extends SodaImp
{

	public $msg;

	function __construct ()
	{
		$this->msg = "Yummy Cherry Soda!" ;
	}
		 
	function pourSodaImp ()
	{
		return $this->msg;
	}

}
