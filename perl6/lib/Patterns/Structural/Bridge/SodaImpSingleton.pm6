use Patterns::Structural::Bridge::;
class SodaImpSingleton; {


#//SodaImpSingleton - a Singleton to hold the current SodaImp

our $sodaImp;

method setTheSodaImp
{
	$sodaImp = shift;
}
    
method getTheSodaImp 
{
	$sodaImp
}

}