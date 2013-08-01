package Patterns::Structural::Flyweight::TeaOrderContext;


#//TeaOrderContext.java - the Context
use Moo;
has tableNumber => is => 'rw';

sub BUILDARGS
{
	my ($class,$tableNumber ) = @_;
	{ tableNumber => $tableNumber }
}

1;
