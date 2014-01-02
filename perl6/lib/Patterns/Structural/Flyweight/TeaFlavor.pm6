#//TeaFlavor - the Concrete Flyweight

use Patterns::Structural::Flyweight::TeaOrder;
use Patterns::Structural::Flyweight::TeaOrderContext;

class TeaFlavor is TeaOrder {

	has Str $.teaFlavor is rw;

	method new( Str $teaFlavor )
	{
		return self.bless( :$teaFlavor );
	}
		
	method serveTea (TeaOrderContext $ctx )
	{
		"Serving tea flavor " ~ $.teaFlavor ~ " to table number " ~ $ctx.tableNumber 
	}

}
