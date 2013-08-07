#//SodaImpSingleton - a Singleton to hold the current SodaImp

use Patterns::Structural::Bridge::SodaImp;

class SodaImpSingleton {

	our $sodaImp;

	submethod setTheSodaImp( SodaImp $si )
	{
		$sodaImp = $si;
	}
    
	submethod getTheSodaImp 
	{
		$sodaImp
	}

}
