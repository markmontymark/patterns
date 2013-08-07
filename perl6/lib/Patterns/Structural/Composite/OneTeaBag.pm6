#//OneTeaBag - one composite extension - the "leaf"

use Patterns::Structural::Composite::TeaBags;

class OneTeaBag does TeaBags {

	method countTeaBags { 1 } 
	method add { False }
	method remove{ False  }

}
