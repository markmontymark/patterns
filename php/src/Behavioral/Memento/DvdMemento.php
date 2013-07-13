<?

class DvdMemento
{
	public $cache;
	function __construct()
	{
		$this->cache = array();
	}

	function setState($obj)
	{
		foreach( $obj as $k => $v)
			if( is_array($v) )
				$this->cache[$k] = explode(DvdDetails::$DELIM,implode(DvdDetails::$DELIM,$v));
			else
				$this->cache[$k] = $v;
	}

	function getState()
	{
		return $this->cache;
	}
}

