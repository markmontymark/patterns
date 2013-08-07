use Patterns::Structural::Bridge::;
class CherrySodaImp; {


#//CherrySodaImp - one of three classes extending the Implementation Base Class


extends 'Patterns::Structural::Bridge::SodaImp';
has msg => is => 'ro';
method new 
{
	{ msg => "Yummy Cherry Soda!" }
}
    
method pourSodaImp {
	my $self = shift;
	$self->msg
}

}