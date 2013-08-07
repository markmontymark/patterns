#  SuperSizeSoda - two of two classes extending the Abstract

use Patterns::Structural::Bridge::Soda;

class SuperSizeSoda does Soda {

	method new 
	{
		return self.bless( *  );
	}

	method pourSoda
	{
      my $sodaImp = $.getSodaImp();
		( (1..5).map: { $sodaImp.pourSodaImp() }).join: ' '
	}

}
