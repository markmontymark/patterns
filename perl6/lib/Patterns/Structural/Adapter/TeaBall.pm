package Patterns::Structural::Adapter::TeaBall;


#//TeaBall.java - the adapter

use Moo;
extends 'Patterns::Structural::Adapter::TeaBag';

has looseLeafTea => is => 'rw';

sub BUILDARGS
{
	my($class,$looseLeafTea) = @_;
	{
		looseLeafTea => $looseLeafTea,
		teaBagIsSteeped => $looseLeafTea->teaIsSteeped
	}
}
   
sub steepTeaInCup 
{
	my $self = shift;
	$self->looseLeafTea->steepTea();
	$self->teaBagIsSteeped(1);
}

1;
