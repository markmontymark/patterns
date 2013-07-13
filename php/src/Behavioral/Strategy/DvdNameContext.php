<?


#//DvdNameContext - the context

require_once 'DvdNameAllCapStrategy.php';
require_once 'DvdNameTheAtEndStrategy.php';
require_once 'DvdNameReplaceSpacesStrategy.php';
require_once 'DvdNameTheAtEndStrategy.php';

class DvdNameContext
{
	public $dvdNameStrategy;
  
	function __construct($type)
	{
		switch( $type )
		{
			case 'C':
				$this->dvdNameStrategy = new DvdNameAllCapStrategy();
				break;
			case 'E':
				$this->dvdNameStrategy = new DvdNameTheAtEndStrategy();
				break;
			case 'S':
				$this->dvdNameStrategy = new DvdNameReplaceSpacesStrategy();
				break;
			default:
				$this->dvdNameStrategy = new DvdNameTheAtEndStrategy();
				break;
		}
	} 

	function formatDvdNames($names,$char=' ')
	{

		$retval = array();
		foreach( $names as $name )
			$retval[] = $this->dvdNameStrategy->formatDvdName($name, $char);
		return $retval;
	}
}


