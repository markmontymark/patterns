<?

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Memento
#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

require_once 'DvdMemento.php';

class DvdDetails
{

	static $DELIM = "asdf$#@!ASDF@$#ASDFadsf";

	// the key to iterating and storing state is that foreach works on public only
	public $titleName;
	public $stars;
	public $region;

	private $memento;

	function __construct($titleName,$stars,$region)
	{
		$this->titleName = $titleName;
		$this->stars = $stars;
		$this->region = $region;
	}

	function addStar($s)
	{
		$this->stars[]= $s;
	}

	function starsAsString()
	{
		return implode(', ',$this->stars);
	}  
   
	function formatDvdDetails()
	{
		return "DVD: " . $this->titleName . 
			", starring: " . $this->starsAsString() . 
			", encoding region: " . $this->region ;
	}   
		
	#   //sets current state to what DvdMemento has
	function setDvdMemento($memento)
	{
		foreach($memento->cache as $k => $v)
		{
			if( is_array($v) )
				$this->$k = explode(self::$DELIM, implode(self::$DELIM,$v));
			else
				$this->$k = $v;
		}
	}

	#//save current state of DvdDetails in a DvdMemento
	function createDvdMemento()
	{
		$mementoToReturn = new DvdMemento();
		$mementoToReturn->setState($this);
		return $mementoToReturn;
	}
}

