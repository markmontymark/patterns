
use v6;

package Patterns::Behavioral::State;

class DvdStateContext {

	has $!dvdStateName => (is => 'rw');

	method new(Str $name) {
		my $o = self.bless(*,$name);
		$o.setDvdStateName( DvdStateNameStars.new() )
		return $o
	}

	method setDvdStateName(DvdStateName $dsn) {
		self.dvdStateName = $dsn;
	}
   
	method getName($name) {
		self.dvdStateName.getName($name);
	}
}

