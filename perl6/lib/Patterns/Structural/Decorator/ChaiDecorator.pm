package Patterns::Structural::Decorator::ChaiDecorator;

#//ChaiDecorator.java - the decorator

use Moo;
with 'Patterns::Structural::Decorator::Tea';

has teaToMakeChai => (is => 'rw');
has ingredients => (is => 'rw');

sub BUILDARGS
{
	my($class,$teaToMakeChai) = @_;
	{ 
		teaToMakeChai => $teaToMakeChai, 
		ingredients => [
			"bay leaf",
			"cinnamon stick",
			"ginger",
			"honey",
			"soy milk",
			"vanilla bean",
		]
	}
}

sub steepTea 
{
	my $self = shift;
	$self->steepChai;
}

sub steepChai
{
	my $self = shift;
	$self->teaToMakeChai->steepTea();
   $self->steepChaiIngredients();
}    
   
sub steepChaiIngredients
{
	my $self = shift;
	join '',@{$self->ingredients}
}

1;
