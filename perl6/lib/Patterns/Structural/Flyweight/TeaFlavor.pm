package Patterns::Structural::Flyweight::TeaFlavor;

#//TeaFlavor - the Concrete Flyweight

use Moo;
extends 'Patterns::Structural::Flyweight::TeaOrder';

has teaFlavor => is => 'rw';
sub BUILDARGS
{
	my ($class, $flavor ) = @_;
	{
		teaFlavor => $flavor 
	}
}
   
sub serveTea
{
	my($self, $ctx ) = @_;
	"Serving tea flavor " . $self->teaFlavor . " to table number " . $ctx->tableNumber 
}

1;
