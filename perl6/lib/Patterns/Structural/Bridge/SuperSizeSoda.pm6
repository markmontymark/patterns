#  SuperSizeSoda - two of two classes extending the Abstract

use Patterns::Structural::Bridge::Soda;

class SuperSizeSoda does Soda {

	method new
	{
		my $self = self.bless( * );
		$self.setSodaImp();
		$self
	}

	method pourSoda
	{
		(1..5).map: { $.sodaImp.pourSodaImp() }
	}

}
