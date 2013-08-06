#//AbstractFork - Two of Two Prototypes

use Patterns::Creational::Prototype::Cloneable;

class AbstractFork does Cloneable {

	has Str $.forkName is rw;
	method new { ... }

}
