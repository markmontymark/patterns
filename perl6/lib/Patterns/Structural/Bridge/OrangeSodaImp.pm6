use Patterns::Structural::Bridge::;
class OrangeSodaImp; {


#//OrangeSodaImp - one of three classes extending the Implementation Base Class


extends 'Patterns::Structural::Bridge::SodaImp';
has msg => is => 'ro';
method new 
{
	{ msg => "Yummy Orange Soda!" }
}
    
method pourSodaImp {
	my $self = shift;
	$self->msg
}

}