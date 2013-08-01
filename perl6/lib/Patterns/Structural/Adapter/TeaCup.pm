package Patterns::Structural::Adapter::TeaCup;


#//TeaCup.java - the class that accepts class TeaBag in it's steepTeaBag() method, and so is being adapted for.
use Moo;

sub steepTeaBag
{
	my($self,$teaBag)  = @_;
	$teaBag->steepTeaInCup();
}

1;
