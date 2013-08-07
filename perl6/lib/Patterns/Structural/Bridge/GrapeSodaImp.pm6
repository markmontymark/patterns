#//GrapeSodaImp - one of three classes extending the Implementation Base Class

use Patterns::Structural::Bridge::SodaImp;

class GrapeSodaImp does SodaImp {

	method new ( Str $msg = 'Yummy Grape Soda!' )
	{
		return self.bless( * , :$msg );
	}
    
}
