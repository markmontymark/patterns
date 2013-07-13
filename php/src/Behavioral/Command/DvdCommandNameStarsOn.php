<?

# //DvdCommandNameStarsOn - one of two Concrete Commands

require_once 'CommandAbstract.php';
require_once 'DvdName.php';

class DvdCommandNameStarsOn extends CommandAbstract
{
	private $dvdName = NULL;

	function __construct(DvdName $dvdName)
	{
		$this->dvdName = $dvdName;
	}

	function execute()
	{
		$this->dvdName->setNameStarsOn();
	}
}
