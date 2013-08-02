package Patterns::Structural::Bridge::GrapeSodaImp;


#//GrapeSodaImp - one of three classes extending the Implementation Base Class

use Moo;
extends 'Patterns::Structural::Bridge::SodaImp';
has msg => is => 'ro';
sub BUILDARGS 
{
	{ msg => "Yummy Grape Soda!" }
}
    
sub pourSodaImp {
	my $self = shift;
	$self->msg
}

1;
