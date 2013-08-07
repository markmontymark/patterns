use Patterns::Structural::Flyweight::;
class TeaFlavor; {

#//TeaFlavor - the Concrete Flyweight


extends 'Patterns::Structural::Flyweight::TeaOrder';

has teaFlavor => is => 'rw';
method new
{
	my ($class, $flavor ) = @_;
	{
		teaFlavor => $flavor 
	}
}
   
method serveTea
{
	my($self, $ctx ) = @_;
	"Serving tea flavor " . $self->teaFlavor . " to table number " . $ctx->tableNumber 
}

}