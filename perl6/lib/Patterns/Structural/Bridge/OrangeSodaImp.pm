package Patterns::Structural::Bridge::OrangeSodaImp;


#//OrangeSodaImp.java - one of three classes extending the Implementation Base Class

use Moo;
extends 'Patterns::Structural::Bridge::SodaImp';
has msg => is => 'ro';
sub BUILDARGS 
{
	{ msg => "Yummy Orange Soda!" }
}
    
sub pourSodaImp {
	my $self = shift;
	$self->msg
}

1;
