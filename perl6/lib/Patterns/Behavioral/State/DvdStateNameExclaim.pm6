
use Patterns::Behavioral::State::DvdStateName;

class DvdStateNameExclaim is DvdStateName {

	method getName($name) {
		return $name.subst( rx/ ' ' /, '!', :g );
	}

}
