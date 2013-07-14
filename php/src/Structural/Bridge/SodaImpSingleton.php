<?

#//SodaImpSingleton.java - a Singleton to hold the current SodaImp

class SodaImpSingleton 
{

	static $sodaImp;

	function setTheSodaImp($si)
	{
		self::$sodaImp = $si;
	}
    
	function getTheSodaImp ()
	{
		return self::$sodaImp;
	}

}
