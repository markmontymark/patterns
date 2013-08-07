#//OrangeSodaImp - one of three classes extending the Implementation Base Class

use Patterns::Structural::Bridge::SodaImp;

class OrangeSodaImp does SodaImp {

	method new 
	{
		return self.bless( * , :msg('Yummy Orange Soda!') );
	}
    
}
