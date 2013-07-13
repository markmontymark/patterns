<?

require_once 'DvdStateNameStars.php';

class DvdStateContext
{
	public $dvdStateName;

	function __construct()
	{
		$this->dvdStateName = new DvdStateNameStars();
	}

	function setDvdStateName($dvdStateName)
	{
		$this->dvdStateName = $dvdStateName;
	}
		
	function getName($name)
	{
		return $this->dvdStateName->getName($this, $name);
	}
}

