
#//SoupSpoon - A Concrete Prototype extending the AbstractSpoon Prototype

use Patterns::Creational::Prototype::AbstractSpoon;

class SoupSpoon is AbstractSpoon {

	method new
	{
		return self.bless( * , :spoonName('Soup Spoon'));
	}
}

