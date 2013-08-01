package Patterns::Creational::Prototype::SaladSpoon;


#//SaladSpoon.java - The Concrete Prototype extending the AbstractSpoon Prototype

use Moo;
extends 'Patterns::Creational::Prototype::AbstractSpoon';

sub BUILD
{
	my $self = shift;
	$self->spoonName('Salad Spoon');
}

1;

