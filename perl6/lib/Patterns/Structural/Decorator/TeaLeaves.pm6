package Patterns::Structural::Decorator::TeaLeaves;

#//TeaLeaves - the decoratee
use Moo;
with 'Patterns::Structural::Decorator::Tea';
has teaIsSteeped => is => 'rw';

sub BUILDARGS
{
	{
		teaIsSteeped => 0,
	}
}

   
sub steepTea 
{
	my $self = shift;
	$self->teaIsSteeped(1);
}

1;
