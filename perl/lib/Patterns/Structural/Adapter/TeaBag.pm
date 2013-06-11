package Patterns::Structural::Adapter::TeaBag;

use Moo;
has teaBagIsSteeped => is => 'rw', default => sub{0};
    
sub steepTeaInCup
{
	my $self = shift;
	$self->teaBagIsSteeped(1);
}

1;
