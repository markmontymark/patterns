<?

# //DvdName- the Receiver

class DvdName
{
	private $titleName = NULL;


	function __construct($titleName)
	{
		$this->titleName = $titleName;
	}

	function setNameStarsOn ()
	{
		$this->titleName = str_replace( ' ','*', $this->titleName );
	}

	function setNameStarsOff()
	{
		$this->titleName = str_replace( '*',' ', $this->titleName );
	}

	function toString()
	{
		return 'DVD: ' . $this->titleName;
	}

}

