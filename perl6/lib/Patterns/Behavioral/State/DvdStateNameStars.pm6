#//DvdStateNameStars  two of two Concrete States

use Patterns::Behavioral::State::DvdStateName;

class DvdStateNameStars is DvdStateName {

	method getName( Str $name) {
		return $name.subst( rx/ ' ' /, '*', :g )
	}

}


