<?


#//MediumSoda.java - one of two classes extending the Abstract

require_once 'Soda.php';

class MediumSoda extends Soda
{

	function __construct()
	{
		$this->setSodaImp();
	}

	function pourSoda ()
	{
		$sodaImp = $this->getSodaImp();
		$retval;
		for($i=0; $i < 2; $i++)
			$retval[]= $sodaImp->pourSodaImp();
		return implode(' ',$retval);
	}
}
