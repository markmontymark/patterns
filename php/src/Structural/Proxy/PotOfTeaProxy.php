<?

#//PotOfTeaProxy.java - the Proxy

require_once 'PotOfTeaInterface.php';
require_once 'PotOfTea.php';


class PotOfTeaProxy implements PotOfTeaInterface
{

	public $potOfTea;

	function pourTea()
	{
		if( ! isset($this->potOfTea))
			$this->potOfTea = new PotOfTea();
		return $this->potOfTea->pourTea();
	}

}
