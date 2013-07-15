<?



#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Singleton
#//Singleton Overview
#//A class distributes the only instance of itself.

class SingleSpoon
{


	public $soupLastUsedWith;
	public $isAvailable = 1;
	public $theSpoon;
	public $theSpoonIsAvailable;


   protected static $instance = null;


	public static function Instance()
	{
		if( self::$instance === null )
			self::$instance = new SingleSpoon();
		return self::$instance;
	}
		

	private function __construct()
	{
	}

	function useSpoon()
	{
		if($this->isAvailable)
		{
			$this->isAvailable = 0;
			return;
		}
	}

	function toString ()
	{
		return 'The spoon is' . 
			($this->isAvailable ? ' ' : ' not ') . 
			'available.  The spoon was ' . 
			($this->soupLastUsedWith ? ('last used with '.$this->soupLastUsedWith) :  'not used yet') . '.';
	}

	function returnSpoon()
	{
		$this->soupLastUsedWith = null;
		$this->isAvailable = 1;
	}   
}
