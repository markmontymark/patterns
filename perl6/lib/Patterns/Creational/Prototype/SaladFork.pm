package Patterns::Creational::Prototype::SaladFork;


#//SaladFork.java - The Concrete Prototype extending the AbstractFork Prototype

use Moo;
extends 'Patterns::Creational::Prototype::AbstractFork';

sub BUILD
{
	my $self = shift;
	$self->forkName('Salad Fork');
}

1;

