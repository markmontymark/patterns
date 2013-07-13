<?

# //DvdCommandNameStarsOff - two of two Concrete Commands

class DvdCommandNameStarsOff extends CommandAbstract
{
	private $dvdName = NULL;

	function __construct(DvdName $dvdName)
	{
		$this->dvdName = $dvdName;
	}

	function execute()
	{
		$this->dvdName->setNameStarsOff();
	}
}
