#//TeaLeaves - the decoratee

use Patterns::Structural::Decorator::Tea;

class TeaLeaves does Tea {

	has Bool $.teaIsSteeped is rw = False;

	method steepTea 
	{
		$.teaIsSteeped = True
	}

}
