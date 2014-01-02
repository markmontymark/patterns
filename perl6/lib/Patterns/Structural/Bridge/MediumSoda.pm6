#//MediumSoda - one of two classes extending the Abstract

use Patterns::Structural::Bridge::Soda;

class MediumSoda does Soda {

	method new
	{
		self.bless( )
	}

	method pourSoda 
	{
		my $sodaImp = $.getSodaImp();
		( (1..2).map: { $sodaImp.pourSodaImp() }).join: ' '
	}

}
