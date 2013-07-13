<?

#//DvdRelease - a helper class

class DvdRelease
{
	public $serialNumber;
	public $name;
	public $releaseYear;
	public $releaseMonth;
	public $releaseDay;

	function __construct($serialNumber, $name, $releaseYear, $releaseMonth, $releaseDay )
	{
		$this->serialNumber = $serialNumber;
		$this->releaseYear = $releaseYear;
		$this->releaseMonth = $releaseMonth;
		$this->releaseDay = $releaseDay;
		$this->name = $name;
	}

	function updateRelease($release)
	{
		$this->serialNumber = $release->serialNumber;
		$this->name = $release->name;
		$this->releaseYear = $release->releaseYear;
		$this->releaseMonth = $release->releaseMonth;
		$this->releaseDay = $release->releaseDay;
	}
	 
	function updateDvdReleaseDate($releaseYear, $releaseMonth, $releaseDay)
	{
		$this->releaseYear = $releaseYear;
		$this->releaseMonth = $releaseMonth;
		$this->releaseDay = $releaseDay;
	}

}
