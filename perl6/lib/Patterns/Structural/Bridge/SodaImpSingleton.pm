package Patterns::Structural::Bridge::SodaImpSingleton;


#//SodaImpSingleton.java - a Singleton to hold the current SodaImp

our $sodaImp;

sub setTheSodaImp
{
	$sodaImp = shift;
}
    
sub getTheSodaImp 
{
	$sodaImp
}

1;
