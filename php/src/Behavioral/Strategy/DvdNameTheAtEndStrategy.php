<?
#//DvdNameTheAtEndStrategy - two of three concrete strategies

require_once 'DvdNameStrategy.php';

class DvdNameTheAtEndStrategy
{

	function formatDvdName($name,$char)
	{
		if(strpos($name,'The') === 0)
			return substr($name,4) . ', The' ;

		else if(strpos( $name , 'THE ') === 0 )
			return substr($ndName,4) . ', THE' ;

		else if(strpos( $name , 'the ') === 0 )
			return substr($name,4) . ', the' ;

		return $name;
	}
}



