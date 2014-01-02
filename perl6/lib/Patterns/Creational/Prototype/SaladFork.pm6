
#//SaladFork - A Concrete Prototype extending the AbstractFork Prototype

use Patterns::Creational::Prototype::AbstractFork;

class SaladFork is AbstractFork {

	method new
	{
		return self.bless( :forkName('Salad Fork'));
	}
}

