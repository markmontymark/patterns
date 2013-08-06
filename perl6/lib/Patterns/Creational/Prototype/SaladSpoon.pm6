#//SaladSpoon - The Concrete Prototype extending the AbstractSpoon Prototype

use Patterns::Creational::Prototype::AbstractSpoon;

class SaladSpoon is AbstractSpoon {

	method new
	{
		return self.bless( * , :spoonName('Salad Spoon'));
	}
}

