package Patterns::Structural::Bridge::CherrySodaImp;


#//CherrySodaImp - one of three classes extending the Implementation Base Class

use Moo;
extends 'Patterns::Structural::Bridge::SodaImp';
has msg => is => 'ro';
sub BUILDARGS 
{
	{ msg => "Yummy Cherry Soda!" }
}
    
sub pourSodaImp {
	my $self = shift;
	$self->msg
}

1;
