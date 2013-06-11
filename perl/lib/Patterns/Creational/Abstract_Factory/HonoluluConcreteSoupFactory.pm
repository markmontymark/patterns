package Patterns::Creational::Abstract_Factory::HonoluluConcreteSoupFactory; ##Concrete?  gross

#//HonoluluConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory
use Moo;
extends 'Patterns::Creational::Abstract_Factory::AbstractSoupFactory';

sub BUILDARGS
{
	{
		factoryLocation =>"Honolulu"
	}
}

sub makeClamChowder {
	new Patterns::Creational::Abstract_Factory::HonoluluClamChowder
}
sub makeFishChowder {
	new Patterns::Creational::Abstract_Factory::HonoluluFishChowder
}

1;

