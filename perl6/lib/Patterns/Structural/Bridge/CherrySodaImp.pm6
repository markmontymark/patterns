#//CherrySodaImp - one of three classes extending the Implementation Base Class

use Patterns::Structural::Bridge::SodaImp;

class CherrySodaImp does SodaImp {

	method new 
	{
		return self.bless( * , :msg( 'Yummy Cherry Soda!' ) );
	}
    
}
