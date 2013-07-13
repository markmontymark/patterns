<?

#//DvdNameAllCapStrategy - one of three concrete strategies

require_once 'DvdNameStrategy.php';


class DvdNameAllCapStrategy implements DvdNameStrategy
{
	function formatDvdName($name,$char)
	{
		return strtoupper($name);
	}
}



