#//AbstractSpoon - One of Two Prototypes

use Patterns::Creational::Prototype::Cloneable;

class AbstractSpoon does Cloneable {

	has Str $.spoonName is rw;

	method new { ... }

}
