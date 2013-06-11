package Patterns::Creational::Prototype::SoupSpoon;


#//SoupSpoon.java - The Concrete Prototype extending the AbstractSpoon Prototype

use Moo;
extends 'Patterns::Creational::Prototype::AbstractSpoon';

sub BUILD
{
	my $self = shift;
	$self->spoonName('Soup Spoon');
}

1;

