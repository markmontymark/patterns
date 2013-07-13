<?

#//DvdNameReplaceSpacesStrategy - three of three concrete strategies

require_once 'DvdNameStrategy.php';


class DvdNameReplaceSpacesStrategy implements DvdNameStrategy
{
	function formatDvdName($name,$char)
	{
		return str_replace(' ',$char,$name);
	}
}



