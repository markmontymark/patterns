package Patterns::Creational::Abstract_Factory::BostonConcreteSoupFactory; ##Concrete?  gross



#//BostonConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory
use Moo;
extends 'Patterns::Creational::Abstract_Factory::AbstractSoupFactory';

sub BUILDARGS
{
	{
		factoryLocation =>"Boston"
	}
}

sub makeClamChowder {
	new Patterns::Creational::Abstract_Factory::BostonClamChowder
}
sub makeFishChowder {
	new Patterns::Creational::Abstract_Factory::BostonFishChowder
}

1;

