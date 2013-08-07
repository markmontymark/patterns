use Patterns::Structural::Bridge::SodaImp;
use Patterns::Structural::Bridge::SodaImpSingleton;

role Soda {

	has SodaImp $.sodaImp is rw;

	method pourSoda { ... }

	method setSodaImp {
		$.sodaImp = SodaImpSingleton.getTheSodaImp();
	}

	method getSodaImp {
		$.sodaImp
	}

}
