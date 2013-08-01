package Patterns::Creational::Abstract_Factory::Soup;


#//Soup.java - A helper class

use Moo;
has soupName => (is => 'ro');
has soupIngredients => (is => 'ro');

sub toString
{
	my $self = shift;
	join ' ',($self->soupName,'Ingredients: ',@{$self->soupIngredients})
}        

1;
