package Patterns::Structural::Facade::FacadeWater;


#//FacadeWater - two of three classes the facade calls
use Moo;
has isBoiling => is => 'rw';

sub BUILDARGS
{
	{ isBoiling => 0 }
}
    
sub boil
{
	my $self = shift;
	$self->isBoiling(1);
}

1;
