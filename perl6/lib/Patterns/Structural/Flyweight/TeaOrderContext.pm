package Patterns::Structural::Flyweight::TeaOrderContext;


#//TeaOrderContext - the Context
use Moo;
has tableNumber => is => 'rw';

sub BUILDARGS
{
	my ($class,$tableNumber ) = @_;
	{ tableNumber => $tableNumber }
}

1;
