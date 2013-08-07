use Patterns::Structural::Flyweight::;
class TeaOrderContext; {


#//TeaOrderContext - the Context

has tableNumber => is => 'rw';

method new
{
	my ($class,$tableNumber ) = @_;
	{ tableNumber => $tableNumber }
}

}