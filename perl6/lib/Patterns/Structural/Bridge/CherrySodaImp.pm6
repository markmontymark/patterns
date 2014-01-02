#//CherrySodaImp - one of three classes extending the Implementation Base Class

use Patterns::Structural::Bridge::SodaImp;

class CherrySodaImp does SodaImp {

	method new ( Str $msg = 'Yummy Cherry Soda!')
	{
		return self.bless( :$msg );
	}
    
}
